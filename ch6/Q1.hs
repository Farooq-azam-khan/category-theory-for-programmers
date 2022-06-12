maybeToEither :: Maybe a -> Either () a 
maybeToEither Nothing = Left () 
maybeToEither (Just x) = Right x

eitherToMaybe :: Either () a -> Maybe a 
eitherToMaybe (Left _) = Nothing 
eitherToMaybe (Right x) = Just x 

