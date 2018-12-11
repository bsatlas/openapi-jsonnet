{
  // Initialize new Server Variable object.
  New(
    name=error "New Server Variable method missing 'name' parameter.",
    default=error "Server Variable object missing required field 'default'.",
  ):: {
    [name]: {
      default: default,
    },

    addEnum(enum):: self {
      [name]+: {
        enum+: enum,
      },
    },

    addDescription(description):: self {
      [name]: {
        description+: description,
      },
    },
  },
}
