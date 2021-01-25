# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
   User.create( name: 'Jonathan Bleibdrey' , email:"jonbleibdrey@fun.com", password_digest:"123456789" )   
   Review.create( title: 'best ever' , description:"it was the best of times it was the worst of times", rating: 2 )   
    Audible.create( title: 'fun way to learn math' , by:"jonbleibdrey", language:"english", audio:"some file",review_id:1, user_id:1 )   

   
