
date=Date.new(2015,05,01)
User.create!(email: 'admin@rapp.com', password:'123123')
Profile.create!(user: User.last, role:'admin',name: 'admin', address:'asdf',mobile:'01085258525',birth:date)


User.create!(email: 'editor1@rapp.com',password:'123123')
Profile.create!(user: User.last, role:'editor',name: 'editor_a', address:'asdf',mobile:'01077777777',birth:date)

User.create!(email: 'editor2@rapp.com', password:'123123')
Profile.create!(user: User.last, role:'editor',name: 'editor_b', address:'asdf',mobile:'01074111111',birth:date)

User.create!(email: 'editor3@rapp.com', password:'123123')
Profile.create!(user: User.last, role:'editor',name: 'editor_c', address:'asdf',mobile:'01055555555',birth:date)
