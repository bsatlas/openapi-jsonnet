{
  // Initialize new Operation object.
  new():: {
    //    responses: error 'No responses defined for the Operation object.',

    addResponses(responses):: self {
      responses+: responses,
    },
  },
}
