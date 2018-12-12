{
  // Initialize new Media Type object.
  new(
    schema=error 'Schema not defined for Media Type object.',
  ):: {
    schema: schema,

    addExample(example):: self {
      [name]+: {
        examples+: example,
      },
    },

    addEncoding(encoding):: self {
      [name]+: {
        encoding+: encoding,
      },
    },
  },
}
