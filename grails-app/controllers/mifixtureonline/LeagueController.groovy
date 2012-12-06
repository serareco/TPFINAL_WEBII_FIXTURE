package mifixtureonline

import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_USER'])
class LeagueController {

	def leagueService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "GET"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [leagueInstanceList: League.list(params), leagueInstanceTotal: League.count()]
    }

    def create() {
        [leagueInstance: new League(params)]
    }

    def save() {
        def leagueInstance = new League(params)
		
		if (leagueInstance.closed == true)
		{
			leagueService.sendMailForInvitation(leagueInstance)
		}
		
//		leagueInstance.teams.each{
//			team ->
//			System.out.println('<<<<< Equipo: '+team.name);
//			
//			team.players.each{
//				player->
//			System.out.println('<<<<< Jugador: '+player.user.username);
//			}
//		}

		if (!leagueInstance.save(flush: true)) {			
            render(view: "create", model: [leagueInstance: leagueInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'league.label', default: 'League'), leagueInstance.id])
        redirect(action: "show", id: leagueInstance.id)
    }

    def show(Long id) {
        def leagueInstance = League.get(id)
        if (!leagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'league.label', default: 'League'), id])
            redirect(action: "list")
            return
        }

        [leagueInstance: leagueInstance]
    }

    def edit(Long id) {
        def leagueInstance = League.get(id)
        if (!leagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'league.label', default: 'League'), id])
            redirect(action: "list")
            return
        }

        [leagueInstance: leagueInstance]
    }

    def update(Long id, Long version) {
        def leagueInstance = League.get(id)
        if (!leagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'league.label', default: 'League'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (leagueInstance.version > version) {
                leagueInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'league.label', default: 'League')] as Object[],
                          "Another user has updated this League while you were editing")
                render(view: "edit", model: [leagueInstance: leagueInstance])
                return
            }
        }

        leagueInstance.properties = params

        if (!leagueInstance.save(flush: true)) {
            render(view: "edit", model: [leagueInstance: leagueInstance])
            return
        }

		if (leagueInstance.closed == true)
		{
			leagueService.sendMailForInvitation(leagueInstance)
		}

        flash.message = message(code: 'default.updated.message', args: [message(code: 'league.label', default: 'League'), leagueInstance.id])
        redirect(action: "show", id: leagueInstance.id)
    }

    def delete(Long id) {
        def leagueInstance = League.get(id)
        if (!leagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'league.label', default: 'League'), id])
            redirect(action: "list")
            return
        }

        try {
            leagueInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'league.label', default: 'League'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'league.label', default: 'League'), id])
            redirect(action: "show", id: id)
        }
    }
}
