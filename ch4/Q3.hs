module Q3 where 

-- safe root reciprocal 
data Optional a = Works a | DoesntWork  deriving (Show)

(>=>) :: (a -> Optional b) -> (c -> Optional d) -> (a -> Optional d)
m1 >=> m2 = \x -> 
        let 
                maybeA = m1 x 
        in 
                case maybeA of 
                        Works val -> 
                                m2 val 
                        DoesntWork -> 
                                maybeA 

return :: a -> Optional a 
return x = Just x 

safe_root_reciprocal :: Float -> Optional Float 
safe_root_reciprocal x = 
        if x <= 0 then  DoesntWork else Works $ sqrt (1/x)

