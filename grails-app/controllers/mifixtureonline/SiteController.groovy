package mifixtureonline

class SiteController {

    def welcome() { render(view: "welcome") }
	def accessDenied() { render(view: "acces-denied") }
	def notFound() { render(view: "not-found") }
	def notAllowed() { render(view: "not-allowed") }
}
