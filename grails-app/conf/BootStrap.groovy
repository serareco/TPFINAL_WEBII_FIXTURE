import mifixtureonline.Admin
import mifixtureonline.League
import mifixtureonline.Player
import mifixtureonline.Role
import mifixtureonline.Team
import mifixtureonline.User
import mifixtureonline.UserRole


class BootStrap {

	def springSecurityService
	
    def init = { servletContext ->
	
	def adminRole = Role.findByAuthority("ROLE_ADMIN")?: new Role(authority: "ROLE_ADMIN").save()	
	def userRole = Role.findByAuthority("ROLE_USER")?: new Role(authority: "ROLE_USER").save()
	
	// USER ADMIN DE PRUEBA --
		User usuarioAdm = new User(
							username : 	'admin',
							password: 	'admin2012',
							email: 		'mifixtureonline@gmail.com',
							name: 		'Admin',
							lastname: 	'Admin',
							enabled:	true
							).save(failOnError: true)
		
		Admin admin = new Admin(
			user: usuarioAdm
			).save(failOnError: true)

		if (!admin.user.authorities.contains(adminRole)) {
				UserRole.create(admin.user, adminRole, true)
		}
	// USER PLAYER 1 DE PRUEBA --
		User usuario1 = new User(
							username : 	'serareco',
							password: 	'serareco',
							email: 		'sergio_areco@hotmail.com',
							name: 		'Sergio',
							lastname: 	'Areco',
							enabled:	true
							).save(failOnError: true)
	
		Player player1 = new Player(
			user: usuario1
			).save(failOnError: true)
		
		if (!player1.user.authorities.contains(userRole)) {
				UserRole.create(player1.user, userRole, true)
		}

	 // EQUIPO PARA PLAYER 1 DE PRUEBA --
		
		User usuario2 = new User(
							username : 	'seperez',
							password: 	'seperez',
							email: 		'perezsebastianm@gmail.com',
							name: 		'Sebastian',
							lastname: 	'Perez',
							enabled:	true
							).save(failOnError: true)
	
		Player player2 = new Player(
			user: usuario2
			).save(failOnError: true)

		if (!player2.user.authorities.contains(userRole)) {
				UserRole.create(player2.user, userRole, true)
		}
		
		// EQUIPO DE PLAYER 2 DE PRUEBA --
		
		Team equipo1 = new Team(
				name:	'Ciudadela Manda',
				namePlayTeam:	'Barcelona',
				owner:	player2.user
				)
		equipo1.addToPlayers(player2).save(failOnError: true)
		
		Team equipo2 = new Team(
				name:	'San Albeto Kpo',
				namePlayTeam:	'Napoli',
				owner:	player1.user
				)
		equipo2.addToPlayers(player1).save(failOnError: true)

		League league1 = new League(
				name: 'Torneo Inicial',
				console: 'PS3',
				gameName: 'FIFA 13',
				closed: false)
		
				league1.addToTeams(equipo1).save(failOnError: true)
				league1.addToTeams(equipo2).save(failOnError: true)	
	}
    def destroy = {
    }
}
