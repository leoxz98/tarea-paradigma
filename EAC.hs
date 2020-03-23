import System.Random (randomRIO)
import Data.List
import System.Environment


randomList :: Int -> IO([Int])
randomList 0 = return []
randomList n = do
  r  <- randomRIO (0,1)
  rs <- randomList (n-1)
  return (r:rs) 

toBin:: Int -> [Int]
toBin 0 = [0]
toBin n | n `mod` 2 == 1 = toBin (n `div` 2) ++ [1]
        | n `mod` 2 == 0 = toBin (n `div` 2) ++ [0]


repairBin:: [Int] -> [Int]
repairBin [] = []
repairBin x |length x == 8 = x
			|length x == 9 = tail x
			|length x == 10 = tail x
			|length x < 8 = [x*0|x<-[1..8 -length x ]] ++ x

sim:: Int -> [Int]  -> [[Int]]
sim x n = do
	




main = do
	let a = randomList 8
	let r = toBin 4
	let regla = repairBin r
	let tabla = [[1,1,1],[1,1,0],[1,0,1],[1,0,0],[0,1,1],[0,1,0],[0,0,1],[0,0,0]]
	print tabla




	 
			











	
