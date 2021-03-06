import qualified Data.Map as Map

-- type synonym
data LockerState = Taken | Free deriving (Show, Eq)
type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case Map.lookup lockerNumber map of
 Nothing -> Left $ "Locker " ++ show lockerNumber ++ " doesn't exist"

 Just (state, code) -> if state /= Taken
  then Right code
  else Left $ "Locker " ++ show lockerNumber ++ " is already taken"

lockers :: LockerMap
lockers = Map.fromList[(100, (Taken, "A1")), (101, (Free, "A2")), (102, (Free, "A3"))]

main = do
 print $ lockerLookup 100 lockers -- Left "Locker 100 is already taken"
 print $ lockerLookup 101 lockers -- Right "A2"
 print $ lockerLookup 102 lockers -- Right "A3"
 print $ lockerLookup 103 lockers -- Left "Locker 103 doesn't exist"