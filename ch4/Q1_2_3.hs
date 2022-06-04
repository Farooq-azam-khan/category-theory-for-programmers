module Q1_2_3 where 

-- safe root reciprocal 
data Optional a = Works a | DoesntWork  deriving (Show)

(>=>) :: (a -> Optional b) -> (b -> Optional d) -> (a -> Optional d)
m1 >=> m2 = \x -> 
        case m1 x of 
                Works val -> 
                        m2 val 
                DoesntWork -> 
                      DoesntWork 

return :: a -> Optional a 
return x = Works x 

safe_root :: Float  -> Optional Float
safe_root x = if x >= 0 then Works $ sqrt x else DoesntWork

safe_reciprocal :: Float -> Optional Float
safe_reciprocal x = if x == 0 then DoesntWork else Works $ 1/x

safe_root_reciprocal :: Float -> Optional Float 
safe_root_reciprocal = 
        safe_root >=> safe_reciprocal 
--        if x <= 0 then  DoesntWork else Works $ sqrt (1/x)


