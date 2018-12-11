{
  // Initialize new Request Body object.
  new(required, description):: {
    required: required,
    description: description,

    addContent(content):: self {
      content+: content,

    },
  },
}
