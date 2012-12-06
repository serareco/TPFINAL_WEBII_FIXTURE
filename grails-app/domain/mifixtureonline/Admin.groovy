package mifixtureonline

import mifixtureonline.actions.Post

class Admin {
	User user
	static hasMany = [posts:Post]
	
    static constraints = {
		posts(nullable:true)
    }
}
