# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(id:'111', title:'Spaghetti', description:'HOZZÁVALÓK
40 dkg spagetti
4 dkg parmezán
A mártáshoz:
1 fej  hagyma
1 db  sárgarépa
zellerzöld
1 db húsleveskocka
0,5 dl olaj
5 dkg húsos szalonna (felcsíkozva)
25 dkg marhahús (darált)
7 dkg paradicsompüré
1 db babérlevél
só
bors
cukor

ELKÉSZÍTÉS
A hagymát és a sárgarépát megtisztítjuk, kis kockákra aprítjuk, a zeller zöldjét finomra vágjuk.
Felhevítjük az olajat, kicsit megpirítjuk benne a zöldséget és a szalonnát. 2 perc után hozzáadjuk a
babérlevelet, a darált marhahúst, sózzuk-borsozzuk, hozzáadjuk a paradicsompürét és időként megkeverve 5 pecig pároljuk.
Együtt pirítjuk, majd 1 dl vizet hozzáöntve puhára pároljuk 1 óra alatt.
A spagettit marokra fogva beleengedjük a végét a forró vízbe, s ahogy megpuhul,
fokozatosan utánaengedjük, mindaddig, amíg a csomó vége belecsúszik a vízbe. Ha megfőtt, leszűrjük,
tányérokban elosztjuk, a húsos mártást a tetejükre kanalazzuk. Reszelt sajttal megszórva kínáljuk.')

Comment.create(id:'111', commenter:'Gertrudis', body:'Even this pasta was straight until it got wet', recipe_id:'111')
Comment.create(id:'112', commenter:'Béla', body:'Úgy néz ki mint a vér.', recipe_id:'111')
Comment.create(id:'113', commenter:'Sam Porter Bridges(who bridges people)', body:'I build bridges', recipe_id:'111')

RecipesTag.create(id:'111', recipe_id:'111', tag_id:'111')
RecipesTag.create(id:'112', recipe_id:'111', tag_id:'112')

Tag.create(id:'111', name:'Tészta')
Tag.create(id:'112', name:'Húsos')

Recipe.create(id:'112', title:'Brassói aprópecsenye', description:'HOZZÁVALÓK
30 dkg sertés szűzpecsenye
1 db paprika
1 db paradicsom
40 dkg burgonya
1 fej  vöröshagyma
2-3 gerezd fok hagyma
5 dkg szalonna
étolaj (vagy kókuszolaj)
só
1 ek mangalica zsír
bors
pirospaprika

ELKÉSZÍTÉS
Megmossuk és szárazra töröljük a húst, lehártyázzuk, szeletekre, majd 2 cm-es kockákra vágjuk. Megpucoljuk a burgonyát.
Apróra vágjuk a megtisztított hagymát és a fokhagymát, a burgonyát 2-3 cm-es, a szalonnát, a paprikát, a paradicsomot 1 cm-es kockákra vágjuk.
A burgonyát felhevített olajon vagy fritőzben aranybarnára sütjük, megsózzuk, majd papírtörlőre szedjük, és félretesszük.
Egy vastag falú serpenyőben felmelegítjük a mangalica zsírt, hozzáadjuk a szalonnát és kisütjük. Beletesszük a hagymát, és
közepes lángon üvegesre pirítjuk, majd a húst, és ízlés szerint megsózzuk, megborsozzuk.
Amikor a hús már majdnem kész, hozzáadjuk a felkockázott paradicsomot, a paprikát, és addig pirítjuk, amíg a hús szép piros nem lesz.
A legvégén hozzáadjuk a pirospaprikát és 1 dl vizet. Fél percet forraljuk nagy lángon.
A kész ragut a sült krumplira halmozzuk, átkeverjük, és frissen tálaljuk.')

Comment.create(id:'114', commenter:'Peti', body:'Mint a nagyanyámé', recipe_id:'112')
Comment.create(id:'115', commenter:'Big Chungus', body:'Please laugh', recipe_id:'112')
Comment.create(id:'116', commenter:'Doge', body:'What do you mean its small meat', recipe_id:'112')

RecipesTag.create(id:'113', recipe_id:'112', tag_id:'113')
RecipesTag.create(id:'114', recipe_id:'112', tag_id:'114')

Tag.create(id:'113', name:'Krumplis')
Tag.create(id:'114', name:'Húsos')