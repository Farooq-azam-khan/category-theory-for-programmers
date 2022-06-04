module Q3 where 

-- safe root reciprocal 
data Optional a = Works a | DoesntWork  deriving (Show)

safe_root_reciprocal :: Float -> Optional Float 
safe_root_reciprocal x = 
        if x <= 0 then  DoesntWork else Works $ sqrt (1/x)
