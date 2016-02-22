puts "Starting"

andrew = User.new(username: "Andrew", email: "andrew@reid.com", uid: "1", provider: "Git", password: "123", password_confirmation: "123")
adam = User.new(username: "Adam", email: "adam@may.com", uid: "2", provider: "Git", password: "123", password_confirmation: "123")
antoin = User.new(username: "Antoin", email: "antoin@campbell.com", uid: "3", provider: "Git", password: "123", password_confirmation: "123")

puts "Users create" if andrew.save && adam.save && antoin.save

project_1 = Project.new(user_id: 1, name: "Uber for Cats", github_link: "http://www.example.com/1", description: "You know, it's like Uber, but for cats. Because the market demands it.")
project_2 = Project.new(user_id: 1, name: "Corn Blaster", github_link: "http://www.example.com/3", description: "A social hub for corn-integrated agile development", state: "inactive")

puts "Created Andrew's projects" if project_1.save && project_2.save

project_3 = Project.new(user_id: 2, name: "BlockFeed", github_link: "http://www.example.com/4", description: "Feed your blocks.")
project_4 = Project.new(user_id: 2, name: "Edifi", github_link: "http://www.example.com/6", description: "A social platform for connecting people who want to teach hard skills with people who want to learn 'em.")

puts "Created Adam's projects" if project_3.save && project_4.save

project_5 = Project.new(user_id: 3, name: "WikiVisual", github_link: "http://www.example.com/2", description: "You know, it's like Wikipedia, but for visions. You know, a catalogue of your halucinations.")
project_6 = Project.new(user_id: 3, name: "Digital Pond", github_link: "http://www.example.com/5", description: "Small scale website hosting platform", state: "inactive")

puts "Created Antoin's projects" if project_5.save && project_6.save

story_1 = Story.new(project_id: 1, name: "Cat Show Page", description: "As a user I should see cats because adorable", points: 3)
story_2 = Story.new(project_id: 2, name: "Visualize Corn Ripeness", description: "As a user I should see ripeness of corn for more agility", points: 2)
story_3 = Story.new(project_id: 3, name: "Articles Show", description: "As a user I should see articles because information", points: 3)
story_4 = Story.new(project_id: 4, name: "Integrate Video Chat", description: "As a user I should be able to videochat because apparently this was not enough work", points: 8)
story_5 = Story.new(project_id: 5, name: "Make visuals", description: "As a user I should be able to see visuals because apparently this was not enough work", points: 3)
story_6 = Story.new(project_id: 6, name: "Reassign pond values", description: "As a user I should be able to reassign pond values because this is a thing", points: 3)

puts "Created stories" if story_1.save && story_2.save && story_3.save && story_4.save && story_5.save && story_6.save

tag_1 = Tag.new(name: "Ruby")
tag_2 = Tag.new(name: "Rails")
tag_3 = Tag.new(name: "JavaScript")
tag_4 = Tag.new(name: "Ember")
tag_5 = Tag.new(name: "CSS")

puts "Created Tags" if tag_1.save && tag_2.save && tag_3.save && tag_4.save && tag_5.save

bookmark_1 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 1")
bookmark_2 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 2")
bookmark_3 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 3")
bookmark_4 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 4")
bookmark_5 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 5")
bookmark_6 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 6")
bookmark_7 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 7")
bookmark_8 = Bookmark.new(link: "www.link.com/1", title: "Bookmark 8")

puts "Created Bookmarks" if bookmark_8.save && bookmark_7.save && bookmark_6.save && bookmark_5.save && bookmark_4.save && bookmark_3.save && bookmark_2.save && bookmark_1.save

bookmark_tag_1 = BookmarkTag.new(tag_id: 1, bookmark_id: 2)
bookmark_tag_2 = BookmarkTag.new(tag_id: 2, bookmark_id: 1)
bookmark_tag_3 = BookmarkTag.new(tag_id: 3, bookmark_id: 8)
bookmark_tag_4 = BookmarkTag.new(tag_id: 4, bookmark_id: 6)
bookmark_tag_5 = BookmarkTag.new(tag_id: 5, bookmark_id: 7)
bookmark_tag_6 = BookmarkTag.new(tag_id: 1, bookmark_id: 3)

puts "Created Bookmark_Tags" if bookmark_tag_1.save && bookmark_tag_2.save && bookmark_tag_3.save && bookmark_tag_4.save && bookmark_tag_5.save && bookmark_tag_6.save

project_bookmark_1 = ProjectBookmark.new(project_id: 1, bookmark_id: 8)
project_bookmark_2 = ProjectBookmark.new(project_id: 2, bookmark_id: 7)
project_bookmark_3 = ProjectBookmark.new(project_id: 3, bookmark_id: 6)
project_bookmark_4 = ProjectBookmark.new(project_id: 4, bookmark_id: 5)
project_bookmark_5 = ProjectBookmark.new(project_id: 5, bookmark_id: 4)
project_bookmark_6 = ProjectBookmark.new(project_id: 6, bookmark_id: 3)

puts "Created Project Bookmarks" if project_bookmark_1.save && project_bookmark_2.save && project_bookmark_3.save && project_bookmark_4.save && project_bookmark_5.save && project_bookmark_6.save

snippet_1 = Snippet.new(code: "This will be code", user_id: 1, project_id: 1)
snippet_2 = Snippet.new(code: "This will be code", user_id: 1, project_id: 2)
snippet_3 = Snippet.new(code: "This will be code", user_id: 2, project_id: 3)
snippet_4 = Snippet.new(code: "This will be code", user_id: 2, project_id: 4)
snippet_5 = Snippet.new(code: "This will be code", user_id: 3, project_id: 5)
snippet_6 = Snippet.new(code: "This will be code", user_id: 3, project_id: 6)

puts "Created snippets" if snippet_1.save && snippet_2.save && snippet_3.save && snippet_4.save && snippet_5.save && snippet_6.save

puts "Saved Users Again" if andrew.save && adam.save && antoin.save

puts "Saved projects again" if project_1.save && project_2.save && project_3.save && project_4.save && project_5.save && project_6.save

puts "All done."
