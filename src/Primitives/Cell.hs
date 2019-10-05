module Primitives.Cell
  ( Cell (..)
  ) where


import Typeclasses.Representable


data Cell = Cell


instance Representable Cell where
  repr = const '.'
