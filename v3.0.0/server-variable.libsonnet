{
  // Initialize new Server Variable object.
  // @param name The name of the server variable.
  // @param enum An enumeration of values for substitution options.
  // @param default The default value to use for substitution.
  // @param description Description of the server variable.
  New(
    name=error "New Server Variable method missing 'name' parameter.",
    enum=null,
    default=error "Server Variable object missing required field 'default'.",
    description=null,
  ):: {
    [name]: {
      [if enum != null then 'enum']:
        if std.type(enum) == 'array'
        then enum
        else error "Server Variable object field 'enum' must be an array.",

      default:
        if std.type(default) == 'string'
        then default
        else error "Server Variable object field 'default' must be a string.",

      [if description != null then 'description']:
        if std.type(description) == 'string'
        then description
        else error "Server Variable object field 'description' must be a string.",
    },
  },
}
