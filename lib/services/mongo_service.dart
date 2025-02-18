import 'dart:io';

import 'package:mongo5b25/models/phone_model.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;

class MongoService {
  // Servicio para conectar con MongoDB Atlas
  // Usando Singleton
  static final MongoService _instance = MongoService._internal();

  late mongo.Db _db;

  MongoService._internal();

  factory MongoService() {
    return _instance;
  }

  Future<void> connect() async {
    try {
      _db = await mongo.Db.create(
          'mongodb+srv://gnieva:wdDnN11T9nUgOyaF@cluster0.1hqs0.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0');
      await _db.open();
      print('Conexión a MongoDB establecida.');
    } on SocketException catch (e) {
      print('Error de conexión: $e');
    rethrow; // Vuelve a lanzar la excepción después de imprimir el mensaje
  }
  }

  mongo.Db get db {
    if (!db.isConnected) {
      throw StateError(
          'Base de datos no inicializa, llama a connect() primero');
    }
    return _db;
  }

  Future<List<PhoneModel>> getPhones() async {
    _db.databaseName = 'productos';
    final collection = _db.collection('celulares');
    print('Colección obtenida: $collection');
    var phones = await collection.find().toList();
    print('En MongoService: $phones');
    if (phones.isEmpty) {
      print('No se encontraron datos en la colección.');
    }
    return phones.map((phone) => PhoneModel.fromJson(phone)).toList();
  }

  Future<void> insertPhone(PhoneModel phone) async {
    _db.databaseName = 'productos';
    final collection = _db.collection('celulares');
    await collection.insertOne(phone.toJson());
  }

  Future<void> updatePhone(PhoneModel phone) async {
    _db.databaseName = 'productos';
    final collection = _db.collection('celulares');
    await collection.updateOne(
      mongo.where.eq('_id', phone.id),
      mongo.modify.set('marca', phone.marca).set('modelo', phone.modelo).set('existencia', phone.existencia).set('precio', phone.precio)
    );
  }
}
        