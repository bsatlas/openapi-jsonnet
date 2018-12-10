{
  // Initialize new Paths object
  new():: {

    // Add a path to the Paths object.
    // @params path A URL path.
    // @params pathItem A Path Item object.
    addPath(path, pathItem):: self {
      [path]: pathItem,
    },

  },

}
