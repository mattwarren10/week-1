arr = [ 
	[ 0, 1, 2, 3, 4,  
		{ :secret => 
			{ :unlock => 
				[ 
					[ 0 ], 
					[ "winner" ]
					]
				 }
			 } 
		] 
	]


p arr[0][5][:secret][:unlock][1]


