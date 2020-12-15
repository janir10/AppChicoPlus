import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
//import 'package:dio/dio.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:teste/data/model/task_resourse.dart';
void main() {
  test(' Dio get all visit whith sucess', () {
    // setup
    // act 
     try {
    //Response response = await Dio().get("http://www.google.com");
    //print(response);
    } catch (e) {
      print(e);
    }

    // assert
  });
  test(' http client get all visit whith sucess', () async {
    // setup 

    // act 
    var client = HttpClient();

   Future<HttpClientRequest> request = client.get('5faaf775dbbef70016d47f6f.mockapi.io', null, 'api/v1/tasks/10');
    var r = await request;

    var response  = await r.close();

    print("response: ${response.statusCode}");

    // assert
  });
  test('get all visit whith sucess', () async {
    // setup 
    // act 
    // tipo de metudo read
    //var response = await http.read('https://5faaf775dbbef70016d47f6f.mockapi.io/api/v1/tasks') ;

    // tipo de metudo get
    var response = await http.get('https://5faaf775dbbef70016d47f6f.mockapi.io/api/v1/tasks/10') ;
    //response.then((value) =>
      //  print("response: $response")
    // );

    print("response: ${response.body}");
    print("status code: ${response.statusCode}");
    // sleep(Duration(minutes:5))
    expect(response.statusCode, 200);
    // assert
  });

   test('visit serialize test ', () async {
    // setup  criar tudo contexto
    var taskResourse = TaskResourse(
      id: '1', 
      createat: "do day", 
      description: "teste", 
      title:  "teste 1"
    ); // instance classe TaskResourse
    
    // act  acção 
    var json = taskResourse.toJason();
    print("json : ${jsonEncode(json)}");

    // assert Resultado 
    expect(json['id'], taskResourse.id);
  });

  test('visit deserialize test ', () async {
    // setup 
    var json = '{"id":"1","createat":"do day","description":"teste","title":"teste 1"}';

    // act 
    var jsonMap = jsonDecode(json);
    var taskresourse = TaskResourse.fromJason(jsonMap);

    // assert
    expect(taskresourse.id, jsonMap['id']);
  });
}