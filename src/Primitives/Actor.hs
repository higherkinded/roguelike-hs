module Primitives.Actor
  ( Actor (..)
  , ActorStats (..)
  ) where


data ActorStats = ActorStats
  { strength     :: Int
  , dexterity    :: Int
  , intelligence :: Int
  , constitution :: Int
  }


data Actor = Actor
  { stats :: ActorStats
  }
