import 'package:clean_architecture/core/error/failures.dart';
import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomNumberTrivia extends Usecase<NumberTrivia , NoParams > {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia({required this.repository});
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}


class NoParams extends Equatable{
  @override
  List<Object?> get props => [];
}