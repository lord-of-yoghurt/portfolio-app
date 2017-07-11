3.times do |topic|
  Topic.create!(
    title: "Topic no. #{topic + 1}"
  )
end

puts "created 3 topics!"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post no. #{blog}",
    body: "Bacon ipsum dolor amet flank pig fatback, tenderloin hamburger pork belly sausage. Rump tail drumstick spare ribs jerky, andouille filet mignon ground round pork chop. Salami kielbasa t-bone spare ribs prosciutto. Leberkas swine porchetta sirloin, corned beef ham hock cupim burgdoggen landjaeger spare ribs drumstick. Kielbasa andouille landjaeger short loin, chuck salami prosciutto tri-tip ribeye pork loin fatback.",
    topic_id: Topic.last.id
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

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item no. #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Rump venison filet mignon landjaeger short ribs turkey. Tail kevin sausage filet mignon beef ribs jerky ham hock bresaola sirloin t-bone pastrami beef prosciutto. Pork belly t-bone ham cow. Venison shank tri-tip, kevin beef ribs beef salami burgdoggen. Rump pork corned beef beef ribs.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image:"http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item no. #{portfolio_item}",
    subtitle: "Angular",
    body: "Rump venison filet mignon landjaeger short ribs turkey. Tail kevin sausage filet mignon beef ribs jerky ham hock bresaola sirloin t-bone pastrami beef prosciutto. Pork belly t-bone ham cow. Venison shank tri-tip, kevin beef ribs beef salami burgdoggen. Rump pork corned beef beef ribs.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image:"http://via.placeholder.com/350x200"
  )
end

puts "created 9 portfolio items!"
