module Typeclasses.Representable
  ( Representable (..)
  ) where


class Representable a where
  repr :: a -> Char
