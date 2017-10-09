
# Strings und deren Verkettung und Wiederholungen

Strings werden in einfachen Anführungsstrichen (') oder auch in doppelten Anführungsstrichen (") erstellt.


```python
type('Alice')
```




    str




```python
type("Bob")
```




    str



## Verkettung

Der String kann mit den `Stringverkettungsoperator` _+_ mehrere __Strings__ miteinander verketten.


```python
'Alice' + 'Bob'
```




    'AliceBob'




```python
'Alice' + 42
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-4-731cb49fd516> in <module>()
    ----> 1 'Alice'+42
    

    TypeError: Can't convert 'int' object to str implicitly



```python
'Alice' + str(42)
```




    'Alice42'



## Stringwiederholungsoperator


```python
'Alice' * 5
```




    'AliceAliceAliceAliceAlice'



Den Operator * kann als Multiplikator (zwischen zwei numerischen Werten) oder zwischen einem String- und einem Integerwert eingesetzt (zur Stringwiederholung) werden. In allen anderen Fällen zeigt Python eine Fehlermeldung an:


```python
'Alice' * 'Bob'
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-6-e024c357881e> in <module>()
    ----> 1 'Alice'*'Bob'
    

    TypeError: can't multiply sequence by non-int of type 'str'



```python
'Alice' * 5.0
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-7-15412f3cf154> in <module>()
    ----> 1 'Alice'*5.0
    

    TypeError: can't multiply sequence by non-int of type 'float'


 Mehr zu Strings im Abschnitt [String-Interna](http://www.python-kurs.eu/python3_variablen.php) auf www.python-kurs.eu

# Variablen

# Variablennamen

1. Der Name darf nur aus einem Wort bestehen.
2. Der Name darf nur aus Buchstaben, Ziffern und dem Unterstrich bestehen.
3. Der Name darf nicht mit einer Zahl beginnen.
4. Python ist casesensitive.
5. Variablen fange (vereinbarungsgemäß) mit einem kleien Buchstaben an.
6. Nach PEP8 sollen zusammengesetzte Wörter mit einem Unterstriche zusammengefasst.

Siehe auch: http://www.python-kurs.eu/python3_variablen.php (Abschnitt Variablen)


```python
spam = 42
spam
```




    42




```python
eggs = 2
```


```python
spam + eggs
```




    44




```python
spam = spam + 4
spam
```




    46




```python
spam = 'Hallo'
spam
```




    'Hallo'




```python
spam = 42
eggs = spam
```


```python
id(spam)
```




    139666157870912




```python
id(eggs)
```




    139666157870912




```python
eggs = 2
id(eggs)
```




    139666157869632




```python
id(spam)
```




    139666157870912


