package mifixtureonline

class Team {
	String name
	String namePlayTeam
	User   owner
	static hasMany = [players:Player]
	
    static constraints = {
		name blank:false
    }
}
