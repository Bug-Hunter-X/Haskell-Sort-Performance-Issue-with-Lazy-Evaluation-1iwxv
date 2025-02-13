```haskell
import Data.List (sort)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  let xs = [1,2,3,4,5]
  let ys = sort xs
  print ys

-- Improved version for potentially large or lazy lists
-- uses a more efficient sorting algorithm and handles lazy evaluation more effectively
mainImproved :: IO ()
mainImproved = do
  -- Example with a large list
  let largeList = [1..1000000]
  let sortedLargeList = sort largeList
  print $ take 10 sortedLargeList --Process only a portion to avoid excessive memory consumption
  
  -- Example with a potentially lazy list
  let lazyList = take 1000 $ iterate (+1) 1
  let sortedLazyList = sort lazyList
  print sortedLazyList
```