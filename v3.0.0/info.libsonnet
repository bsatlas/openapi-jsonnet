{
    // Initialize new info object.
    // @param title The title of the application.
    // @param version The version of the OpenAPI document.
    // @param description A short description of the application.
    // @param termsOfService A URL to the Terms of Service for the API.
    // @param contact A Contact object.
    // @param license A License object.
    New(
        title,
        version
        description,
        termsOfService,
        contact,
        license,
    ):: {
        title: title,
        description: description,
        termsOfService: termsOfService,
        contact: contact,
        license: license,
        version: version,
    },
}
