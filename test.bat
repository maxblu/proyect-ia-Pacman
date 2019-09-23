

::::DFS
python pacman.py -l tinyMaze 			-p SearchAgent					-q
python pacman.py -l mediumMaze 		-p SearchAgent					-q
python pacman.py -l bigMaze  		 	-p SearchAgent					-q


::::BFS
python pacman.py -l openMaze 			-p SearchAgent					-q -a fn=bfs
python pacman.py -l mediumMaze 		-p SearchAgent					-q -a fn=bfs
python pacman.py -l bigMaze    		-p SearchAgent					-q -a fn=bfs
:: python eightpuzzle.py

::::UCS
python pacman.py -l mediumMaze 		-p SearchAgent					-q -a fn=ucs
python pacman.py -l mediumDottedMaze 	-p StayEastSearchAgent			-q 	
python pacman.py -l mediumScaryMaze 	-p StayWestSearchAgent			-q 	


::::A-STAR
python pacman.py -l bigMaze 			-p SearchAgent					-q -a fn=ucs 								
python pacman.py -l bigMaze 			-p SearchAgent					-q -a fn=astar,heuristic=manhattanHeuristic 

python pacman.py -l openMaze 			-p SearchAgent					-q -a fn=ucs 								
python pacman.py -l openMaze 			-p SearchAgent					-q -a fn=astar,heuristic=manhattanHeuristic 

::::CornerProblem
python pacman.py -l tinyCorners 		-p SearchAgent					-q -a fn=bfs,prob=CornersProblem 	--frameTime 0
python pacman.py -l mediumCorners 	-p SearchAgent					-q -a fn=bfs,prob=CornersProblem 	--frameTime 0
python pacman.py -l mediumCorners 	-p AStarCornersAgent			-q  								--frameTime 0  	-z .5

python pacman.py -l testSearch 		-p AStarFoodSearchAgent			-q  								--frameTime 0
python pacman.py -l tinySearch 		-p AStarFoodSearchAgent			-q  								--frameTime 0
python pacman.py -l trickySearch 		-p AStarFoodSearchAgent			-q  								--frameTime 0
python pacman.py -l bigSearch 		-p ClosestDotSearchAgent		-q  								--frameTime 0 	-z .5  
::python pacman.py -l bigSearch 		-p ApproximateSearchAgent		-q  								--frameTime 0 	-z .5  
					