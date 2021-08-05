{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Prelude (Show(..), undefined, (-))

-- Definicion de los numerso naturales
-- de Peano
data Natural = C | Succ Natural
    deriving Show

-- Regla que permite convertir
-- un numero ordinario a un
-- numero natural de peano
aNatural 0 = C
aNatural n = Succ (aNatural (n - 1))

-- Definicion de la operacion
-- suma para los naturales de
-- peano
n + C = n
C + n = n
n + (Succ a) = Succ (n + a)

-- Transparencia Referencial (Referential Transparency)
-- Ejemplo:
-- (Succ C) + (Succ (Succ C))
-- = Succ (n + a) = Succ (Succ C + Succ C)
-- | n = Succ C, a = Succ C
-- = Succ (Succ (n + a)) = Succ (Succ (Succ C + C))
-- | n = Succ C, a = C
-- = Succ (Succ (n)) = Succ (Succ (Succ C))
-- | n = Succ C

main = undefined