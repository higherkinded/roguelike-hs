module Primitives.Entity
  ( Entity (..)
  , Property (..)
  ) where


import Primitives.Meta
import Primitives.Representation


type Interaction = Entity -> Entity -> (Entity, Entity)


data Entity = Entity
  { meta       :: Meta
  , properties :: [Property]
  }


data Property
  = Collision   { collides    :: Bool
                , onCollision :: Interaction }
  
  | Visibility  { visible        :: Bool
                , representation :: Representation }
    
  | Dynamics    { dynamic :: Bool }
  
  | Passability { passable :: Bool
                , onPass   :: Interaction }
    
  | Actor       { stats :: () }
