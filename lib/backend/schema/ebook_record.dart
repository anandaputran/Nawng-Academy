import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EbookRecord extends FirestoreRecord {
  EbookRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  // "judul" field.
  String? _judul;
  String get judul => _judul ?? '';
  bool hasJudul() => _judul != null;

  // "sinopsis" field.
  String? _sinopsis;
  String get sinopsis => _sinopsis ?? '';
  bool hasSinopsis() => _sinopsis != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "link_unduh" field.
  String? _linkUnduh;
  String get linkUnduh => _linkUnduh ?? '';
  bool hasLinkUnduh() => _linkUnduh != null;

  void _initializeFields() {
    _deskripsi = snapshotData['deskripsi'] as String?;
    _judul = snapshotData['judul'] as String?;
    _sinopsis = snapshotData['sinopsis'] as String?;
    _gambar = snapshotData['gambar'] as String?;
    _id = snapshotData['id'] as String?;
    _linkUnduh = snapshotData['link_unduh'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ebook');

  static Stream<EbookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EbookRecord.fromSnapshot(s));

  static Future<EbookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EbookRecord.fromSnapshot(s));

  static EbookRecord fromSnapshot(DocumentSnapshot snapshot) => EbookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EbookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EbookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EbookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EbookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEbookRecordData({
  String? deskripsi,
  String? judul,
  String? sinopsis,
  String? gambar,
  String? id,
  String? linkUnduh,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deskripsi': deskripsi,
      'judul': judul,
      'sinopsis': sinopsis,
      'gambar': gambar,
      'id': id,
      'link_unduh': linkUnduh,
    }.withoutNulls,
  );

  return firestoreData;
}

class EbookRecordDocumentEquality implements Equality<EbookRecord> {
  const EbookRecordDocumentEquality();

  @override
  bool equals(EbookRecord? e1, EbookRecord? e2) {
    return e1?.deskripsi == e2?.deskripsi &&
        e1?.judul == e2?.judul &&
        e1?.sinopsis == e2?.sinopsis &&
        e1?.gambar == e2?.gambar &&
        e1?.id == e2?.id &&
        e1?.linkUnduh == e2?.linkUnduh;
  }

  @override
  int hash(EbookRecord? e) => const ListEquality().hash(
      [e?.deskripsi, e?.judul, e?.sinopsis, e?.gambar, e?.id, e?.linkUnduh]);

  @override
  bool isValidKey(Object? o) => o is EbookRecord;
}
