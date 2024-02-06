--create inpFunc
inpFunc a b = [a..b]

--Define applicatorFunc
applicatorFunc inpFunc s a b | s == 's' = sum (inpFunc a b)
applicatorFunc inpFunc s a b | otherwise = (sum (inpFunc a b))/5


main = do
    let result = applicatorFunc inpFunc 'a' 1 5--Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))
