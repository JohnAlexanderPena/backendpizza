
Pizzaplace.create(name: "Dumbo Pizza", address: "81 Prospect Place, Brooklyn, NY", long: 40.700885000, lat: -73.987448000, average_rating: 4, zipcode: 10009)
Pizzaplace.create(name: "Champion Pizza", address: "2 W 14th NY, NY", long: 73.994040000, lat: 40.736020000, average_rating: 3, zipcode: 10014)
Pizzaplace.create(name: "Champion Pizza", address: "2 E 24 NY, NY", long: 76.994040000, lat: 20.736020000, average_rating: 3, zipcode: 10012)
Pizzaplace.create(name: "Champion Pizza", address: "21 W 24th NY, NY", long: 60.994040000, lat: 30.736020000, average_rating: 3, zipcode: 10004)


User.create(username: "John Pie")
User.create(username: "Johanna Pie")
User.create(username: "Rabbit Pie")
User.create(username: "Wendall Pie")



Review.create(rating: 4, content: "Cheap and easy just how I like it ;)", user_id: 2, pizzaplace_id: 1)
Review.create(rating: 5, content: "Nice place and also $2 beers!", user_id: 2, pizzaplace_id: 2)
Review.create(rating: 3, content: "I love it, best dollar pizza out there!", user_id: 1, pizzaplace_id: 2)
