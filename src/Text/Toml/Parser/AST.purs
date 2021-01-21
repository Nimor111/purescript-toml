module Text.Toml.Parser.AST where

import Data.DateTime (DateTime)
import Data.Map.Internal (Map)

data Piece
  = Bare String
  | Quoted String

newtype TomlKey
  = Key (Array Piece)

data TomlValue
  = StringValue String
  | IntegerValue Int
  | FloatValue Number
  | BooleanValue Boolean
  | DateValue DateTime
  | ArrayValue (Array TomlValue)
  | InlineTableValue (Map TomlKey TomlValue)

data TomlTable
  = TomlTable TomlKey (Map TomlKey TomlValue)

type TomlArrayOfTables
  = Array TomlTable
