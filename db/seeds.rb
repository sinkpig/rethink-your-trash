# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# puts 'Deleting materials, users and trades'
# User.destroy_all
# Material.destroy_all
# Trade.destroy_all
# puts 'End'

puts 'Creating a person 1'
person1 = User.create!(name: "Milo", email: "test@test.com", password: "123123", password_confirmation: "123123",
                       address: "Avenida Paulista 1811 - Bela Vista, São Paulo", role: "person")
puts 'Creating a person 2'
person2 = User.create!(name: "Dani", email: "test1@test.com", password: "123123", password_confirmation: "123123",
                       address: "Rua Jericó, 193, Sumarezinho, São Paulo", role: "person")
puts 'Creating a person 3'
person3 = User.create!(name: "Patty", email: "test2@test.com", password: "123123", password_confirmation: "123123",
                       address: "Rua Manoel Dutra 595 - Bela Vista, São Paulo", role: "person")
puts 'Creating a person 4'
person4 = User.create!(name: "Vinny", email: "test3@test.com", password: "123123", password_confirmation: "123123",
                       address: "Alameda Ministro Rocha Azevedo 72, São Paulo", role: "person")
puts 'End'

puts 'Creating materials'
Material.create!(name: "Paper",
                 description: '<p>Paper recycling is the circular process of turning old waste paper into new paper,
                 this recycling and producing process is called papermaking. Paper is a 100% natural and
                 recyclable resource made of wood fibers. Therefore paper waste is the most important ingredient
                 for the process of creating new paper and cardboard products.</p>
                 <h5 class="text-primary">What paper can you recycle?</h5>
                 <ul class="recycle-list">
                   <li>Cardboard</li>
                   <li>Newspaper</li>
                   <li>Magazine</li>
                   <li>Catalogs</li>
                   <li>Paperboard boxes</li>
                   <li>White office paper</li>
                 </ul>
                 <h5 class="text-primary">What paper is not recyclable?</h5>
                 <ul class="recycle-list">
                   <li>Coated and treated paper</li>
                   <li>Receipts and other laser printed papers</li>
                   <li>Photos</li>
                   <li>Paper containing food waste</li>
                   <li>Towels, napkins, and tissue paper</li>
                   <li>Laminated paper, wax paper, and foil-coated paper</li>
                   <li>Paper that is soiled or contaminated with oil, grease, or chemicals</li>
                   <li>Used wallpaper containing glue residues</li>
                 </ul>')
Material.create!(name: "Plastic",
                 description: '<p>Plastic is a popular and highly versatile material, and we use a lot of it.
                 Re-using and recycling items as many times as possible can reduce our need to create new plastic.
                 Any plastic material with food residues on (or in) it cannot be recycled.
                 So, remember to always clean your recyclable products!</p>
                 <h6>What plastics can you recycle?</h6>
                 <ul class="recycle-list">
                   <li>Plastic bottles, pots, tubs and trays</li>
                   <li>Plastic bags and wrappings</li>
                   <li>Polystyrene foam</li>
                   <li>Shampoo bottles</li>
                   <li>Some car parts</li>
                 </ul>
                 <h6>What plastics are not recyclable?</h6>
                 <ul class="recycle-list">
                   <li>Plastic bags</li>
                   <li>Straws</li>
                   <li>Keyboards</li>
                   <li>Blister packaging</li>
                   <li>Thermoset plastics (epoxy, silicone, polyurethane and phenolic)</li>
                 </ul>')
Material.create!(name: "Metal",
                 description: %(<p>Scrap metal is one of the most valuable materials you can
                 recycle, and it encompasses so many consumer products. From appliances to
                 batteries to cans to clothes hangers, metal is everywhere in our homes.
                 Recycling metal is important to not only keep this limited supply material
                 out of landfills, but also because it can make you money.</p>
                 <h5 class="text-primary">What types of metal can you recycle?</h5>
                 <ul class="recycle-list">
                   <li>Aluminium</li>
                   <li>Brass</li>
                   <li>Copper</li>
                   <li>Gold</li>
                   <li>Lead</li>
                   <li>Silver</li>
                   <li>Steel</li>
                 </ul>
                 <h5 class="text-primary">What type of metals aren't recyclable?</h5>
                 <ul class="recycle-list">
                   <li>Radioactive material</li>
                   <li>Mercury</li>
                   <li>Lead</li>
                   <li>Contaminated cans</li>
                   <li>Household equipments</li>
                 </ul>))
Material.create!(name: "Batteries",
                 description: '<p>Recycling single-use batteries is an easy way to make the world a little
                 greener. Every battery contains some reusable material, whether rechargeable or single-use.
                 You can either take your batteries into a local store or recycling facility, or you can mail them
                 to a facility through a mail-in program. When you recycle your batteries, you help reduce soil
                 contamination and water pollution, so keep recycling and making the world a better place!</p>
                 <h5 class="text-primary">What types of batteries are recyclable?</h5>
                 <ul class="recycle-list">
                   <li>Absolyte Batteries</li>
                   <li>Alkaline Batteries</li>
                   <li>Lead Acid Batteries</li>
                   <li>Lithium-Ion Batteries</li>
                   <li>Nickel-Cadmium (NiCad) Batteries</li>
                   <li>Nickel-Metal Hydride (NiMh) Batteries</li>
                 </ul>
                 <h5 class="text-primary">What types of batteries arent recyclable?</h5>
                 <p>All batteries can be recycled</p>')
Material.create!(name: "Glass",
                 description: '<p>Glass is a 100% recyclable material made from three natural
                 ingredients - sand, soda ash and limestone. Making new containers from recycled glass not only
                 saves on these raw materials, but also helps reduce energy consumption and CO2 emissions. And the
                 best part? No matter how many times you recycle it, glass never loses its quality.</p>
                 <h5 class="text-primary">What types of glass can you recycle?</h5>
                 <ul class="recycle-list">
                   <li>Bottles of any colour</li>
                   <li>Jars of any colour</li>
                   <li>Cosmetics and perfume containers</li>
                   <li>Pharmaceutical packaging or vials</li>
                 </ul>
                 <h5 class="text-primary">What type of glass arent recyclable?</h5>
                 <ul class="recycle-list">
                   <li>Glass cookware</li>
                   <li>Light bulbs</li>
                   <li>Window glass</li>
                   <li>Drinking glasses and Vases</li>
                   <li>Nail varnish bottles</li>
                   <li>Mirrors</li>
                   <li>Spectacles</li>
                   <li>Crystal Glass</li>
                 </ul>')
Material.create!(name: "Organic",
                 description: '<p>Organic wastes are materials from living sources like plants, animals, and
                 microorganisms that are biodegradable and can be broken down into simpler organic molecules.</p>
                 <h5 class="text-primary">What organic materials can you recycle?</h5>
                 <ul class="recycle-list">
                   <li>Animal products</li>
                   <li>Vegetables and food leftovers</li>
                   <li>Fruit peelings</li>
                   <li>Gardening waste</li>
                   <li>Eggshells</li>
                   <li>Marc coffee and tea bags</li>
                   <li>Remains of crushed bread</li>
                   <li>Sawdust and wood chips</li>
                 </ul>
                 <h5 class="text-primary">What organic materials arent recyclable?</h5>
                 <ul class="recycle-list">
                   <li>Diapers</li>
                   <li>Hazardous Waste</li>
                   <li>Meat, fish, and bones</li>
                   <li>Dairy and eggs</li>
                   <li>Butter, cooking oil, animal fat, and grease</li>
                   <li>Baked goods and cooked grains</li>
                 </ul>')
Material.create!(name: "Clothes",
                 description: '<p>Before you throw out all your old clothes, look at the options
                 below and choose a more sustainable way to dispose of your old clothes.</p>
                 <h5 class="text-primary">How can you recycle clothes?</h5>
                 <ul class="recycle-list">
                   <li>Reuse</li>
                   <li>Upcycle</li>
                   <li>Recycle</li>
                   <li>Donate to second-hand stores</li>
                   <li>Resell your clothes</li>
                 </ul>')
Material.create!(name: "Electronics",
                 description: '<p>Electronic products are made from valuable resources and materials,
                 including metals, plastics, and glass, all of which require energy to mine and
                 manufacture. Donating or recycling consumer electronics conserves our natural resources
                 and avoids air and water pollution, as well as greenhouse gas emissions that are caused by
                 manufacturing virgin materials.</p>
                 <h5 class="text-primary">What electronics can you recycle?</h5>
                 <ul class="recycle-list">
                   <li>Cell phones and tablets</li>
                   <li>Computers</li>
                   <li>Televisions</li>
                   <li>Printers and scanners</li>
                   <li>Cameras, audio and video equipment</li>
                   <li>Appliances</li>
                 </ul>
                 <h5 class="text-primary">What electronics arent recyclable?</h5>
                 <ul class="recycle-list">
                   <li>Anything that contains lead or mercury</li>
                   <li>LCD televisions</li>
                   <li>Monitors and old TVs (pre-1991)</li>
                   <li>Cathode ray tube televisions</li>
                 </ul>')
Material.create!(name: "Carton",
                 description: '<p>Cartons like those used for milk, juice, soy or grain
                 milk and soup are recyclable. Curbside programs continue to increase their
                 carton recycling rate throughout the U.S., and there are drop-off and mail-in
                 options available as well. Despite the type, refrigerated or shelf stable, cartons
                 are a valuable source of material to make products like tissue, paper towel, and
                 even building materials.</p>
                 <h5 class="text-primary">What types of carton can you recycle?</h5>
                 <ul class="recycle-list">
                   <li>Egg cartons made from paper</li>
                   <li>Mil cartons</li>
                   <li>Juice cartons</li>
                   <li>Ice cream cartons</li>
                   <li>Pizza boxes</li>
                   <li>Corrugated cardboard</li>
                   <li>Paperboard or chipboard</li>
                 </ul>
                 <h5 class="text-primary">What types of carton arent recyclable?</h5>
                 <p>All types of carton be recycled</p>')
Material.create!(name: "Blisters",
                 description: '<p>A blister pack is a very common kind of primary packaging made of rigid plastic and
                 a lidding material, used to pack a variety of small consumer items: toys, cosmetics, stationery,
                 and of course, medicines.</p>
                 <h5 class="text-primary">How to recycle blisters</h5>
                 <ul class="recycle-list">
                   <li>Remove all aluminium from the blister pack</li>
                   <li>Separate the plastic</li>
                   <li>Recycle separately</li>
                 </ul>
                 <p>Contact your local cooperatives to find out more about how they recycle blisters</p>')
Material.create!(name: "Toxic",
                 description: %(<p>It's important to dispose of hazardous products properly to keep toxicchemicals
                 out of the environment. Improper disposal can do harm to wildlife, ecosystems, and human health.</p>
                 <h5 class="text-primary">Recyclable hazardous waste</h5>
                 <ul class="recycle-list">
                   <li>Fluorescent and mercury-containing lights</li>
                   <li>Pharmaceuticals, drugs, medications</li>
                   <li>Household paint (interior, exterior)</li>
                   <li>Recyclable (non-hazardous) household products</li>
                   <li>Hazardous household products</li>
                 </ul>
                 <p>For further information, always contact your local cooperatives.</p>))
Material.create!(name: "Others",
                 description: %(<p>Each cooperative will list other materials they offer to recycle that
                 aren't part of the list.</p>
                 <h5 class="text-primary">Materials considered as "other"</h5>
                 <ul class="recycle-list">
                   <li>For further information, always contact your local cooperatives.</li>
                 </ul>))
puts 'End'

puts 'Creating a cooperative 1'
User.create!(name: "Oleogenosa Reciclagem Vegetal e Produtos de Origem",
             email: "a@a.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Doutor Rafael de Barros, 262 - Paraíso, São Paulo - SP, 04003-041, Brazil",
             description: "We are a cooperative in Sao Paulo/SP made by individual entrepreneurs
             organized and legally constituted in a cooperative with the purpose of collecting,
             segregating and selling recyclable materials, minimizing environmental impacts in the final
             disposal of solid waste.",
             role: "cooperative")
puts 'End'

puts 'Creating a cooperative 2'
User.create!(name: "Ayres Comércio e Reciclagem de Metais",
             email: "b@b.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Fradique Coutinho, 153 - Pinheiros, São Paulo - SP, 05416-010, Brazil",
             description: "Operating in the demanding recycling market, we work
             in the purchase and sale of a wide variety of ferrous and non-ferrous materials.
             We offer our customers and suppliers quick service, technology and safe
             loading and unloading of materials.
             We value the immediate removal of your material at no cost, working in companies,
             construction companies and businesses in general. We also work at the night period.
             Weighing and payment of materials are made immediately in our warehouse.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 3'
User.create!(name: "Bem Estar Reciclagem",
             email: "c@c.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Avenida Paulista 900, São Paulo",
             description: "Our main objective is to act in the three dimensions of sustainable
             development: economic, social and environmental.
             The waste we receive generate work and income for people in social vulnerability
             and who now have recycling as an opportunity for professional training and home support.
             This same material is what can be separated incorrectly, polluting rivers or ending up in
             landfills.
             One of our key jobs is the collection and disposal of glass, working on two fronts:
             food safety and the correct disposal of packaging. By decharacterizing the packaging and
             sending it to the industry again, its use for counterfeiting beverages and foodstuffs
             is avoided.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 4'
User.create!(name: "Cooperativa Viralata",
             email: "d@d.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Avenida Paulista 48, São Paulo",
             description: "We are a start-up dedicated to valuing recyclable solid waste
             and sustainability, which operates in the management and selective collection
             of condominiums in São Paulo and sustainability projects for companies.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 5'
User.create!(name: "Reciclagem Santo Cristo",
             email: "e@e.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Avenida Vereador José Diniz, 599, Santo Amaro, São Paulo",
             description: "From the very first waste skip collected in 1989, we did things
             differently; the skip was brought back to the yard, tipped out and floor-sorted, separated
             into waste types, which back then was unheard of. It was outside of the industry norms of
             taking skips straight to the local landfill; the latter of course was the easiest and most profitable,
             but the least environmentally friendly and involved sending valuable materials to a big hole in the
             ground, which just never made sense to us.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 6'
User.create!(name: "Pidm Nova Reciclagem",
             email: "f@f.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Vergueiro, 356, Liberdade, São Paulo",
             description: "The Material Recycling Facility is a two stream processing system. Paper and containers
             (metal, plastic and glass food and beverage containers) are processed separately.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 7'
User.create!(name: "Centro de Reciclagem SP",
             email: "g@g.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Treze de Maio, 466, Canhema, Diadema, São Paulo",
             description: "Our goal is to keep as much material out of the landfill as possible and this can only
             happen with your help and cooperation.  Once waste hits the landfill we do not go through it, it is
             landfilled and there for life.  We have outlets in Alberta, not sent over seas, for our plastic products,
             Paper and cardboard goes to facilities in Canada and US.  Paints goes to a place in Calgary, electronics
             in Edmonton, and so on, we monitor where our products go, and take pride in what we do in the recycle area
             for a small region.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 8'
User.create!(name: "Reciclagem de Metais E Transportes",
             email: "h@h.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Ada Negri, 193, Santo Amaro, São Paulo",
             description: "The recycling Plant, otherwise referred to as a Material Recovery Facility, is located on
             a 12 acre site in East Multnomah County. For the past 5 years, COR Recycling has been the Portland Metro
             Area's leader in the recycling of waste. Through recycling and sustainable practices we have DIVERTED over
             100,000,000 lbs. of unwanted materials from the landfill.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 9'
User.create!(name: "Linha Amarela Reciclagem",
             email: "i@i.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Anita Malfatti, 278, Casa Verde, São Paulo",
             description: "A Materials Recycling Facility or MRF is a deceptively simple yet vital facility for
             recycling waste. Its objective is to produce clean, sorted and segregated materials as efficiently as
             possible, ready for further recycling. By accepting co-mingled waste, we reduce the amount of space
             required on your sites for bins or skips, and the separation, both manual and mechanical, and subsequent
             recycling is all done at our facilities.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 10'
User.create!(name: "Resupri Reciclagem de Cartuchos",
             email: "j@j.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Galeno de Almeida, 659, Pinheiros, São Paulo",
             description: "We have a complete recycle program at the Westlock Regional Waste facility, located at the
             landfill.  We handle the regular recycle materials, paper (separate office paper please), tin cans,
             cardboard, plastic (no film please), NOT GLASS.  In addition to Paints, Used oil and containers, Tires,
             Electronics (if it has a cord or battery we recycle it), and Metal.  So please let staff know EVERYTHING
             you have in your load and try to sort it.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 11'
User.create!(name: "Neon Reciclagem",
             email: "k@k.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Matias Aires, 57, Consolacao, São Paulo",
             description: "Our goal is to recycle and divert at least 60% of waste we take in away from the landfill,
             currently we are only at about 35%, commercial is the main focus now as their level of recycle in their
             loads is significant.  We do have options if businesses bring in their recycle separately for a reduced
             cost to encourage recycling, more and more businesses are doing this each year.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 12'
User.create!(name: "Latasa Reciclagem",
             email: "l@l.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Apotribu, 57, Parque Imperial, São Paulo - SP, 04302-000, Brazil",
             description: "Through the BEEAH Recycling vertical, BEEAH Group has developed a self-sustaining model
             for the management of waste and zero-waste strategies. The company has made great headway towards a
              zero-waste solution, currently achieving a diversion rate of more than 76%.",
             role: "cooperative")
puts 'End'
puts 'Creating a cooperative 13'
User.create!(name: "Pompel Reciclagem",
             email: "m@m.com",
             password: "123123",
             password_confirmation: "123123",
             address: "Rua Bertioga, 46, Chacara Inglesa, São Paulo - SP, 04141-100, Brazil",
             description: "Through a carefully planned phasing strategy, the company has built some of the world's most
             advanced recycling facilities at this Centre.
             These facilities maximize recovery and waste diversion, while driving the zero-waste agenda set by BEEAH
             Group. At these facilities, waste is sorted, processed, treated and regenerated in forms that further
             benefit the economy.",
             role: "cooperative")
puts 'End'

puts 'Creating cooperative_materials'

cooperatives = User.where(role: "cooperative")

cooperatives.each do |cooperative|
  Material.all.sample(rand(1..5)).each do |material|
    CooperativeMaterial.create(user: cooperative, material:)
  end
end

puts 'End'

puts 'Creating Trades'
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-20", delivery_method: "Pick up",
              material_quantity: 3, person: person1, cooperative: cooperatives[0],
              material: cooperatives[0].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 2, delivery_date: "2022-12-01", delivery_method: "Drop off",
              material_quantity: 2, person: person1, cooperative: cooperatives[1],
              material: cooperatives[1].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 5, delivery_date: "2022-12-18", delivery_method: "Pick up",
              material_quantity: 10, person: person1, cooperative: cooperatives[2],
              material: cooperatives[2].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 10, delivery_date: "2022-11-28", delivery_method: "Pick up",
              material_quantity: 9, person: person1, cooperative: cooperatives[3],
              material: cooperatives[3].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 4, delivery_date: "2022-11-30", delivery_method: "Pick up",
              material_quantity: 20, person: person2, cooperative: cooperatives[0],
              material: cooperatives[0].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 20, delivery_date: "2022-12-02", delivery_method: "Pick up",
              material_quantity: 3, person: person3, cooperative: cooperatives[0],
              material: cooperatives[0].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 5, delivery_date: "2022-12-20", delivery_method: "Pick up",
              material_quantity: 5, person: person3, cooperative: cooperatives[1],
              material: cooperatives[1].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 8, delivery_date: "2022-12-01", delivery_method: "Drop off",
              material_quantity: 10, person: person4, cooperative: cooperatives[0],
              material: cooperatives[0].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 9, delivery_date: "2022-12-01", delivery_method: "Drop off",
              material_quantity: 10, person: person4, cooperative: cooperatives[1],
              material: cooperatives[1].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 10, delivery_date: "2022-12-01", delivery_method: "Pick up",
              material_quantity: 15, person: person4, cooperative: cooperatives[2],
              material: cooperatives[2].materials.sample, status: "Pending")
Trade.create!(created_date: DateTime.now - 4, delivery_date: "2022-12-01", delivery_method: "Pick up",
              material_quantity: 12, person: person4, cooperative: cooperatives[3],
              material: cooperatives[3].materials.sample, status: "Pending")
puts 'End'
