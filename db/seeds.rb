# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

neighborhoods = Neighborhood.create([
  {title: "Adams Morgan", description: "A culturally diverse neighborhood in NorthWest Washington D.C, Adams Morgan is a major nightlife are with many bars and clubs. Don't let the nightlife deter you - much of the neighborhood is composed of elegant 19th and early 20th century row houses. With access to many buslines and a short distance to the Woodley Park Metro, Adams Morgan makes for an easy communte to anywhere in the D.C proper.   "},
  {title: "Dupont Circle", description: "The Dupont Circle neighborhood, made famous its traffic circle namesake, is one of the prettiest neighborhoods in D.C. With its own metro stop and multiple bus lines, Dupont makes for an easy commute to most places in D.C Known for its vibrant nightlife and versatile dining options, Dupont is one of D.C's most traveled neighborhoods."},
  {title: "Columbia Heights", description: "An up-and-coming neighborhood in DC proper, Columbia Heights offers the best of city living. Walking distance to Rock Creek Park, Columbia Heights has many living options for the single person or family. Row houses, apartments, single-family homes, Columbia Heights has it all."},
  {title: "Capitol Hill", description: "Capitol Hill's landmarks include the US Capitol, the Seante and House buildings, the Supreme Court Building, and more of DC's most recognized landmarks. Moving to D.C for an internship or government job? Capitol Hill is the place for you. "},
  {title: "Foggy Bottom", description: "An up-and-coming neighborhood in DC proper, the home to famous Amsterdam Falafel"},
  {title: "Georgetown", description: "An up-and-coming neighborhood in DC proper, the home to famous Amsterdam Falafel"},

  ])
