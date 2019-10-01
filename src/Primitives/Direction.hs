module Primitives.Direction
  ( Vector (..)
  , self
  , north, west, south, east
  , nw, ne, sw, se
  , toDistance
  , merge
  , invert
  , mirrorX
  , mirrorY
  ) where


import Data.Bifunctor


data Vector a b
  = Vector a b
  deriving (Show, Eq)


type Vec a = Vector a a


instance Functor (Vector a) where
  fmap f (Vector a b) = Vector a (f b)


instance Bifunctor Vector where
  bimap f g (Vector a b) = Vector (f a) (g b)


toDistance :: (Num a, Ord a) => Vec a -> a
toDistance (Vector a b) = max a b


merge :: Num a => Vec a -> Vec a -> Vec a
merge (Vector x y) (Vector x' y') = Vector (x + x') (y + y')


anti :: Num a => a -> a
anti = (*(-1))


mirrorX, mirrorY :: Num a => Vec a -> Vec a
mirrorX = bimap anti id
mirrorY = bimap id anti


invert :: Num a => Vec a -> Vec a
invert = mirrorX . mirrorY


self = Vector 0 0 :: Vec Integer


north, west, south, east :: Vec Integer
(north, west, south, east) =
  ( Vector  0   1
  , Vector (-1) 0
  , Vector  0 (-1)
  , Vector  1   0)


longitudinal = [west, east]
latitudinal  = [north, south]


nw, ne, sw, se :: Vec Integer
[nw, ne, sw, se] = [merge x y | x <- latitudinal, y <- longitudinal]
