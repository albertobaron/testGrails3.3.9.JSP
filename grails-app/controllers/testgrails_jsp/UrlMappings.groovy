package testgrails_jsp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'index', action: "start")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
