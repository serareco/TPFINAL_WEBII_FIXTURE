package mifixtureonline.actions

import mifixtureonline.Admin

class Post {
	String text
	Date date
	int importance
	static belongsTo = [owner:Admin]
	
    static constraints = {
		text(size: 1..200, blank: false)
    }
}
