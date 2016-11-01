{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Constantes where
import Data.ByteString.Char8

success :: String
success = "Success"

error' :: String
error' = "Error"

connectionStr :: ByteString
connectionStr = "postgresql://root:password@restaurants.cfydwt2k5iuk.us-west-2.rds.amazonaws.com:5432/restaurant"


puerto :: Int
puerto = 8087
