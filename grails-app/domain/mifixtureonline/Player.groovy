package mifixtureonline

class Player {
	User user
	static hasMany = [teams:Team]
	static belongsTo = [Team]
    static constraints = {
		teams(nullable:true)
    }
}
