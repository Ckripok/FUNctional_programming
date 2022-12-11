-- 'Main' - пространство имён для классов и методов Главного модуля системы.

module Main (main) where

-- 'IO' - необходимо для вывода в консоль

main :: IO () 

-- do - специальныq синтаксическиq сахар, который называется do-нотация. Выражения do-блока выполняются последовательно, одно за другим.
main = do 

    print "Enter 'a':"

-- 'getLine' - действие ввода-вывода, которое содержит результирующий тип – String.

    getA <- getLine
    print "Enter 'b':"
    getB <- getLine
    print "Enter 'c':"
    getC <- getLine
    print "Let's define the form of our equation"

-- 'let' - объявление/определение выражения. Не привязан к определённому месту как where-выражения.

    let polynom = (read getA :: Float, read getB :: Float, read getC :: Float)
    print.outputRoots $ findRoots polynom

-- "findRoots" - типичная именованная функция, (...) - входные параметры, -> - 

findRoots  :: (Float, Float, Float) -> RFound  -- объявление функции

findRoots  (a, b, c)
    | a == 0 || d < 0 = RNo| d > 0 = RTwo {x1 = x1, x2 = x2} -- определение функции

-- 'otherwise' - в прелюдии известен как True. Конечно, можно написать вместо «otherwise» «True», но тру олды прогеры сочтут это дурным тоном!
-- 'where' - разбивает все выражение на маленькие части 

    | otherwise = ROne {x = x1} where

        d = (b*b) - (4 * a * c) -- маленькая часть
        x1 = (-b - sqrt d) / (2 * a) -- маленькая часть
        x2 = (-b + sqrt d) / (2 * a) -- маленькая часть

-- 'data' - с него начинается любое определение нового типа.

data RFound = RTwo {x1, x2 :: Float} | ROne {x :: Float} | RNo

-- 'outputRoots' - в зависимости от того сколько корней найдется в функции, избирется один из данных ответов, которые заprintуются выше

outputRoots :: RFound -> String
outputRoots RNo = "Ops! No Solutions"
outputRoots (ROne x) = "YEP! One root:" ++ show x
outputRoots (RTwo x1 x2) = "OMG! TWO root! " ++ "x1 = " ++ show x1 ++ "; x2 = " ++ show x2

--А теперь внимание АНЕКДОТ!!
--Программист haskell выбросился из окна, но для всех это 
--выглядело, будто он аккуратно с улицы прыгнул в окно