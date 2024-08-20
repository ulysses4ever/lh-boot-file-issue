{-@ LIQUID "--reflection"  @-}
-- {-@ LIQUID "--diff"        @-}
{-@ LIQUID "--ple"         @-}
{-@ LIQUID "--short-names" @-}

-- {-@ LIQUID "--verbose" @-}
{-@ LIQUID "--higherorder" @-}

{- @ LIQUID "--no-environment-reduction"      @-}
{-@ LIQUID "--prune-unsorted" @-}

{-@ infixr ++  @-}  -- TODO: Silly to have to rewrite this annotation!

{-# LANGUAGE CPP           #-}
{-# LANGUAGE GADTs         #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LinearTypes   #-}

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
