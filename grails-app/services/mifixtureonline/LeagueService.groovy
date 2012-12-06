package mifixtureonline

class LeagueService {
	def mailService
	
    def sendMailForInvitation(League leagueInstance) {

		leagueInstance.teams.each{
			team->
			System.out.println('<<<<< Equipo: '+team.name);
			
			mailService.sendMail{
				to team.owner.email
				subject "Invitación al torneo $leagueInstance.name"
				html """Hola <h3>$team.owner.name!</h3>,
						Tu equipo, <strong>"$team.name"</strong>, ha sido invitado al torneo: <strong>$leagueInstance.name</strong>.
						Para confirmar la invitacion hace click en el siguiente link: http://localhost:8080/MiFixtureOnLine/.
						<br /><br />Hasta la pr&oacute;xima, y buena suerte!!"""
			}
		}
	}
	
	def generateFixture(){
		
	}
}
