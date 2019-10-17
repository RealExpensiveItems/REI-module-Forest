DROP DATABASE IF EXISTS module_forest;
CREATE DATABASE module_forest;
USE module_forest;

CREATE TABLE also_bought(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  rate TEXT NOT NULL,
  reviewer INT NOT NULL,
  seller TEXT NOT NULL,
  item TEXT NOT NULL,
  price TEXT NOT NULL,
  img TEXT NOT NULL
);

CREATE TABLE product_type(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  typename TEXT NOT NULL,
  tablename TEXT NOT NULL,
  sizing_notes TEXT NOT NULL
);
INSERT INTO product_type(typename,tablename,sizing_notes)VALUE("jackets","jackets","Inseam varies depending on style. Measurements are stated in inches unless otherwise indicated.");
INSERT INTO product_type(typename,tablename,sizing_notes)VALUE("pants","pants","");
INSERT INTO product_type(typename,tablename,sizing_notes)VALUE("bikes","bikes","Measurements are stated in millimeters unless otherwise indicated.");
INSERT INTO product_type(typename,tablename,sizing_notes)VALUE("boots","boots","");

/*
mysql -u forest < db/dbseeding.sql
*/
CREATE TABLE jackets(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  key_name TEXT NOT NULL,
  s1 TEXT NOT NULL,
  s2 TEXT NOT NULL,
  s3 TEXT NOT NULL,
  s4 TEXT NOT NULL,
  s5 TEXT NOT NULL,
  s6 TEXT NOT NULL,
  s7 TEXT NOT NULL
);
CREATE TABLE pants(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  key_name TEXT NOT NULL,
  s1 TEXT NOT NULL,
  s2 TEXT NOT NULL,
  s3 TEXT NOT NULL,
  s4 TEXT NOT NULL,
  s5 TEXT NOT NULL
);
CREATE TABLE bikes(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  key_name TEXT NOT NULL,
  s1 TEXT NOT NULL,
  s2 TEXT NOT NULL,
  s3 TEXT NOT NULL,
  s4 TEXT NOT NULL,
  s5 TEXT NOT NULL
);
CREATE TABLE boots(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  key_name TEXT NOT NULL,
  s1 TEXT NOT NULL,
  s2 TEXT NOT NULL,
  s3 TEXT NOT NULL,
  s4 TEXT NOT NULL,
  s5 TEXT NOT NULL,
  s6 TEXT NOT NULL,
  s7 TEXT NOT NULL,
  s8 TEXT NOT NULL,
  s9 TEXT NOT NULL,
  s10 TEXT NOT NULL,
  s11 TEXT NOT NULL
);



INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",289,"Darn Tough","Micro Crew Cushion Hiking Socks - Men's","$23.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/001.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",18,"REI Co-op","Ditty Sack - Set of 3","$19.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/002.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",42,"REI Co-op","Flexlite Air Chair","$99.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/003.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",21,"Patagonia","Performance Better Sweater Hoodie - Men's","$159.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/004.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",62,"REI Co-op","Lightweight Compression Stuff Sack","$20.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/005.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",75,"REI Co-op","Nalgene Wide-Mouth Water Bottle - 48 fl. oz.","$11.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/006.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",7,"Mountain Hardwear","Ghost Shadow Insulated Hoodie - Women's","$250.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/007.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",168,"Arc'teryx","Cerium LT Down Hoodie - Men's","$379.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/008.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",227,"Mountain Hardwear","Ghost Whisperer/2 Down Jacket - Men's","$300.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/009.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",18,"Patagonia","Down Sweater Hoodie - Men's","$279.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/010.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",2,"REI Co-op","Magma 850 Down Hoodie 2.0 - Men's","$219.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/011.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",11,"Mountain Hardwear","Ghost Shadow Vest - Men's","$175.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/012.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"The North Face","Thermoball Eco Insulated Hoodie - Men's","$220.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/013.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",105,"REI Co-op","Stormhenge 850 Down Jacket - Men's","$249.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/014.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"Rab","Cirrus Flex Insulated Hoodie - Men's","$200.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/015.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("3.25",3,"REI Co-op","650 Down Hoodie 2.0 - Men's","$119.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/016.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",8,"REI Co-op","650 Down Jacket 2.0 - Men's","$99.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/017.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",10,"REI Co-op","High Country Down Parka - Men's","$159.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/018.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",34,"The North Face","McMurdo Insulated Parka III - Men's","$330.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/019.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"The North Face","Eco Nuptse Down Jacket - Men's","$249.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/020.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",80,"REI Co-op","Nalgene Wide-Mouth Water Bottle - 16 fl. oz.","$8.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/021.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",13,"Edelrid","Boa Eco 9.8mm Non-Dry Rope","$109.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/022.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",120,"REI Co-op","Ruckpack 28 Pack","$99.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/023.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",3,"Tecnu","Outdoor Skin Cleanser","$1.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/024.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"Smartwool","Merino Sport Ultra Light Hoodie - Men's","$125.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/025.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",1,"GSI Outdoors","Glacier Vacuum JavaPress - 30 fl. oz.","$39.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/026.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",87,"Injinji","Run Lightweight No-Show Socks","$12.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/027.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",140,"WRIGHTSOCK","CoolMesh II Quarter Socks","$14.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/028.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",18,"Arc'teryx","Aptin Shorts - Men's","$79.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/029.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",17,"REI Co-op","Kindercone 25 Sleeping Bag - Kids'","$59.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/030.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",453,"Adventure Medical Kits","Ultralight/Watertight .7 Medical Kit","$28.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/031.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",2,"Black Diamond","PosiWire Quickdraw Quickpack - 12cm","$94.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/032.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",14,"Petzl","GRIGRI + Belay Device","$159.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/033.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",4,"Petzl","Tour Harness","$59.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/034.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",13,"Buff","Original Multifunctional Headwear","$20.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/035.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",102,"Injinji","Liner Crew Socks","$10.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/036.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",22,"Zamberlan","Vioz Lux GTX RR Hiking Boots - Men's","$345.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/037.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",1,"REI Co-op","XeroDry GTX Jacket - Men's Tall Sizes","$159.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/038.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",357,"Columbia","Silver Ridge Convertible Pants - Men's","$60.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/039.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",1,"REI Co-op","Midweight Base Layer Half-Zip Top - Men's Tall Sizes","$54.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/040.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",3,"REI Co-op","Midweight Base Layer Bottoms - Men's Tall Sizes","$49.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/041.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",4,"REI Co-op","Active Pursuits Half-Zip Shirt - Men's Tall Sizes","$49.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/042.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"REI Co-op","Lightweight Base Layer Long-Sleeve Crew Top - Men's Tall Sizes","$39.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/043.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",27,"SOL","Emergency Bivy","$16.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/044.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",8,"Merrell","Ascent Ride GTX Shoes - Men's","$119.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/045.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",132,"GOOD TO-GO","Herbed Mushroom Risotto - Single Serving","$7.50","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/046.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",126,"GSI Outdoors","Infinity Backpacker Mug","$9.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/047.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",10,"Garmin","tempe Wireless Temperature Sensor","$29.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/048.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",32,"Outdoor Research","Expedition Crocodile Gaiters","$99.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/049.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",63,"Mountain House","Chili Mac With Beef Pro-Pak - 2 Servings","$8.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/050.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",38,"Mountain House","Italian Pepper Steak - 2.5 Servings","$11.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/051.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("3.25",6,"GOOD TO-GO","Classic Marinara with Penne - Single Serving","$7.50","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/052.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",191,"Osprey","Hydraulics Reservoir - 3 Liters","$42.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/053.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",106,"Nalgene","Ultralite Wide-Mouth Water Bottle - 32 fl. oz.","$6.75","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/054.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("2",1,"The North Face","Arrowood Triclimate 3-in-1 Jacket - Women's","$199.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/055.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("3",1,"Patagonia","Better Sweater Fleece Jacket - Women's","$139.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/056.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",57,"Black Diamond","Spot 325 Headlamp","$39.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/057.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",53,"Black Diamond","Momentum Climbing Shoes - Ash - Men's","$94.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/058.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",26,"Merrell","Moab Adventure Moc Shoes - Men's","$100.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/059.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("3.5",10,"DexShell","Terrain Walking Socks","$42.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/060.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",63,"KUHL","Deceptr Pants - Men's","$89.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/061.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"Burton","GORE-TEX Mittens - Men's","$69.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/062.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("3.75",10,"The North Face","Dolomite 20 Double Sleeping Bag","$159.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/063.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",101,"Mountain House","Grilled Chicken Breasts and Mashed Potatoes - 2 Servings","$11.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/064.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",49,"Danner","Mountain Light  Cascade Hiking Boots - Women's","$359.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/065.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"Arc'teryx","Rise Toque","$39.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/066.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"Craghoppers","Etna Fleece Jacket - Men's","$85.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/067.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("3.75",21,"Five Ten","Guide Tennie Approach Shoes - Men's","$120.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/068.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",9,"The North Face","Stormbreak 3 Footprint","$45.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/069.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("2.5",21,"AlpineAire Foods","Pepper Beef with Rice - 2 Servings","$8.50","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/070.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",4,"Outdoor Research","Helium Bivy","$179.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/071.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",179,"Arc'teryx","Beta AR Jacket - Men's","$575.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/072.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",32,"Arc'teryx","Atom LT Insulated Jacket - Women's","$239.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/073.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",5,"Arc'teryx","Beta SV Bib Snow Pants - Men's","$549.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/074.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",71,"Arc'teryx","Covert Cardigan - Men's","$179.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/075.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",69,"Arc'teryx","Atom LT Insulated Vest - Men's","$175.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/076.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",34,"Arc'teryx","Trino Jacket - Men's","$225.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/077.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",13,"Arc'teryx","Cormac Zip-Neck Shirt - Men's","$95.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/078.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",81,"Arc'teryx","Captive Polo Shirt - Men's","$69.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/079.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",16,"Arc'teryx","Captive Polo Shirt - Men's","$79.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/080.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",2,"Arc'teryx","Downward T-Shirt - Men's","$39.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/081.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",46,"Norrona","Falketind GORE-TEX Jacket - Men's","$399.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/082.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",48,"Arc'teryx","Thorium AR Down Hoodie - Men's","$325.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/083.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",15,"Mountain Hardwear","Ghost Shadow Insulated Hoodie - Men's","$250.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/084.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",13,"Patagonia","Micro Puff Insulated Hoodie - Women's","$299.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/085.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",229,"Outdoor Research","Helium II Rain Jacket - Men's","$159.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/086.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",22,"REI Co-op","Merino Midweight Base Layer Bottoms - Men's","$79.50","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/087.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",71,"Darn Tough","Hiker Quarter Cushion Socks - Men's","$18.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/088.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",104,"Therm-a-Rest","Z-Seat Pad","$14.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/089.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",14,"TOAKS","Titanium Long Handle Spoon with Polished Bowl","$10.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/090.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",21,"Arc'teryx","Magnus Insulated Coat - Men's","$549.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/091.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",271,"Columbia","Alpine Action Insulated Jacket - Men's","$170.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/092.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",292,"Columbia","Alpine Action Insulated Jacket - Men's Extended Sizes","$190.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/093.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",25,"LuminAID","PackLite Nova USB Solar Lantern","$24.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/094.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",46,"KUHL","Radikl Pants - Men's","$89.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/095.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",11,"REI Co-op","Stuff Travel Pack - 20L","$29.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/096.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",50,"MSR","Elixir 3 Tent with Footprint","$299.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/097.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",27,"Sea to Summit","Ultra-Sil Travel Day Pack","$34.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/098.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",10,"Campsuds","in Nalgene Bottle - 4 oz.","$5.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/099.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"Salomon","OUTsnap CSWP Hiking Boots - Men's","$130.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/100.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("0",0,"REI Co-op","Lodge Beanie - Men's","$19.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/101.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",111,"Arc'teryx","Atom LT Insulated Jacket - Men's","$239.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/102.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",40,"Arc'teryx","Cerium LT Down Hoodie  - Women's","$379.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/103.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",17,"Arc'teryx","Beta SL Pants - Men's","$275.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/104.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",58,"Arc'teryx","Cerium LT Down Jacket - Men's","$349.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/105.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",169,"BearVault","BV500 Food Container","$79.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/106.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",49,"Sea to Summit","Wilderness Wipes","$4.50","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/107.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",157,"prAna","Stretch Zion Pants - Men's","$85.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/108.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",15,"REI Co-op","Rainier Full-Zip Rain Pants - Men's","$89.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/109.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",273,"Salomon","X Ultra 3 Mid GTX Hiking Boots - Men's","$165.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/110.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",27,"Darn Tough","Hiker Boot Full-Cushion Socks - Men's","$26.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/111.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4",192,"REI Co-op","Half Dome 2 Plus Tent","$229.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/112.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",32,"Arc'teryx","Proton LT Insulated Hoodie - Men's","$299.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/113.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",154,"REI Co-op","Nalgene Wide-Mouth Water Bottle - 32 fl. oz.","$10.95","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/114.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",29,"Arc'teryx","Aerios FL Mid GTX Hiking Boots - Men's","$185.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/115.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",19,"Arc'teryx","Arc'Word T-Shirt - Men's","$35.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/116.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",30,"Patagonia","Nano Puff Insulated Hoodie - Women's","$249.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/117.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("5",30,"prAna","Stretch Zion Straight Pants - Men's","$89.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/118.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",81,"REI Co-op","Stormhenge 850 Down Jacket - Women's","$249.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/119.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",51,"Smartwool","Merino 150 Crew Base Layer Long-Sleeve Top - Men's","$80.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/120.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",15,"Arc'teryx","Ceres SV Down Parka - Men's","$849.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/121.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",61,"Arc'teryx","Therme Parka - Men's","$699.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/122.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.25",47,"Arc'teryx","Camosun Insulated Parka - Men's","$649.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/123.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",20,"Arc'teryx","Sidewinder SV Shell Jacket - Men's","$749.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/124.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",69,"Arc'teryx","Fission SV Insulated Jacket - Men's","$689.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/125.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.75",29,"Arc'teryx","Cassiar Jacket - Men's","$725.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/126.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",38,"Arc'teryx","Rush Jacket - Men's","$699.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/127.jpg");
INSERT INTO also_bought(rate,reviewer,seller,item,price,img)VALUE("4.5",2,"Arc'teryx","Rush IS Insulated Jacket - Men's","$699.00","https://rei-module-forest-imgs.s3-us-west-1.amazonaws.com/pics/128.jpg");

INSERT INTO jackets(key_name,s1,s2,s3,s4,s5,s6,s7)VALUE("size","XXS","XS","S","M","L","XL","XXL");
INSERT INTO jackets(key_name,s1,s2,s3,s4,s5,s6,s7)VALUE("Chest","31-33","34-35","35-37","38-40","42-44","46-48","50-52");
INSERT INTO jackets(key_name,s1,s2,s3,s4,s5,s6,s7)VALUE("Sleeve Length","31","32","33","34","35","36","37");
INSERT INTO jackets(key_name,s1,s2,s3,s4,s5,s6,s7)VALUE("Waist","26","28","29-30","31-33","34-36","37-40","42-44");
INSERT INTO jackets(key_name,s1,s2,s3,s4,s5,s6,s7)VALUE("Inseam","30","31","31","32","33","33","33");

INSERT INTO pants(key_name,s1,s2,s3,s4,s5)VALUE("size","S","M","L","XL","XXL");
INSERT INTO pants(key_name,s1,s2,s3,s4,s5)VALUE("Chest","36-38","39-41","42-44","44-47","48-50");
INSERT INTO pants(key_name,s1,s2,s3,s4,s5)VALUE("Sleeve Length","33","34","35","36","37");
INSERT INTO pants(key_name,s1,s2,s3,s4,s5)VALUE("Waist","28-30","31-33","34-36","37-39","40-42");
INSERT INTO pants(key_name,s1,s2,s3,s4,s5)VALUE("Hip","35-37","38-40","41-43","44-46","47-49");
INSERT INTO pants(key_name,s1,s2,s3,s4,s5)VALUE("Inseam","31.5","32","32.5","33","33.5");

INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("size","XS","S","M","L","XL");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Height Range",'5''0" - 5''3"','5''3" - 5''6"','5''6" - 5''9"','5''9" - 6''0"','6''0" - 6''3"');
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Reach","400","425","450","475","500");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Stack","560","560","590","608","627");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Effective Top Tube","550","575","608","640","672");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Seat Tube Center-Top","360","395","430","465","500");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Standover Height","761","763","781","795","799");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Head Tube Angle (degrees)","66","66","67","67","67");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Seat Tube Angle (degrees)","75","75","75","75","75");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Wheelbase","1124","1150","1181","1213.9","1246.7");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Chainstay","433","433","441","441","441");
INSERT INTO bikes(key_name,s1,s2,s3,s4,s5)VALUE("Fork Offset","46","46","46","46","46");

INSERT INTO boots(key_name,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11)VALUE("size","8","8.5","9","9.5","10","10.5","11","11.5","12","12.5","13");
INSERT INTO boots(key_name,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11)VALUE("U.S. Men's","8","8.5","9","9.5","10","10.5","11","11.5","12","12.5","13");
INSERT INTO boots(key_name,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11)VALUE("U.S. Women's","9","9.5","10","10.5","11","11.5","12"," "," "," "," ");
INSERT INTO boots(key_name,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11)VALUE("UK","7.5","8","8.5","9","9.5","10","10.5","11","11.5","12","12.5");
INSERT INTO boots(key_name,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11)VALUE("EU","41","42","42.6","43.3","44","44.6","45.3","46","46.6","47.3","48");
INSERT INTO boots(key_name,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11)VALUE("Mondo","26","26.5","27","27.5","28","28.5","29","29.5","30","30.5","31");
