unless User.any?

  user = User.create(name: 'Bob', email: 'bob@example.com')
  todolist = user.todolists.create(name: 'My Wishlist')
  todolist.affairs.create([{name: 'сдать руби', description: '...'},
                          {name: 'не отчислиться'}])
  user.save
end
