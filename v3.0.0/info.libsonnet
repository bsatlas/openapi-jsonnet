{
  // Initialize new info object.
  New():: {

    addTitle(title):: self {
      title+: title,
    },

    addVersion(version):: self {
      version+: version,
    },

    addDescription(description):: self {
      description+: description,
    },

    addTermOfService(ToS):: self {
      termsOfService+: ToS,
    },

    addContact(contact):: self {
      contact+: contact,
    },

    addLicense(license):: self {
      license+: license,
    },
  },
}
