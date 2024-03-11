import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure
{
  final String errMassage;

  Failure(this.errMassage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errMassage);
}