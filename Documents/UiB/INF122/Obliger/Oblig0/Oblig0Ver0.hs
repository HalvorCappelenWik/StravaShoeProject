module Main where

import Oblig0Common
  ( applyFilter,
    highPassCutoff,
    hpf,
    lowPassCutoff,
    lpf,
    zeroCrossings,
  )
import System.IO

main = do
  -- Read user data
  input <- getContents
  -- Process data using filters
  let datapoints = map read (lines input) :: [(Double, Double, Double)]
  let summedData = map (\(a, b, c) -> a + b + c) datapoints
  let dataLength = length summedData
  let processedData =
        applyFilter (hpf highPassCutoff) $
          applyFilter (lpf lowPassCutoff) $
            reverse summedData
  -- Count the number of steps taken
  let stepCount = (`div` 2)
                $ zeroCrossings
                $ reverse
                $ take dataLength processedData
  print stepCount
