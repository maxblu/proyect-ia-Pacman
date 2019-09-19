

:::: DFS
::python pacman.py -q -l tinyMaze 			-p SearchAgent
::python pacman.py -q -l mediumMaze 		-p SearchAgent
::python pacman.py -q -l bigMaze  		 	-p SearchAgent


:::: BFS
::python pacman.py -q -l openMaze 			-p SearchAgent -a fn=bfs
:: python pacman.py -q -l mediumMaze 		-p SearchAgent -a fn=bfs
:: python pacman.py -q -l bigMaze    		-p SearchAgent -a fn=bfs
::python eightpuzzle.py

:::: UCS
:: python pacman.py -q -l mediumMaze 		-p SearchAgent  		-a fn=ucs
:: python pacman.py -q -l mediumDottedMaze 	-p StayEastSearchAgent 	
:: python pacman.py -q -l mediumScaryMaze 	-p StayWestSearchAgent 	


:::: A-STAR
:: python pacman.py -q -l bigMaze 			-p SearchAgent -a fn=ucs 								
:: python pacman.py -q -l bigMaze 			-p SearchAgent -a fn=astar,heuristic=manhattanHeuristic 

python pacman.py -q -l tinyCorners 		-p SearchAgent					--frameTime 0				-a fn=bfs,prob=CornersProblem
python pacman.py -q -l mediumCorners 		-p SearchAgent					--frameTime 0 				-a fn=bfs,prob=CornersProblem
python pacman.py -q -l mediumCorners 		-p AStarCornersAgent			--frameTime 0 	-z 0.5
:: python pacman.py -q -l testSearch 			-p AStarFoodSearchAgent			--frameTime 0
:: python pacman.py -q -l trickySearch 		-p AStarFoodSearchAgent			--frameTime 0
:: python pacman.py -q -l bigSearch 			-p ClosestDotSearchAgent		--frameTime 0 	-z .5 
:: python pacman.py -q -l bigSearch 			-p ApproximateSearchAgent		--frameTime 0 	-z .5 -q 
