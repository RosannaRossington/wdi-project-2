User.destroy_all
Recommendation.destroy_all

u1 = User.create!(email: "rosie@rosie.com",  
                  username: "RoRo", 
                  first_name: "Rosie", 
                  last_name: "Rossington", 
                  image: "http://static.rogerebert.com/redactor_assets/pictures/far-flung-correspondents/a-film-improved-by-butchering/cinema_paradiso_toto_smile_peak.jpg", 
                  )

u2 = User.create!(email: "jessie@jessie.com", 
                  username: "JeRo", 
                  first_name: "jessie", 
                  last_name: "Rossington", 
                  image: "https://s-media-cache-ak0.pinimg.com/236x/e1/20/bd/e120bdd19abb5f5e51ffca8ff7e1b94f.jpg", 
                  )

