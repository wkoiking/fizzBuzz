import Diagrams.Prelude
import Diagrams.Backend.SVG
import Text.Read(readMaybe)

b1 :: Diagram B
b1 = square 20 # lw thick # fc blue

b2 :: Diagram B
b2 = circle 2 ||| pentagon 3

b3 :: Diagram B
b3 = square 2 # fc red # rotateBy (1/3) ||| circle 1 # lc blue # fc green

sierpinski :: Int -> Diagram B
sierpinski 0 = triangle 1
sierpinski n = center (triangle'  === center (triangle' ||| triangle'))
  where triangle' = sierpinski (n - 1)

main :: IO ()
main = do
    str <- getLine
    case readMaybe str of
        Nothing -> putStrLn "Wrong input!"
        Just n -> do
            let fzbz :: String
                fzbz = fizzBuzz n 
            putStrLn fzbz
            main

-- read :: String -> a
-- renderSVG "sample.svg" (mkWidth 500) $ sierpinski 5 # fc orange # lw thin # lc green

-- unlines :: [String] -> String
-- unlines [] = ""
-- unlines (str:rest) = str ++ "\n" ++ unlines rest

-- print :: a -> IO ()
-- putStrLn :: String -> IO ()
-- read :: String -> a

mergeSort :: Ord a => [a] -> [a]
mergeSort = undefined

merge :: Ord a => [a] -> [a] -> [a]
merge = undefined

fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` (3 * 5) == 0 = "Fizz Buzz"
    | n `mod` 3       == 0 = "Fizz"
    | n `mod` 5       == 0 = "Buzz"
    | otherwise            = show n
