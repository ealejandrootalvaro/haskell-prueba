{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Constantes where
import Data.ByteString.Char8

success :: String
success = "Success"

error' :: String
error' = "Error"

connectionStr :: ByteString
connectionStr = "postgres://ndvmdfyexshzni:bXvG8_ldqY9bGEMvDK9qY-tZvF@ec2-54-235-207-226.compute-1.amazonaws.com:5432/de2if8v7djdfmi"

puerto :: Int
puerto = 8080

mensajeEmail :: String
mensajeEmail = "Su cuenta se autodestruira en 5 segundos,\n\nIngrese con la siguiente contraseña para detener la explosion.\n\nContraseña: "
