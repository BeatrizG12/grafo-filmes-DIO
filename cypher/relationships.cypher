
// CONTENT RELATIONSHIPS
// =====================
MATCH (m:Movie {title: "Inception"}), (g:Genre {name: "Sci-Fi"})
CREATE (m)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Dark"}), (g:Genre {name: "Sci-Fi"})
CREATE (s)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Fight Club"}), (g:Genre {name: "Drama"})
CREATE (m)-[:IN_GENRE]->(g);


// ACTING & DIRECTING
// =====================
MATCH (a:Actor {name: "Leonardo DiCaprio"}), (m:Movie {title: "Inception"})
CREATE (a)-[:ACTED_IN]->(m);

MATCH (d:Director {name: "Christopher Nolan"}), (m:Movie {title: "Inception"})
CREATE (d)-[:DIRECTED]->(m);

MATCH (a:Actor {name: "Keanu Reeves"}), (m:Movie {title: "The Matrix"})
CREATE (a)-[:ACTED_IN]->(m);

// =====================
// USER INTERACTIONS

MATCH (u:User), (m:Movie)
WHERE u.id <= 5 AND m.id = 101
CREATE (u)-[:WATCHED {rating: 5}]->(m);

MATCH (u:User), (s:Series)
WHERE u.id > 5 AND s.id = 201
CREATE (u)-[:WATCHED {rating: 4}]->(s);

