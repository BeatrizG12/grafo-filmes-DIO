// =====================
// USERS
UNWIND range(1,10) AS id
CREATE (:User {id: id, name: "User_" + id});

// =====================
// MOVIES & SERIES
CREATE
(:Movie {id: 101, title: "Inception", release_year: 2010}),
(:Movie {id: 102, title: "Interstellar", release_year: 2014}),
(:Movie {id: 103, title: "The Matrix", release_year: 1999}),
(:Movie {id: 104, title: "Fight Club", release_year: 1999}),
(:Movie {id: 105, title: "The Godfather", release_year: 1972}),

(:Series {id: 201, title: "Dark", seasons: 3}),
(:Series {id: 202, title: "Breaking Bad", seasons: 5}),
(:Series {id: 203, title: "Stranger Things", seasons: 4}),
(:Series {id: 204, title: "The Boys", seasons: 4}),
(:Series {id: 205, title: "Chernobyl", seasons: 1});

// =====================
// GENRES
CREATE
(:Genre {name: "Sci-Fi"}),
(:Genre {name: "Drama"}),
(:Genre {name: "Thriller"}),
(:Genre {name: "Action"});

// =====================
// ACTORS & DIRECTORS
CREATE
(:Actor {id: 301, name: "Leonardo DiCaprio"}),
(:Actor {id: 302, name: "Keanu Reeves"}),
(:Actor {id: 303, name: "Bryan Cranston"}),

(:Director {id: 401, name: "Christopher Nolan"}),
(:Director {id: 402, name: "Lana Wachowski"});

