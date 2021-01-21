module Main where

import Prelude hiding (between)
import Control.Monad (class Monad)
import Data.Either (Either(..))
import Data.Eq (class Eq)
import Data.Show (class Show)
import Effect (Effect)
import Effect.Class.Console (log, logShow)
import Text.Parsing.Parser (Parser, ParserT(..), runParser)
import Text.Parsing.Parser.Combinators (between)
import Text.Parsing.Parser.String (string)

parseTest :: forall s a. Show a => Eq a => s -> Parser s a -> Effect Unit
parseTest input p = case runParser input p of
  Right actual -> do
    logShow actual
  Left err -> logShow err

parens :: forall m a. Monad m => ParserT String m a -> ParserT String m a
parens = between (string "((") (string "))")

main :: Effect Unit
main = parseTest "((ivan))" $ parens (string "ivan")
