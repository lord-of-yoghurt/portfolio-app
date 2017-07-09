# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "My Blog Post no. #{blog}",
    body: "Bacon ipsum dolor amet flank pig fatback, tenderloin hamburger pork belly sausage. Rump tail drumstick spare ribs jerky, andouille filet mignon ground round pork chop. Salami kielbasa t-bone spare ribs prosciutto. Leberkas swine porchetta sirloin, corned beef ham hock cupim burgdoggen landjaeger spare ribs drumstick. Kielbasa andouille landjaeger short loin, chuck salami prosciutto tri-tip ribeye pork loin fatback."
  )
end

puts "created 10 blog posts!"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "created 5 skills!"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item no. #{portfolio_item}",
    subtitle: "Check out this cool website I made",
    body: "Rump venison filet mignon landjaeger short ribs turkey. Tail kevin sausage filet mignon beef ribs jerky ham hock bresaola sirloin t-bone pastrami beef prosciutto. Pork belly t-bone ham cow. Venison shank tri-tip, kevin beef ribs beef salami burgdoggen. Rump pork corned beef beef ribs.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image:"http://via.placeholder.com/350x200"
  )
end

puts "created 9 portfolio items!"
