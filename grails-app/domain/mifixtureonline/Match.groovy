package mifixtureonline

class Match {
	static belongsTo = [homeTeam:Team,awayTeam:Team] 
	int scoreAway
	int scoreHome
	int yellowCardHome
	int yellowCardAway
	int redCardHome
	int redCardAway
	int scorePenaltiesAway
	int scorePenaltiesHome
	boolean penaltiesDefinition
	
    static constraints = {
    }
}
