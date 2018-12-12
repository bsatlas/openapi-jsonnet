{
  // Initialize new Response object.
  new(
    statusCode=error 'StatusCode not defined for Response object.',
    description=null,
  ):: {
    [statusCode]: {
      [if description != null then 'description']: description,
    },

    addHeader(headers):: self {
      [statusCode]+: {
        headers+: headers,
      },
    },

    addContent(mediaType):: self {
      [statusCode]+: {
        content+: mediaType,
      },
    },
  },
}
