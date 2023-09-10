import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whattosolve/models/firestore_filter.dart';
import 'package:whattosolve/models/solvedac_problem.dart';
import 'package:whattosolve/providers/search_filter.dart';

class FirestoreService {
  static final db = FirebaseFirestore.instance;

  static void saveFilter(String uid, SearchFilter filter) {
    db
        .collection("users")
        .doc(uid)
        .collection("filters")
        .doc('${filter.id}')
        .set(filter.toMap());
  }

  static void initUserFilters(String uid) async {
    final firstFilter = await db
        .collection("users")
        .doc(uid)
        .collection("filters")
        .doc('1')
        .get();

    if (!firstFilter.exists) {
      for (var i = 1; i <= 5; ++i) {
        db
            .collection("users")
            .doc(uid)
            .collection("filters")
            .doc(i.toString())
            .set(SearchFilter('$i번 필터').toMap());
      }
    }
  }

  static Future<SearchFilter> getFirstFilter(String uid, List<Tag> tags) async {
    final doc = await db
        .collection("users")
        .doc(uid)
        .collection("filters")
        .doc("1")
        .withConverter(
          fromFirestore: FirestoreFilter.fromFirestore,
          toFirestore: (value, _) => value.toFirestore(),
        )
        .get();

    return SearchFilter.fromFirestoreFilter(
        doc.data()!, int.parse(doc.id), tags);
  }
}
