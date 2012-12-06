class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"login")
		"403"(controller: "site", action: "accessDenied")
		"404"(controller: "site", action: "notFound")
		"405"(controller: "site", action: "notAllowed")
		"500"(view: '/error')
	}
}
