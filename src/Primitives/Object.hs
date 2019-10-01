module Primitives.Object
  (
  ) where


import Data.Map.Strict


class Object a where
  properties :: a -> [Property]


class Named a where
  name :: a -> String


data Property = Property String Int
  deriving (Show, Eq)



