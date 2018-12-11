{
  // Initialize Parameter object.
  new(name, location, required):: {
    name: name,
    'in': location,
    required: required,

    addDescription(description):: self {
      description+: description,
    },

    // Set deprecated flag.
    deprecated():: self {
      deprecated: true,
    },

    // Allow query parameter to have an empty value.
    allowEmptyValue():: self {
      allowEmptyValue: true,
    },
  },
}
