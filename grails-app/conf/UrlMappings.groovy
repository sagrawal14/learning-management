class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?/todays-date/$date"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
