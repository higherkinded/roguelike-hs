module Game.State
  ( GameState
  ) where


newtype GameState = GameState
  { level :: String
  }
