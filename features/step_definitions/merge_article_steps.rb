Given /^the following articles exist:$/ do |table|
  table.hashes.each do |article|
     Article.create(article)
  end
end

Then /^The article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body should eq body
end