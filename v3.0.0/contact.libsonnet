{
  // Initalize new Contact object.
  new():: {

    addName(name):: self {
      name+: name,
    },

    addURL(url):: self {
      url+: url,
    },

    addEmail(email):: self {
      email+: email,
    },
  },
}
