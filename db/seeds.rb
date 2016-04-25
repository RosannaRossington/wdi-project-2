User.destroy_all
Recommendation.destroy_all

u1 = User.create!(email: "rosie@rosie.com", 
                  password: "password",
                  username: "RoRo", 
                  first_name: "Rosie", 
                  last_name: "Rossington", 
                  image: "http://static.rogerebert.com/redactor_assets/pictures/far-flung-correspondents/a-film-improved-by-butchering/cinema_paradiso_toto_smile_peak.jpg", 
                  )

u2 = User.create!(email: "jessie@jessie.com", 
                  password: "password",
                  username: "JeRo", 
                  first_name: "jessie", 
                  last_name: "Rossington", 
                  image: "https://s-media-cache-ak0.pinimg.com/236x/e1/20/bd/e120bdd19abb5f5e51ffca8ff7e1b94f.jpg", 
                  )

r1 = Recommendation.create!(message: "Hey, I saw this and thought of you! What do you think?",
                         product_url: "http://www.asos.com/Self-Portrait/Self-Portrait-Lace-Trimmed-Mini-Dress-with-Strap-Back-Detail/Prod/pgeproduct.aspx?iid=6339345&CTARef=Recently%20Viewed&WT.ac=rec_viewed&CTAref=Recently+Viewed",
                         sender_id: u1.id,
                         receiver_id: u2.id)

c1 = Comment.create!(recommendation_id: r1.id,
                         comment: "Thanks! I love it.",
                         sender_id: u2.id,
                         receiver_id: u1.id)