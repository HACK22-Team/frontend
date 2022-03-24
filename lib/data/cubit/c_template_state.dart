part of 'c_template_cubit.dart';

@immutable
abstract class CTemplateState extends Equatable {}

class CTemplateInitial extends CTemplateState {
  final name;
  CTemplateInitial({required this.name});

  // Override the equatable operator
  @override
  List<Object?> get props => [name];
}

class CTemplateLoading extends CTemplateState {
  CTemplateLoading();

  // Override the equatable operator
  @override
  List<Object?> get props => [];
}

class CTemplateLoaded extends CTemplateState {
  final String value;
  CTemplateLoaded(this.value);

  // Override the equatable operator
  @override
  List<Object?> get props => [];
}

class CTemplateError extends CTemplateState {
  final String errorMessage;
  CTemplateError(this.errorMessage);

  // Override the equatable operator
  @override
  List<Object?> get props => [];
}
