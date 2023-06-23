# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'lazer', description:'momentos de lazer do usuário')
Post.create(title: 'viagem para minas', content: 'fotos da viagem')
Feedback.create(like:1)
Feedback.create(like:1)  #1=like, 0=dislike
Comentary.create(content:"massa a viagem!!")
Comentary.create(content:"Adoro minas s2")

Category.create(name: 'estudo', description:'material de estudo')
Post.create(title: 'aula de models', content: 'slides da aula')
Feedback.create(like:1)
Feedback.create(like:0)
Comentary.create(content:"continue o bom trabalho!")
Comentary.create(content:"errou no teste do controller de feedback!!:(")


Category.create(name: 'documentos', description:'qualquer documento importante')
Post.create(title: 'TCC', content: 'PDF gigante')
Feedback.create(like:0)
Feedback.create(like:0)
Comentary.create(content:"vai formar nunca!")
Comentary.create(content:"0")

