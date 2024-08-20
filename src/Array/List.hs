{-@ LIQUID "--reflection"  @-}

-- ^^ this looks critical

module Array.List where

{-@ data Array a = Arr {  lst   :: [a]
                       ,  left  :: Nat
                       ,  right :: { v: Nat | v >= left && v - left == len lst }
                       ,  tok   :: Int
                       }
  @-}

data Array a = Arr {  lst   :: [a]  -- lst only contains from left ... right-1

                   ,  left  :: Int
                   ,  right :: Int
                   ,  tok   :: Int }
