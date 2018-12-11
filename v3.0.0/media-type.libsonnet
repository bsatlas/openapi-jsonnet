{
  // Initialize new Media Type object.
  new(name, schema):: {
    [name]: {
      schema: schema,
    },

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
