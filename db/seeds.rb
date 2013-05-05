# encoding: utf-8
#
Library.create code: 6959, name: 'Atemajac del Valle', attendant: 'Gabriela Jimenez Hernanadez', phone_number: '38 23 01 92', address: 'Hidalgo # 10 Delegacion Municipalde Atemajac Del Valle', zone: 'norte', email: 'atemajac@dondeleer.mx', password: '12345678'

Library.create code: 8581, name: 'Archivo Municipal', attendant: 'Estela Soto Villalobos', address: 'Dr. Luis Farah # 1080, Col. Los Paraisos ', zone: 'norte', email: 'archivomunicipal@dondeleer.mx', password: '1234568'

Library.create code: 1138, name: 'Instituto De Cultura De Zapopan', attendant: 'Ma. Guillermina Diaz Garcia', address: 'Vicente Guerrero # 233 Cabecera Municipal, Instituto De Cultura', zone: 'norte', phone_number: '38 18 22 00 EXT. 3831', email: 'culturazapopan@dondeleer.mx', password: '1234568'


Library.create code: 4113, name: 'Colegio Del Aire', attendant: 'Profr. Ramón Díaz López', address: 'Carretera A Base Aerea Int. Colegio Del Aire', zone: 'norte', phone_number: '36 24 14 70 EXT. 138', email: 'colegioaire@dondeleer.mx', password: '1234568'


Library.create code: 6952, name: 'Constitucion', attendant: 'Ma. Del Refugio Gómez Ponce', address: 'Av. Venustiano Carranza Centro Cultural Constitucion', zone: 'norte', phone_number: '33 42 08 50', email: 'constitucion@dondeleer.mx', password: '1234568'


Library.create code: 7184, name: 'Chapalita', attendant: 'Erika Desideria Padilla Avalos', address: 'Aurora # 101-B Entre Av. De Las Rosas Y 12 De Diciembre', zone: 'sur', phone_number: '36 47 05 99', email: 'chapalita@dondeleer.mx', password: '1234568'


Library.create code: 7441, name: 'El Batan', attendant: 'Elena Moreno Trillo', address: 'Andador Agua Azul S/N Delegacion Municipal De El Batan', zone: 'norte', phone_number: '36 72 49 67', email: 'batan@dondeleer.mx', password: '1234568'


Library.create code: 6890, name: 'Fovissste', attendant: 'Ma. Del Rocio Ruìz Sandoval', address: 'Modulo Social Estatuto Juridico Local 7 Y 8', zone: 'norte', phone_number: '38 33 42 66', email: 'fovissste@dondeleer.mx', password: '1234568'


Library.create code: 7830, name: 'Las Aguilas', attendant: 'M. Amparo Hernanadez Hernandez', address: 'Av. Lopez Mateos Sur # 5003 A Un Costado De Tv. Azteca', zone: 'sur', phone_number: '36 31 78 97', email: 'lasaguilas@dondeleer.mx', password: '1234568'

Library.create code: 6883, name: 'Paraisos Del Colli', attendant: 'Omar Ivan Topete Cardenas', address: 'Prolong. Av. Del Colli # 1000 Int. 2 Entre Jacarandas Y Arrayan', zone: 'sur', phone_number: '31 80 90 45', email: 'paraisos@dondeleer.mx', password: '1234568'


Library.create code: 2255, name: 'Novelistas', attendant: 'Maricela Hermosillo Gonzalez', address: 'Calle Mabuse # 490, Col. Rinconada De Los Novelistas', zone: 'sur', phone_number: '36 73 89 17', email: 'novelistas@dondeleer.mx', password: '1234568'


Library.create name: 'Nuevo Mexico', attendant: 'Javier Gonzalez Ledesma', address: 'Calle Idolina Gaona De Cosio En Jardines De Nuevo Mexico', zone: 'norte', phone_number: '36 24 18 30', email: 'nuevomexico@dondeleer.mx', password: '1234568'

Library.create code: 8992, name: 'Nueva España', attendant: 'Raquel Lugo Romero', address: 'Gibraltar S/N Col. Nueva España', zone: 'norte', email: 'nuevaespana@dondeleer.mx', password: '1234568'

Library.create code: 6891, name: 'San Juan De Ocotan', attendant: 'Olga Hernadez Calderon', address: 'Independencia # 214 Delegacion De San Juan De Ocotan', zone: 'norte', phone_number: '31 10 12 79', email: 'sanjuan@dondeleer.mx', password: '1234568'

Library.create code: 6892, name: 'Santa Ana Tepetitlan', attendant: 'Patricia Sevilla Alvarado', address: 'Guadalupe Victoria # 3625 Santa Ana Tepetitlan', zone: 'sur', phone_number: '36 84 38 21', email: 'santaana@dondeleer.mx', password: '1234568'

Library.create code: 6893, name: 'Tabachines', phone_number: '33 66 14 30', attendant: 'Christian Flores Luevano', address: 'Araucarias # 3145-A Entre Paseo De Las Caobas Y Pipila', zone: 'norte', email: 'tabachines@dondeleer.mx', password: '1234568'

Library.create code: 1423, name: ' Tesistan', phone_number: '38 97 13 60', attendant: 'Ma. Antonia Sanches Martinez', address: '5 De Mayo # 19 Altos Del Mercado Municipal De Tesistan', zone: 'norte', email: 'tesitan@dondeleer.mx', password: '1234568'

Library.create code: 6884, name: ' Tuzania', phone_number: '38 36 92 33', address: 'Cerezos # 1100 Colonia La Tuzania', zone: 'norte', email: 'tuzania@dondeleer.mx', password: '1234568'

Library.create code: 7443, name: ' Venta Del Astillero', phone_number: '31 51 11 32', attendant: 'Antonia Lemus Fourtul', address: 'Hidalgo Esquina Emiliano Zapata Frente A La Del. De La Venta', zone: 'norte', email: 'ventaastillero@dondeleer.mx', password: '1234568'

book1 = Book.new title: 'El principito', author: 'Antoine de Saint-Exupery', editorial: 'Emece', isbn: '9500400480', publication_date:'', tag_list: 'infantil, fantasía'
book1.libraries << Library.find(1)
book1.libraries << Library.find(2)
book1.libraries << Library.find(3)
book1.save

book2 = Book.new title: '20.000 Leguas de Viaje Submarino', author: 'Jules Verne', editorial: 'Agebe', isbn: '9871165099', publication_date:'2005', tag_list: 'viajes, ciencia ficción'
book2.libraries << Library.find(2)
book2.save

book3 = Book.new title: 'Don Quijote', author: 'Museo de Santa Cruz', editorial: 'Sociedad Estatal Para La Accion Cultural Exte', isbn: '8496008789', publication_date:'2005', tag_list: 'viajes'
book3.libraries << Library.find(3)
book3.save

book4 = Book.new title: 'Cien aÃ±os de soledad', author: 'Gabriel Garcia Marquez', editorial: 'Vintage EspaÃ±ol', isbn: '0307474720', publication_date:'2009', tag_list: 'drama'
book4.libraries << Library.find(4)
book4.save

book5 = Book.new title: 'Como Agua Para Chocolate', author: 'Laura Esquivel', editorial: 'Turtleback Books Distributed by Demco MediaTurtleback Books Distributed by Demco Media', isbn: '0606205128', publication_date:'2001', tag_list: 'drama, romance'
book5.libraries << Library.find(5)
book5.save

#book6 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book6.libraries << Library.find()
#book6.save
#
#book7 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book7.libraries << Library.find()
#book7.save
#
#book8 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book8.libraries << Library.find()
#book8.save
#
#book9 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book9.libraries << Library.find()
#book9.save
#
#book10 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book10.libraries << Library.find()
#book10.save
#
#book11 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book11.libraries << Library.find()
#book11.save
#
#book12 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book12.libraries << Library.find()
#book12.save
#
#book13 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book13.libraries << Library.find()
#book13.save
#
#book14 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book14.libraries << Library.find()
#book14.save
#
#book15 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book15.libraries << Library.find()
#book15.save
#
#book16 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book16.libraries << Library.find()
#book16.save
#
#book17 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book17.libraries << Library.find()
#book17.save
#
#book18 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book18.libraries << Library.find()
#book18.save
#
#book19 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book19.libraries << Library.find()
#book19.save
#
#book20 = Book.new title: '', author: '', editorial: '', isbn: '', publication_date:'', tag_list: ''
#book20.libraries << Library.find()
#book20.save
#
