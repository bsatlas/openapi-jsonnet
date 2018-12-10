{
  // Initialize new Response object.
  new(description):: {
    description: description,

    addHeader(headers):: self {
      headers+: headers,
    },
  },
}
