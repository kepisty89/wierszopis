# Create users
user_arybak = User.create!(nickname: 'arybak', hashed_password: '9119d6a820c5bd916857b03a71318176ad57bfb7', email: 'arybak@example.com')
user_dlandows = User.create!(nickname: 'dlandows', hashed_password: '9119d6a820c5bd916857b03a71318176ad57bfb7', email: 'dlandows@example.com')
user_lkepinsk = User.create!(nickname: 'lkepinsk', hashed_password: '9119d6a820c5bd916857b03a71318176ad57bfb7', email: 'lkepinsk@example.com')
user_admin = User.create!(nickname: 'admin', hashed_password: '9119d6a820c5bd916857b03a71318176ad57bfb7', email: 'admin@example.com')

# Create profiles
user_arybak.create_profile!(name: 'Artur', surname: 'Rybak', place: 'Lipowa Tucholska', birthday: '1989-07-23', gender: 'male', site: 'http://sigma.ug.edu.pl/~arybak/', bio: 'To mlody i zdolny artysta wywodzacy sie z Borow Tucholskich')
user_dlandows.create_profile!(name: 'Daniel', surname: 'Landowski', place: 'Czersk', gender: 'male')
user_lkepinsk.create_profile!(name: 'Łukasz', surname: 'Kępiński', place: 'Mrągowo', gender: 'male')
user_admin.create_profile!(name: 'Admin', surname: 'Admin', place: 'Adminland', gender: 'female')

# Create chapters
chapter_arybak = user_arybak.chapters.create!(name: 'Wiersze', description: 'Wiersze Artura Rybaka')
chapter_dlandows = user_dlandows.chapters.create!(name: 'Sny', description: 'Pierwszy zbiór wierszy Daniela Landowskiego')
chapter_lkepinsk = user_lkepinsk.chapters.create!(name: 'Takie', description: 'Takie dla popisu')
chapter_admin = user_admin.chapters.create!(name: 'Takie', description: 'Takie dla popisu')

# Create poems
chapter_arybak.poems.create!(title: 'Wiosna', body: 'Wiosna, wiosna, ach to ty', composed_at: '2010-12-12', user: user_arybak)
chapter_arybak.poems.create!(title: 'Rano', body: 'A rano znów czeka mnie to samo', composed_at: '2010-12-13', user: user_arybak)
chapter_arybak.poems.create!(title: 'Południe', body: 'Nie wspominając południa, czekałbym aż do grudnia', composed_at: '2010-12-14', user: user_arybak)
chapter_arybak.poems.create!(title: 'Noc', body: 'A dodatkowo w nocy, czekałbym aż kot wskoczy', composed_at: '2010-12-15', user: user_arybak)
chapter_dlandows.poems.create!(title: 'Zima', body: 'Zima wszystko się zaczyna', composed_at: '2010-11-13', user: user_dlandows)
chapter_dlandows.poems.create!(title: 'Lato', body: 'Lato, lato, co ty na to', composed_at: '2010-11-17', user: user_dlandows)
chapter_dlandows.poems.create!(title: 'Jesień', body: 'Jesienią sady się rumienią', composed_at: '2010-11-22', user: user_dlandows)
chapter_lkepinsk.poems.create!(title: 'Połnoc', body: 'Połnocą idąc, szukając blasku, zostaję sam, jak dłoń w potrzasku', composed_at: '2010-10-09', user: user_lkepinsk)
chapter_lkepinsk.poems.create!(title: 'Południe', body: 'Za chwilę ci kolego zadudnię, w południe', composed_at: '2010-12-19', user: user_lkepinsk)
