class GRPCResponse<T> {
  final T data;
  final String message;

  GRPCResponse({required this.data, required this.message});

  getGRPCResponse() {
    print(message);
    return GRPCResponse<T>(
      data: data,
      message: message,
    );
  }
}

class GRPCResult<T> {
  Future<GRPCResponse> getResponse(Future<T> grpcFunction) async {
    T result = await grpcFunction;
    return GRPCResponse(data: result, message: "");
  }
}
