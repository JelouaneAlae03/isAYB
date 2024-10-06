// // // import 'dart:async';
// // // import 'dart:convert';
// // // import 'package:http/http.dart' as http;

// // // class ApiService {
// // //   static const String baseUrl = 'http://localhost:3000/api';
// // //   static const Duration timeoutDuration = Duration(hours: 2); // 2 hours

// // //   static Future<Map<String, dynamic>> login(String email, String password) async {
// // //     try {
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/login'),
// // //         headers: {'Content-Type': 'application/json'},
// // //         body: jsonEncode({
// // //           'Email': email,
// // //           'Password': password,
// // //         }),
// // //       ).timeout(timeoutDuration);

// // //       if (response.statusCode == 200) {
// // //         return jsonDecode(response.body);
// // //       } else {
// // //         return {'error': 'Failed to login: ${response.reasonPhrase}'};
// // //       }
// // //     } on TimeoutException catch (e) {
// // //       return {'error': 'Request timed out: $e'};
// // //     } catch (e) {
// // //       return {'error': 'An unknown error occurred: $e'};
// // //     }
// // //   }

// // //   static Future<Map<String, dynamic>> fetchStatistics(String token) async {
// // //     try {
// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/fetchStatistics'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       ).timeout(timeoutDuration);

// // //       if (response.statusCode == 200) {
// // //         return jsonDecode(response.body);
// // //       } else {
// // //         return {'error': 'Failed to fetch statistics: ${response.reasonPhrase}'};
// // //       }
// // //     } on TimeoutException catch (e) {
// // //       return {'error': 'Request timed out: $e'};
// // //     } catch (e) {
// // //       return {'error': 'An unknown error occurred: $e'};
// // //     }
// // //   }
// // import 'dart:async';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:shared_preferences/shared_preferences.dart';
// // class ApiService {
// //   static const String baseUrl = 'http://localhost:3000/api';
// //   static const Duration timeoutDuration = Duration(hours: 2); // 2 hours

// //   static Future<Map<String, dynamic>> login(String email, String password) async {
// //     try {
// //       final response = await http.post(
// //         Uri.parse('$baseUrl/login'),
// //         headers: {'Content-Type': 'application/json'},
// //         body: jsonEncode({
// //           'Email': email,
// //           'Password': password,
// //         }),
// //       ).timeout(timeoutDuration);

// //       if (response.statusCode == 200) {
// //         final data = jsonDecode(response.body);
// //         // Stock the token in SharedPreferences
// //         SharedPreferences prefs = await SharedPreferences.getInstance();
// //         await prefs.setString('authToken', data['token']);
// //         return data;
// //       } else {
// //         return {'error': 'Failed to login: ${response.reasonPhrase}'};
// //       }
// //     } on TimeoutException catch (e) {
// //       return {'error': 'Request timed out: $e'};
// //     } catch (e) {
// //       return {'error': 'An unknown error occurred: $e'};
// //     }
// //   }

// //   static Future<Map<String, dynamic>> fetchStatistics() async {
// //     try {
// //       SharedPreferences prefs = await SharedPreferences.getInstance();
// //       String? token = prefs.getString('authToken');

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/fetchStatistics'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       ).timeout(timeoutDuration);

// //       if (response.statusCode == 200) {
// //         return jsonDecode(response.body);
// //       } else {
// //         return {'error': 'Failed to fetch statistics: ${response.reasonPhrase}'};
// //       }
// //     } on TimeoutException catch (e) {
// //       return {'error': 'Request timed out: $e'};
// //     } catch (e) {
// //       return {'error': 'An unknown error occurred: $e'};
// //     }
// //   }

// //   static Future<List<dynamic>> fetchDetailsList() async {
// //     try {
// //       SharedPreferences prefs = await SharedPreferences.getInstance();
// //       String? token = prefs.getString('authToken');

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/fetchDetailsList'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       ).timeout(timeoutDuration);

// //       if (response.statusCode == 200) {
// //         return jsonDecode(response.body);
// //       } else {
// //         return [{'error': 'Failed to fetch details list: ${response.reasonPhrase}'}];
// //       }
// //     } on TimeoutException catch (e) {
// //       return [{'error': 'Request timed out: $e'}];
// //     } catch (e) {
// //       return [{'error': 'An unknown error occurred: $e'}];
// //     }
// //   }

// //   // static Future<List<dynamic>> fetchDetailsList(String token) async {
// //   //   try {
// //   //     final response = await http.get(
// //   //       Uri.parse('$baseUrl/fetchDetailsList'),
// //   //       headers: {
// //   //         'Content-Type': 'application/json',
// //   //         'Authorization': 'Bearer $token',
// //   //       },
// //   //     ).timeout(timeoutDuration);

// //   //     if (response.statusCode == 200) {
// //   //       return jsonDecode(response.body);
// //   //     } else {
// //   //       return [{'error': 'Failed to fetch details list: ${response.reasonPhrase}'}];
// //   //     }
// //   //   } on TimeoutException catch (e) {
// //   //     return [{'error': 'Request timed out: $e'}];
// //   //   } catch (e) {
// //   //     return [{'error': 'An unknown error occurred: $e'}];
// //   //   }
// //   // }

// //   static Future<Map<String, dynamic>> register(
// //       String name, String email, String password, String service) async {
// //     final response = await http.post(
// //       Uri.parse('$baseUrl/register'),
// //       headers: {'Content-Type': 'application/json'},
// //       body: jsonEncode({
// //         'Nom_Complet': name,
// //         'Email': email,
// //         'Password': password,
// //         'Service': {'Libelle': service},
// //       }),
// //     );
// //     return jsonDecode(response.body);
// //   }

// //   // static Future<Map<String, dynamic>> login(String email, String password) async {
// //   //   final response = await http.post(
// //   //     Uri.parse('$baseUrl/login'),
// //   //     headers: {'Content-Type': 'application/json'},
// //   //     body: jsonEncode({
// //   //       'Email': email,
// //   //       'Password': password,
// //   //     }),
// //   //   );
// //   //   return jsonDecode(response.body);
// //   // }

// //   static Future<Map<String, dynamic>> validateRequest(
// //       String token, String codeDemande, String observation, bool isApproved) async {
// //     final response = await http.post(
// //       Uri.parse('$baseUrl/ValideDemandeWorkFlow'),
// //       headers: {
// //         'Content-Type': 'application/json',
// //         'Authorization': 'Bearer $token',
// //       },
// //       body: jsonEncode({
// //         'CodeDemande': codeDemande,
// //         'Observation': observation,
// //         'IsAprouver': isApproved,
// //       }),
// //     );
// //     return jsonDecode(response.body);
// //   }

// //   static Future<Map<String, dynamic>> getRequestDetails(String token, String idDa) async {
// //     final response = await http.get(
// //       Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=$idDa'),
// //       headers: {
// //         'Content-Type': 'application/json',
// //         'Authorization': 'Bearer $token',
// //       },
// //     );
// //     return jsonDecode(response.body);
// //   }

// //   static Future<Map<String, dynamic>> getOrderDetails(String token, String idBc) async {
// //     final response = await http.get(
// //       Uri.parse('$baseUrl/DetailsBonCommande?IdBc=$idBc'),
// //       headers: {
// //         'Content-Type': 'application/json',
// //         'Authorization': 'Bearer $token',
// //       },
// //     );
// //     return jsonDecode(response.body);
// //   }
// // }
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

// class ApiServices {
//   final Dio _dio = Dio();

//   ApiServices(String s);

//   Future<bool> validateWorkflow(String token, String codeDemande, String observation, bool isAprouver) async {
//     try {
//       final response = await _dio.post(
//         'http://localhost:3000/api/ValideDemandeWorkFlow',
//         data: {
//           'token': token,
//           'CodeDemande': codeDemande,
//           'Observation': observation,
//           'IsAprouver': isAprouver
//         },
//       );

//       if (response.statusCode == 200) {
//         return true;
//       } else {
//         print('Error: ${response.data}');
//         return false;
//       }
//     } catch (e) {
//       print('Exception: $e');
//       return false;
//     }
//   }
// }
class Workflows {
  final String codeDemande;
  final double amount;
  final String validator;
  final DateTime date;
  final bool? isAccepted;

  Workflows({
    required this.codeDemande,
    required this.amount,
    required this.validator,
    required this.date,
    this.isAccepted,
  });

  factory Workflows.fromJson(Map<String, dynamic> json) {
    return Workflows(
      codeDemande: json['codeDemande'],
      amount: json['amount'] != null ? json['amount'].toDouble() : 0.0, // Handle null amount
      validator: json['validator'],
      date: DateTime.parse(json['date']),
      isAccepted: json['isAccepted'],
    );
  }
}
//  class Workflows {
//     final String codeDemande;
//     final double amount;
//     final String validator;
//     final DateTime date;
//     final bool? isAccepted;

//     Workflows({required this.codeDemande, required this.amount, required this.validator, required this.date, this.isAccepted});

//     factory Workflows.fromJson(Map<String, dynamic> json) {
//       return Workflows(
//         codeDemande: json['codeDemande'],
//         amount: json['amount'].toDouble(),
//         validator: json['validator'],
//         date: DateTime.parse(json['date']),
//         isAccepted: json['isAccepted'],
//       );
//     }
//   } 
class ApiService {
  static const String baseUrl = 'http://localhost:3000/api';
  static const Duration timeoutDuration = Duration(seconds: 30);

  ApiService(String s); // 30 seconds
  static Future<List<Workflows>> fetchWorkflows() async {
      final response = await http.get(Uri.parse('http://localhost:3000/getWorkflows'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((workflows) => Workflows.fromJson(workflows)).toList();
      } else {
        throw Exception('Failed to load workflows');
      }
    }

    static Future<void> validateWorkflow(String codeDemande, bool isAccepted) async {
      final response = await http.post(
        Uri.parse('$baseUrl/ValideDemandeWorkFlow'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'codeDemande': codeDemande,
          'isAccepted': isAccepted,
        }),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to validate workflow');
      }
    }
  
  

  static Future<Map<String, dynamic>> login(
      String email, String password) async {
    try {
      final response = await http
          .post(
            Uri.parse('$baseUrl/login'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({
              'Email': email,
              'Password': password,
            }),
          )
          .timeout(timeoutDuration);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('authToken', data['token']);
        return data;
      } else {
        return {'error': 'Failed to login: ${response.reasonPhrase}'};
      }
    } on TimeoutException catch (e) {
      return {'error': 'Request timed out: $e'};
    } catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }

  Future<Map<String, dynamic>> getDemandeAchat(String idDa) async {
    final url = Uri.parse('$baseUrl/api/DetailsDemandeAchat?idDa=DA001');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load demande achat');
    }
  }
  // Function to fetch demande achat details
  // static Future<Map<String, dynamic>> fetchDemandeAchatDetails(String idDa) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final token = prefs.getString('token') ?? '';

  //   final response = await http.get(
  //     Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=$idDa'),
  //     headers: {
  //       'Authorization': 'Bearer $token',
  //       'Content-Type': 'application/json',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     return json.decode(response.body);
  //   } else {
  //     throw Exception('Failed to load demande achat details');
  //   }
  // }

  // Function to handle login
  // static Future<void> login(String email, String password) async {
  //   final response = await http.post(
  //     Uri.parse('$_baseUrl/login'),
  //     headers: {'Content-Type': 'application/json'},
  //     body: json.encode({
  //       'Email': email,
  //       'Password': password,
  //     }),
  //   );

  //   if (response.statusCode == 200) {
  //     final data = json.decode(response.body);
  //     final prefs = await SharedPreferences.getInstance();
  //     await prefs.setString('token', data['token']);
  //   } else {
  //     throw Exception('Failed to login');
  //   }
  // }

  // Future<Map<String, dynamic>> getDetailsDemandeAchat(String idDa) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? token = prefs.getString('auth_token');
  //   if (token == null) {
  //     throw Exception('Token non trouvé');
  //   }

  //   try {
  //     final response = await http.get(
  //       Uri.parse('$baseUrl/DetailsDemandeAchat?token=$token&idDa=$idDa'),
  //     );

  //     if (response.statusCode == 200) {
  //       return json.decode(response.body);
  //     } else {
  //       print('Erreur: ${response.statusCode} - ${response.body}');
  //       throw Exception('Erreur lors du chargement des détails');
  //     }
  //   } catch (error) {
  //     print('Exception: $error');
  //     throw Exception('Erreur lors du chargement des détails');
  //   }
  // }

 static Future<Map<String, dynamic>> fetchStatistics() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('authToken');

      final response = await http.get(
        Uri.parse('$baseUrl/fetchStatistics'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(timeoutDuration);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return {
          'error': 'Failed to fetch statistics: ${response.reasonPhrase}'
        };
      }
    } on TimeoutException catch (e) {
      return {'error': 'Request timed out: $e'};
    } catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }

  // static Future<List<dynamic>> fetchDetailsList() async {
  //   final url = Uri.parse('$baseUrl/api/DetailsDemandeAchat?idDa=DA01');
  //   final response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     return json.decode(response.body);
  //   } else {
  //     throw Exception('Failed to load demande achat');
  //   }
  static Future<List<dynamic>> fetchDetailsList() async {
    final url = Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=DA01');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Réponse complète : $data');
        if (data['data'] != null) {
          return List<dynamic>.from(
              data['data']); // Assure-toi que 'data' est converti en List
        } else {
          print('Aucune donnée trouvée dans la réponse.');
          return []; // Retourne une liste vide si aucune donnée n'est trouvée
        }
      } else {
        throw Exception('Failed to load demande achat');
      }
    } catch (e) {
      print('Erreur lors de la récupération des données : $e');
      return []; // Retourne une liste vide en cas d'erreur
    }
  }
// Future<List<dynamic>> fetchDetailsList() async {
//   final url = Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=DA01');
//   final response = await http.get(url);
//   if (response.statusCode == 200) {
//     final Map<String, dynamic> data = json.decode(response.body);
//     print('Réponse complète : $data');
//     if (data['data'] != null) {
//       return data['data'];
//     } else {
//       print('Aucune donnée trouvée dans la réponse.');
//       return []; // Retourne une liste vide si aucune donnée n'est trouvée
//     }
//   } else {
//     throw Exception('Failed to load demande achat');
//   }
// }
   // Fetch all demands
  Future<List<dynamic>> getDemandes() async {
    final response = await http.get(Uri.parse('$baseUrl/demandes'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load demands');
    }
  }

  // Create a new demand
  Future<bool> createDemande(Map<String, dynamic> demandeData) async {
    final response = await http.post(
      Uri.parse('$baseUrl/demandes'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(demandeData),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      throw Exception('Failed to create demand');
    }
  }

  Future<List<dynamic>> fetchData() async {
    // Replace this with your actual data fetching function
    final data = await fetchDetailsList();

    // Return an empty list if data is null
    return data;
  }

  void loadData() async {
    try {
      final data = await fetchData();
      // Proceed with your logic to use 'data'
      print('Data loaded: $data');
    } catch (e) {
      // Handle any other exceptions
      print('Failed to load data: $e');
    }
  }

  // static Future<List<dynamic>> fetchDetailsList() async {
  //   final url = Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=DA001');
  //   final response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     try {
  //       final List<dynamic> data = json.decode(response.body);
  //       return data;
  //     } catch (e) {
  //       throw Exception('Failed to parse response body: $e');
  //     }
  //   } else {
  //     print('Failed to load demande achat. Status code: ${response.statusCode}');
  //     print('Response body: ${response.body}');
  //     throw Exception('Failed to load demande achat');
  //   }
  // }

  // try {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? token = prefs.getString('authToken');

  //   final response = await http.get(
  //     Uri.parse('$baseUrl/fetchDetailsList'),
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer $token',
  //     },
  //   ).timeout(timeoutDuration);

  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     return [{'error': 'Failed to fetch details list: ${response.reasonPhrase}'}];
  //   }
  // } on TimeoutException catch (e) {
  //   return [{'error': 'Request timed out: $e'}];
  // } catch (e) {
  //   return [{'error': 'An unknown error occurred: $e'}];
  // }

  static Future<Map<String, dynamic>> register(
      String name, String email, String password, String service) async {
    try {
      final response = await http
          .post(
            Uri.parse('$baseUrl/register'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({
              'Nom_Complet': name,
              'Email': email,
              'Password': password,
              'Service': {'Libelle': service},
            }),
          )
          .timeout(timeoutDuration);

      return jsonDecode(response.body);
    } on TimeoutException catch (e) {
      return {'error': 'Request timed out: $e'};
    } catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }

  static Future<Map<String, dynamic>> validateRequest(String token,
      String codeDemande, String observation, bool isApproved) async {
    try {
      final response = await http
          .post(
            Uri.parse('$baseUrl/ValideDemandeWorkFlow'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
            body: jsonEncode({
              'CodeDemande': codeDemande,
              'Observation': observation,
              'IsAprouver': isApproved,
            }),
          )
          .timeout(timeoutDuration);

      return jsonDecode(response.body);
    } on TimeoutException catch (e) {
      return {'error': 'Request timed out: $e'};
    } catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }

  static Future<Map<String, dynamic>> getRequestDetails(
      String token, String idDa) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=$idDa'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(timeoutDuration);

      return jsonDecode(response.body);
    } on TimeoutException catch (e) {
      return {'error': 'Request timed out: $e'};
    } catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }

  // Future<bool> validateWorkflow(String token, String codeDemande, String observation, bool isAprouver) async {
  //   final response = await http.post(
  //     Uri.parse('$baseUrl/ValideDemandeWorkFlow'),
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: jsonEncode({
  //       'token': token,
  //       'CodeDemande': codeDemande,
  //       'Observation': observation,
  //       'IsAprouver': isAprouver,
  //     }),
  //   );

  //   return response.statusCode == 200;
  // }


  static Future<Map<String, dynamic>> getOrderDetails(
      String token, String idBc) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/DetailsBonCommande?IdBc=$idBc'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ).timeout(timeoutDuration);

      return jsonDecode(response.body);
    } on TimeoutException catch (e) {
      return {'error': 'Request timed out: $e'};
    } catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }
//   Future<bool> validateWorkflow(String token, String codeDemande, String observation, bool isApproved) async {
//     final url = Uri.parse('$baseUrl/ValideDemandeWorkFlow');
//     final response = await http.post(
//       url,
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//       body: jsonEncode({
//         'CodeDemande': codeDemande,
//         'Observation': observation,
//         'IsAprouver': isApproved.toString(),
//       }),
//     );

//     if (response.statusCode == 200) {
//       return true; // Successfully validated
//     } else {
//       return false; // Validation failed
//     }
//   }
 }
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class ApiService {
//   static const String baseUrl = 'http://localhost:3000/api'; // Changez par votre URL de production si nécessaire

//   Future<String?>login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/login'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         'Email': email,
//         'Password': password,
//       }),
//     );

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setString('token', data['token']);
//       return data['token'];
//     } else {
//       return null;
//     }
//   }

//   Future<Map<String, dynamic>?> fetchDetails(String idDa) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? token = prefs.getString('token');
//     if (token == null) return null;

//     final response = await http.get(
//       Uri.parse('$baseUrl/DetailsDemandeAchat?idDa=$idDa'),
//       headers: {
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return null;
//     }
//   }

//   Future<Map<String, dynamic>?> fetchStatistics() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? token = prefs.getString('token');
//     if (token == null) return null;

//     final response = await http.get(
//       Uri.parse('$baseUrl/fetchStatistics'),
//       headers: {
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return null;
//     }
//   }

//   Future<List<dynamic>?> fetchDetailsList() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? token = prefs.getString('token');
//     if (token == null) return null;

//     final response = await http.get(
//       Uri.parse('$baseUrl/fetchDetailsList'),
//       headers: {
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return null;
//     }
//   }

//   Future<bool> validateDemandeWorkFlow(String codeDemande, String observation, bool isAprouver) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? token = prefs.getString('token');
//     if (token == null) return false;

//     final response = await http.post(
//       Uri.parse('$baseUrl/ValideDemandeWorkFlow'),
//       headers: {
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': 'Bearer $token',
//       },
//       body: jsonEncode(<String, dynamic>{
//         'CodeDemande': codeDemande,
//         'Observation': observation,
//         'IsAprouver': isAprouver,
//       }),
//     );

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       return data['success'] ?? false;
//     } else {
//       return false;
//     }
//   }

//   Future<Map<String, dynamic>> getDetailsDemandeAchat(String s) {}
// }
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class ApiService {
//   final String baseUrl = 'http://localhost:3000/api'; // Remplacez par l'URL de votre backend



//   // Fonction pour obtenir le token stocké
//   static Future<String?> _getToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('token');
//   }

//   // Fonction pour obtenir les statistiques
//   static Future<Map<String, dynamic>> fetchStatistics() async {
//     final token = await _getToken();
//     if (token == null) {
//       throw Exception('Token non disponible');
//     }

//     final response = await http.get(
//       Uri.parse('http//localhost:3000/api/statistics'), // Remplacez par votre endpoint pour les statistiques
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Échec du chargement des statistiques');
//     }
//   }

//   // Fonction pour obtenir les détails de la liste
//   static Future<List<dynamic>> fetchDetailsList() async {
//     final token = await _getToken();
//     if (token == null) {
//       throw Exception('Token non disponible');
//     }

//     final response = await http.get(
//       Uri.parse('http://localhost:3000/api/details-list'), // Remplacez par votre endpoint pour les détails de la liste
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Échec du chargement des détails de la liste');
//     }
//   }

//   // Méthode pour se connecter
//   Future<Map<String, dynamic>> login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/login'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({'Email': email, 'Password': password}),
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to login: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }

//   // Méthode pour enregistrer un utilisateur
//   Future<Map<String, dynamic>> register(String nomComplet, String email, String password, Map<String, dynamic> service) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/register'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({
//         'Nom_Complet': nomComplet,
//         'Email': email,
//         'Password': password,
//         'Service': service
//       }),
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to register: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }

//   // Méthode pour créer une demande d'achat
//   Future<Map<String, dynamic>> createDemandeAchat(String token, Map<String, dynamic> demandeAchat) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/createDemandeAchat'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//       body: jsonEncode(demandeAchat),
//     );

//     if (response.statusCode == 201) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to create DemandeAchat: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }

//   // Méthode pour obtenir les détails d'une demande d'achat
//   static Future<Map<String, dynamic>> fetchDetailsDemandeAchat(String token, String idDa) async {
//     final response = await http.get(
//       Uri.parse('http://localhost:3000/api/DetailsDemandeAchat?idDa=$idDa'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to fetch DemandeAchat details: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }

//   // Méthode pour valider une demande de workflow
//   Future<Map<String, dynamic>> valideDemandeWorkFlow(String token, String codeDemande, String observation, bool isAprouver) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/ValideDemandeWorkFlow'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//       body: jsonEncode({
//         'CodeDemande': codeDemande,
//         'Observation': observation,
//         'IsAprouver': isAprouver,
//       }),
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to validate workflow: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }

//   // Méthode pour créer un bon de commande
//   Future<Map<String, dynamic>> createBonCommande(String token, Map<String, dynamic> bonCommande) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/createBonCommande'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//       body: jsonEncode(bonCommande),
//     );

//     if (response.statusCode == 201) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to create BonCommande: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }

//   // Méthode pour obtenir les détails d'un bon de commande
//   Future<Map<String, dynamic>> fetchDetailsBonCommande(String token, String idBc) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl/detailsBonCommande?IdBc=$idBc'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       return {'error': 'Failed to fetch BonCommande details: ${response.statusCode} - ${response.reasonPhrase}'};
//     }
//   }
// }
