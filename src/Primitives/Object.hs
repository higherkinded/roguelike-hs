module Primitives.Object
  (
  ) where


import Primitives.Meta
import Primitives.Representation


data Object =
  StaticObject  { meta           :: Meta
                , representation :: Representation
                } |
  DynamicObject { meta           :: Meta
                , mass           :: Int
                , representation :: Representation
                }
