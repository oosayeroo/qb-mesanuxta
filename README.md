# qb-mesanuxta
## a bahama mamas job for modi maps mesanuxta MLO

## Credits
Modi maps for their amazing Mesanuxta nightclub MLO. 
## Consumables Done Within this script itself.

## add to shared items.lua
```
--qb-mesanuxta
	--drinks
	['beach-cocktail'] 			  	 = {['name'] = 'beach-cocktail', 		    	['label'] = 'Sax on the Beach', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'beach-cocktail.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I Think Sax is Spelt Wrong'},
	['bloody-mary'] 			   	 = {['name'] = 'bloody-mary', 			  	   	['label'] = 'Bloody Mary', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bloody-mary.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Whos Mary and Why is She Bloody?'},
	['cherry-bomb'] 			   	 = {['name'] = 'cherry-bomb', 			  	   	['label'] = 'Cherry Bomb', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cherry-bomb.png', 		  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I Love a Good Fruity Drink'},
	['cherrydrop-shot'] 		  	 = {['name'] = 'cherrydrop-shot', 		    	['label'] = 'Cherry Drop', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cherrydrop-shot.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fruity Shot'},
	['firedrop-shot'] 			   	 = {['name'] = 'firedrop-shot', 			   	['label'] = 'Fire Drop', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'firedrop-shot.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Spiiiicy!!!!'},
	['lemonchello-shot'] 		   	 = {['name'] = 'lemonchello-shot', 			   	['label'] = 'Lemonchello', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lemonchello-shot.png',    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'This is a Unique Taste'},
	['liquidflame-shot'] 		   	 = {['name'] = 'liquidflame-shot', 			   	['label'] = 'Liquid Flame', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'liquidflame-shot.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Super Hot'},
	['minihulk-shot'] 			   	 = {['name'] = 'minihulk-shot', 		    	['label'] = 'Mini Hulk', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'minihulk-shot.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Thats your secret.. Youre Always Drunk'},
	['orange-blast'] 			   	 = {['name'] = 'orange-blast', 			  	   	['label'] = 'Orange Blast', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'orange-blast.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Tangy'},
	['orange-vodka'] 	        	 = {['name'] = 'orange-vodka', 			  	   	['label'] = 'Orange Vodka', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'orange-vodka.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Hit With The Ladies'},
	['pina-colada'] 		    	 = {['name'] = 'pina-colada', 			  	   	['label'] = 'Pina Colada', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pina-colada.png', 		  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'In The Pouring Rain?'},
	['pineapple-gin'] 		    	 = {['name'] = 'pineapple-gin', 		    	['label'] = 'Pineapple Gin', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pineapple-gin.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fruity Concoctions'},
	['polarbear'] 				   	 = {['name'] = 'polarbear', 			  	   	['label'] = 'Polar Bear', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'polarbear.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Icy Cold'},
	['rumcoke'] 				   	 = {['name'] = 'rumcoke', 			  	    	['label'] = 'Rum n Coke', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'rumcoke.png', 			   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Kinda Pirates life for me'},
	['sourblast-shot'] 			   	 = {['name'] = 'sourblast-shot', 		    	['label'] = 'Sour Blast', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'sourblast-shot.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Too Sour Maybe?..'},
	['tequila-shot'] 		    	 = {['name'] = 'tequila-shot', 			  	   	['label'] = 'Tequila', 		        	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'tequila-shot.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Classic'},
	['vampireskiss-shot'] 		   	 = {['name'] = 'vampireskiss-shot',   	    	['label'] = 'Vampires Kiss', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vampireskiss-shot.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Bloody Encounter'},
	['vampireslove-shot'] 		   	 = {['name'] = 'vampireslove-shot',   	    	['label'] = 'Vampires Love', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vampireslove-shot.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Team E vs Team J'},
	['pisswasser-crate'] 		  	 = {['name'] = 'pisswasser-crate', 			   	['label'] = 'Pisswasser Crate',      	['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'pisswasser-crate.png',	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Contains Beer'},
	['pisswasser'] 				   	 = {['name'] = 'pisswasser', 			  	   	['label'] = 'Pisswasser', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pisswasser.png', 		  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Its Pisswasser'},
	['pisswasser-lite'] 		  	 = {['name'] = 'pisswasser-lite', 		    	['label'] = 'Pisswasser Lite', 		   	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pisswasser-lite.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Smooth Low Alcohol Version'},
	['pisswasser-dark'] 		  	 = {['name'] = 'pisswasser-dark', 			   	['label'] = 'Pisswasser Dark', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pisswasser-dark.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Rich Foamy Taste'},
	['mesa-coffee'] 			  	 = {['name'] = 'mesa-coffee', 			  	   	['label'] = 'Mesa Coffee', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mesa-coffee.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mesanuxta Branded Coffee'},
	['mesa-beans'] 			     	 = {['name'] = 'mesa-beans', 			  	   	['label'] = 'Mesa Beans', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mesa-beans.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mesanuxta Branded Beans'},
	['mesa-cup'] 			     	 = {['name'] = 'mesa-cup', 			  	    	['label'] = 'Mesa Cup', 		    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mesa-cup.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mesanuxta Branded Cup'},
	['cocktail-mix'] 			   	 = {['name'] = 'cocktail-mix', 			  	   	['label'] = 'Cocktail Mix', 		   	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cocktail-mix.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'All The Ingredients Needed to Make Cocktails'},
	['shots-mix'] 			     	 = {['name'] = 'shots-mix', 			  	   	['label'] = 'Shots Mix', 		     	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'shots-mix.png', 	    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'All The Ingredients Needed to Make Shots'},
	['cocktail-glass'] 			   	 = {['name'] = 'cocktail-glass', 			   	['label'] = 'Cocktail Glass', 		   	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cocktail-glass.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Shiny Cocktail Glass'},
	['shot-glass'] 			     	 = {['name'] = 'shot-glass', 			  	   	['label'] = 'Shot Glass', 		     	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'shot-glass.png', 	    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Little Shot Glass'},
	
  ```
  
  ## Dependencies :

QBCore Framework
qb-input 
qb-menu
qb-shops

Modi Maps Mesanuxta MLO available here -  https://modi.tebex.io/package/4671968
Modi's Discord - https://discord.gg/7h3tYFykKx

## Add images to qb-inventory/html/images

## Add to shared/jobs.lua
```
['mesanuxta'] = {
		label = 'Mesanuxta',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 50
            },
			['1'] = {
                name = 'Employee',
                payment = 75
            },
			['2'] = {
                name = 'Manager',
                payment = 100
            },
			['3'] = {
                name = 'Owner',
                isboss = true,
                payment = 125
            },
        },
	},
  ```
