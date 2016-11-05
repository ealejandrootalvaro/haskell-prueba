{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Constantes where

import           Network.HaskellNet.IMAP.SSL
import           Network.HaskellNet.SMTP.SSL as SMTP

import           Network.HaskellNet.Auth (AuthType(LOGIN))
import qualified Data.ByteString.Char8 as B



success :: String
success = "Success"

error' :: String
error' = "Error"

connectionStr :: B.ByteString
connectionStr = "postgres://ndvmdfyexshzni:bXvG8_ldqY9bGEMvDK9qY-tZvF@ec2-54-235-207-226.compute-1.amazonaws.com:5432/de2if8v7djdfmi"

puerto :: Int
puerto = 8087



username = "ealejandro.otalvaro@udea.edu.co"
password = "gekoli94"
recipient = "ealejandro.otalvaro@gmail.com"



smtpTest = doSMTPSTARTTLS "smtp.gmail.com" $ \c -> do
    authSucceed <- SMTP.authenticate LOGIN username password c
    if authSucceed
      then sendPlainTextMail recipient username subject body c
      else print "Authentication error."
  where subject = "Test message"
        body    = "This is a test message"

sendMensaje :: IO ()
sendMensaje = smtpTest >> return ()
