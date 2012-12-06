package mifixtureonline

class League {
	String name
	String console
	String gameName

	boolean closed
	static belongsTo = [Team]
	static hasMany = [teams:Team, matchs:Match]
	
    static constraints = {
		name blank : false
    }
}
