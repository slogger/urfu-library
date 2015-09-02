## Типы данных

Новый тип данных определяется ключевым словом `data` 
```haskell
data Day = Mon | Tue | (и тд) | Sun deriving(Eq, Ord, Enum, Bounded, Read, Show)

weekend :: Day -> Bool
weekend Sat = True
weekend Sun = True
weekend _ = False
```
