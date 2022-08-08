abstract class IGetException {
  final String message;
  final StackTrace? stackTrace;

  const IGetException(this.message, [this.stackTrace]);
}

class ArgumentsException extends IGetException {
  const ArgumentsException(super.message, [super.stackTrace]);
}

class DatasourceGetException extends IGetException {
  const DatasourceGetException(super.message, [super.stackTrace]);
}
