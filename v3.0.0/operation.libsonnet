{
  // Initialize new Operation object.
  new():: {

    addTag(tag):: self {
      tags+: [tag],
    },

    addSummary(summary):: self {
      summary+: summary,
    },

    addDescription(description):: self {
      description+: description,
    },

    addExternalDoc(doc):: self {
      externalDocs+: doc,
    },

    addOperationId(id):: self {
      operationId+: id,
    },

    addParameter(parameter):: self {
      parameters+: [parameter],
    },

    addRequestBody(body):: self {
      requestBody+: body,
    },

    addResponse(response):: self {
      responses+: response,
    },

    addCallback(callback):: self {
      callbacks+: callback,
    },

    deprecate():: self {
      deprecated+: true,
    },

    addSecurityRequirement(requirement):: self {
      security+: [requirement],
    },

    addServer(server):: self {
      servers+: [server],
    },

  },
}
