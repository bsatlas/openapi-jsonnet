{
  // Initialize Link object.
  new(operationRef, operationId, description):: {
    operationRef: operationRef,
    operationId: operationId,
    description: description,

    addParameter(parameter):: self {
      parameters+: parameter,
    },

    addRequestBody(body):: self {
      requestBody+: body,
    },

    addServer(server):: self {
      server+: [server],
    },
  },
}
