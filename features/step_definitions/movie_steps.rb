# Add a declarative step here for populating the DB with movies.
def split_list(list)
  list.gsub(/ /, "").split(/,/)
end


Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  page.body.index(e1).should < page.body.index(e2)
end

Then /I should only see the following movies/ do |movies_table|
  movies_hash = movies_table.hashes
  #subtract 1 row because of the header
  (page.all('table#movies tr').count - 1).should == movies_hash.count
  movies_hash.each do |movie|
    step "I should see \"#{movie['title']}\""
    #step "I should see #{movie['rating']}"
    #step "I should see #{movie['date']}"
  end
end

Then /I should see all of the movies/ do
  Movie.all.each do |movie|
    step "I should see \"#{movie.title}\""
  end
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  split_list(rating_list).each do |rating| 
    step "I #{uncheck}check \"ratings_#{rating}\""
  end 
end

When /I (un)?check all of the ratings/ do |uncheck|
  Movie.all_ratings.each do |rating|
    step "I #{uncheck}check \"ratings_#{rating}\""
  end
end

Then /I should see the following ratings (un)?checked: (.*)/ do |uncheck, rating_list|
  if (uncheck == "un") 
    should = "should not" 
  else 
    should = "should"
  end
  split_list(rating_list).each do |rating|
    step "the \"ratings_#{rating}\" checkbox #{should} be checked"
  end
end
