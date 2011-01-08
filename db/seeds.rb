# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

users = User.create([{ :nickname => 'admin', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin@example.com'},
                     { :nickname => 'arybak', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'arybak@example.com'},
                     { :nickname => 'dlandows', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'dlandows@example.com'},
                     { :nickname => 'lkepinsk', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'lkepinsk@example.com'},
                     { :nickname => 'admin2', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin2@example.com'},
                     { :nickname => 'admin3', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin3@example.com'},
                     { :nickname => 'admin4', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin4@example.com'},
                     { :nickname => 'admin5', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin5@example.com'},
                     { :nickname => 'admin6', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin6@example.com'},
                     { :nickname => 'admin7', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin7@example.com'},
                     { :nickname => 'admin8', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin8@example.com'},
                     { :nickname => 'admin9', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin9@example.com'},
                     { :nickname => 'admin10', :hashed_password => '9119d6a820c5bd916857b03a71318176ad57bfb7', :email => 'admin10@example.com'}])

profiles = Profile.create([{:name => 'Artur', :surname => 'Rybak', :place => 'Lipowa Tucholska', :birthday => '1989-07-23', :gender => 'male', :site => 'http://sigma.ug.edu.pl/~arybak/', :bio => 'To mlody i zdolny artysta wywodzacy sie z Borow Tucholskich', :user_id => User.find_by_nickname("arybak")},
                           {:name => 'Daniel', :place => 'Czersk', :gender => 'male', :user_id => User.find_by_nickname("dlandows")},
                           {:name => 'Lukasz', :place => 'Mragowo', :gender => 'male', :user_id => User.find_by_nickname("lkepinsk")},
                           {:user_id =>  User.find_by_nickname("admin")},
                           {:user_id =>  User.find_by_nickname("admin2")},
                           {:user_id =>  User.find_by_nickname("admin3")},
                           {:user_id =>  User.find_by_nickname("admin4")},
                           {:user_id =>  User.find_by_nickname("admin5")},
                           {:user_id =>  User.find_by_nickname("admin6")},
                           {:user_id =>  User.find_by_nickname("admin7")},
                           {:user_id =>  User.find_by_nickname("admin8")},
                           {:user_id =>  User.find_by_nickname("admin9")},
                           {:user_id =>  User.find_by_nickname("admin10")}])

chapters = Chapter.create([{:name => 'Takie', :description => 'Takie dla popisu', :user_id =>  User.find_by_nickname("arybak")},
                           {:name => 'Sobie', :description => 'Takie dla zabawy', :user_id =>  User.find_by_nickname("arybak")},
                           {:name => '49', :description => 'W trakcie i po fakcie. To co czujesz, gdy jestes i to co czujesz, gdy nie ma juz niczego... 49 - liczba magii i liczba smutku. To co czujesz, gdy nie ma ratunku... Mysl tak czysta... Twoje oczy wpatrzone we mnie...', :user_id =>  User.find_by_nickname("dlandows")},
                           {:name => 'sny', :description => '"Sny" sa moim pierwszym zbiorem wierszy. 30 utworow podzielilem na 6 rozdzialow: Ja, Ty, Wiatr, Sny, Zmysly, Czas. Ponizej znajdziesz wszystkie wiersze z tego tomiku...', :user_id =>  User.find_by_nickname("dlandows")},
                           {:name => 'Kuku', :description => 'Takie dla popisu', :user_id =>  User.find_by_nickname("lkepinsk")},
                           {:name => 'Ruku', :description => 'Takie dla popisu', :user_id =>  User.find_by_nickname("lkepinsk")},
                           {:name => 'Tatatata', :description => 'Takie dla popisu', :user_id =>  User.find_by_nickname("admin")},
                           {:name => 'Dadadada', :description => 'Takie dla popisu', :user_id =>  User.find_by_nickname("admin")}])

poems = Poem.create([{:title => 'Wieczorem', :body => 'Gdy wieczorem idziesz spac, wez wyluzuj, daj mi stac', :composed_at => '2010-12-12', :user_id => User.find_by_nickname("arybak"), :chapter_id => User.find_by_nickname("arybak").chapters.first},
                     {:title => 'Rano', :body => 'A rano znow czeka mnie to samo', :composed_at => '2010-12-13', :user_id => User.find_by_nickname("arybak"), :chapter_id => User.find_by_nickname("arybak").chapters.first},
                     {:title => 'Poludnie', :body => 'Nie wspominajac poludnia, czekalbym az do grudnia', :composed_at => '2010-12-14', :user_id => User.find_by_nickname("arybak"), :chapter_id => User.find_by_nickname("arybak").chapters.first},
                     {:title => 'Noc', :body => 'A dodatkowo w nocy, czekalbym az kot wskoczy', :composed_at => '2010-12-15', :user_id => User.find_by_nickname("arybak"), :chapter_id => User.find_by_nickname("arybak").chapters.first},
                     {:title => 'Zima', :body => 'Zima wszystko sie zaczyna', :composed_at => '2010-11-13', :user_id => User.find_by_nickname("dlandows"), :chapter_id => User.find_by_nickname("dlandows").chapters.first},
                     {:title => 'Lato', :body => 'Lato, lato, co ty na to', :composed_at => '2010-11-17', :user_id => User.find_by_nickname("dlandows"), :chapter_id => User.find_by_nickname("dlandows").chapters.first},
                     {:title => 'Jesien', :body => 'Jesienia sady sie rumienia', :composed_at => '2010-11-22', :user_id => User.find_by_nickname("dlandows"), :chapter_id => User.find_by_nickname("dlandows").chapters.first},
                     {:title => 'Polnoc', :body => 'Polnoca idac, szukajac blasku zostaje sam, jak dlon w potrzasku', :composed_at => '2010-10-09', :user_id => User.find_by_nickname("lkepinsk"), :chapter_id => User.find_by_nickname("lkepinsk").chapters.first},
                     {:title => 'Poludnie', :body => 'Za chwile ci kolego zadudnie w poludnie', :composed_at => '2010-12-19', :user_id => User.find_by_nickname("lkepinsk"), :chapter_id => User.find_by_nickname("lkepinsk").chapters.first}])
