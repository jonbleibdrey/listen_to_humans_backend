# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
   
   Review.create( title: 'best ever' , description:"it was the best of times it was the worst of times", rating: 2, audible_id:1 )   
    Audible.create( title: 'fun way to learn math' , by:"jonbleibdrey", language:"english", audio_file:"some file" )   

   
