{
  // Initialize new Response object.
  new(
    statusCode=error 'StatusCode not defined for Response object.',
    content=null,
    description=null,
  ):: {
    [statusCode]: {
      [if description != null then 'description']: description,
      [if content != null then 'content']: content,
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
