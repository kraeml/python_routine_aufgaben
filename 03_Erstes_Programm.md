
# Erstes Programm


```python
print('Hallo Welt!')
```

    Hallo Welt!



```python
print('Wie heißen Sie?')
```

    Wie heißen Sie?



```python
# Frage nach den Namen
myName = input()
```

    michl



```python
print('Schön dich kennen zu lernen, ' + myName)
```

    Schön dich kennen zu lernen, michl



```python
print('Länge deines Namens ist: ')
print(len(myName))
```

    Länge deines Namens ist: 
    5



```python
print('Wie alt bist Du?')
```

    Wie alt bist Du?



```python
myAge = input()
```

    49



```python
print('Du wirst nächstes Jahr ' + str(int(myAge) +1) +' Jahre alt')
```

    Du wirst nächstes Jahr 50 Jahre alt


## Kommentare

* Python ignoriert Kommentare die mit einem `#` anfangen.
* Python ignoriert __Leerzeilen__.

## Die Funktion print()

Die Funktion print() gibt den Stringwert auf dem Bildschirm aus.

## Die Funktion input()

Die Funktion input() wartet auf Benutzereingaben die mit Enter abgeschlossen werden. Der Eingabewert wird als String zurückgegeben.

## Die Funktion len()

Die Funktion len() kann ein String übergeben werden. Der Rückgabewert ist ein Integer, der die Anzahl der Zeichen im String angibt.


```python
len('hallo')
```




    5




```python
len('Die Funktion len() kann ein String übergeben werden.')
```




    52



## Die Funktion str(), int() und float()

Die Funktionen str(), int() und float() liefen einen String-, Integer- bzw. Floatkommaversion des Übergabewertes.


```python
 str(0)
```




    '0'




```python
str(-3.14)
```




    '-3.14'




```python
int('42')
```




    42




```python
int('-99')
```




    -99




```python
int(1.25)
```




    1




```python
int(1.99)
```




    1




```python
float('3.14')
```




    3.14




```python
 float('99')
```




    99.0


