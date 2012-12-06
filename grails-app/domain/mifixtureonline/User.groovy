package mifixtureonline

class User {

	transient springSecurityService
	
	String username
	String password
	String email
	String name
	String lastname
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	static belongsTo = [Player]
	static constraints = {
		username blank: false, unique: true
		password blank: false
		name blank: false
		email mail:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
