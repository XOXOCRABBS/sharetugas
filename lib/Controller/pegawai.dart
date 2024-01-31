import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectuas/Model/modelpegawai.dart';

final CollectionReference _pegawai = FirebaseFirestore.instance.collection("Users");

class Pegawai {
    //add data
  Future add_pegawai(UserModel mpgw) async {
    await _pegawai.doc().set(mpgw.add_data());
  }

  //update data
  Future update_pegawai(UserModel mpgw) async {
    await _pegawai.doc(mpgw.id).update(mpgw.add_data());
  }

  //detele data
  Future hapus_pegawai(UserModel model_mahasiswa) async {
    await _pegawai.doc(model_mahasiswa.id).delete();
  }
}