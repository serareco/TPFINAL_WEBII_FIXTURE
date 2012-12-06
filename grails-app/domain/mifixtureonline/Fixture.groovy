package mifixtureonline

class Fixture {
	private int _teamsCount
	private int _matchCountByWeek
	private int _teamsCountToFixture
	private int _weekGameCount
	private List<Team> _teams
	private int _totalMatchs
	
	private ArrayList _fixture = new ArrayList();
	
	static hasMany = [gamesWeeks:GameWeek]	
	
	def generate(League myLeague){	
		_teams = myLeague.teams
		_teamsCount = _teams.count //CANTIDAD DE EQUIPOS 
		_matchCountByWeek = Math.ceil(_teamsCount / 2) //CANTIDAD DE PARTIDOS POR FECHA
		_teamsCountToFixture =  _teamsCount + _teamsCount % 2 //CANTIDAD DE EQUIPOS USADOS PARA ARMAR EL FIXTURE
		_weekGameCount = _matchCountByWeek * 2 - 1 //CANTIDAD DE FECHAS DE JUEGO
		
		if(_teamsCount % 2){
			_teams.add(new Team (name:'Libre'))
		}
		
		// Lleno el indice A de cada elemento con numeros del numero 1
		// hasta llegar al maximo de fechas y vuelvo a comenzar en 1.
		// El ultimo numero puesto debe ser el maximo de fechas.-
		_totalMatchs = _matchCountByWeek * _weekGameCount
		for (int i=1; i <= _totalMatchs; i++){
			def column = i % _matchCountByWeek
			column = (column)? column : _matchCountByWeek
			def row = Math.ceil(i / _matchCountByWeek)
			def aux = i % _weekGameCount
			if(aux == 0){
				aux = _weekGameCount
			}
			
			Match myMatch = new Match(homeTeam:_teams.get(aux-1))
			def myGameWeek
			if(_fixture.get(row) != null){
				myGameWeek = _fixture.get(row)
			}else{
				myGameWeek = new ArrayList();
			}
			myGameWeek.add(column, matchs.add(myMatch))
			_fixture.add(row, myGameWeek)
		}
		
		// Lleno el primer elemento de cada fila con el ultimo equipo
		// o el equipo ficticio, si la cantidad de equipo es impar.
		
		/*
		 * for (int i=0; i <= _weekGameCount; i++){
			GameWeek myGamesWeeks = _fixture.get(i)
			myGamesWeeks.get(1).matchs
		}
		
		
		
		* 
		// Lleno el primer elemento de cada fila con el ultimo equipo
        // o el equipo ficticio, si la cantidad de equipo es impar.
        for ($f = 1; $f<= $this->_fechas; $f++) {
            $fixture[$f][1]['B']    = $this->_equipos[$this->_equiposFixture-1];
        }
        
		// Lleno el indice A de cada elemento con numeros del numero 1
        // hasta llegar al maximo de fechas y vuelvo a comenzar en 1.
        // El ultimo numero puesto debe ser el maximo de fechas.-
        
        $datos      = $this->_partidosXFechas * $this->_fechas;
        for ($f = 1; $f <= $datos; $f++) {
 
            $col        = $f % $this->_partidosXFechas;
            $col        = ($col != 0)? $col : $this->_partidosXFechas;
            $fila       = ceil ($f / $this->_partidosXFechas);
            $auxiliar   = $f % $this->_fechas;
            if ($auxiliar == 0) {
                $auxiliar = (int) $this->_fechas;
            }
            $fixture[$fila][$col]['A'] = $this->_equipos[$auxiliar-1];
        }
		**/
		
	}
}
