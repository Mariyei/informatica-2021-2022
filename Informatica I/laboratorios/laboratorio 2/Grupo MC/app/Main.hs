{-# LANGUAGE NoImplicitPrelude #-}

module Main where
import Prelude (IO, Show, undefined)


data Natural = Cero | Succ Natural deriving Show

Cero + m = m
n + Cero = n
n + (Succ a) = Succ (n + a)

--Reglas de multiplicación
n * Cero = Cero
n * Succ Cero = n
n * Succ a = n + (n * a)


sonIguales Cero Cero = Succ Cero
sonIguales Cero n = Cero
sonIguales n Cero = Cero
sonIguales (Succ a) (Succ b) = sonIguales a b 

--Definir Fibonacci para factorial

fib Cero = Cero 
fib (Succ Cero) = Succ Cero 
fib (Succ (Succ a)) = fib (Succ a) + fib a 

--Definición de factorial
factorial Cero = Succ Cero
factorial (Succ Cero) = Succ Cero
--factorial (Succ a) = Succ a * factorial (a)
factorial (Succ(Succ a)) = Succ(Succ a) * factorial (Succ a) 

main :: IO ()
main = undefined