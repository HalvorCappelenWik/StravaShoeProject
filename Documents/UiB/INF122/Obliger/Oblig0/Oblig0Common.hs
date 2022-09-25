module Oblig0Common where

-- Compute the average of a list of values
average :: (Fractional a) => [a] -> a
average xs = sum xs / fromIntegral (length xs)

-- A simple lowpass filter with adjustable cut-off
lpf :: (Fractional a) => Integer -> [a] -> a
lpf = _

-- A simple high pass filter with adjustable cut-off
hpf :: (Floating a) => Integer -> [a] -> a
hpd = _

-- Extend a finite signal with an infinite constant past
extend ::  Num a => [a] -> [a]
extend = _


-- Apply a filter to a list of values
applyFilter :: (Num a, Floating a) => ([a] -> a) -> [a] -> [a]
applyFilter fil = map fil . iterate tail . extend


-- Count the number of zero-crossings in a signal represented by a list
zeroCrossings :: (Num a, Ord a) => [a] -> Integer
zeroCrossings [] = 0 
zeroCrossings (x:y:xs) = n + zeroCrossings xs where n = if (x > 0 && x < 0) || (x < 0 && y > 0) then 1 else 0 

lowPassCutoff :: Integer
lowPassCutoff = _
highPassCutoff :: Integer
highPassCutoff = _


--interact 
