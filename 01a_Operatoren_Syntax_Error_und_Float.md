
# Lösungen bzw. Wieterführendes zu Grundlagen

Aufgabe Operatoren:

| Operator | Operation                             | Beispiel | Ergebnis |
|----------|---------------------------------------|-----------|---------|
|`**`      | Exponent                              | `2 ** 3`  | 8       |
|`%`       | Modulus/Rest                          | `22 % 8`  | 6       |
|`//`      | Integerdivision/abgerundeter Quotient | `22 // 8` | 2  	 |
|`/`       | Division                              | `22 / 8`  | 2.75    |
|`*`       | Multiplikation                        | `3 * 5  ` | 15      |
|`-`       | Subtraktion                           | `5 - 2  ` | 3       |
|`+`       | Addition                              | `2 + 2  ` | 4       |

Die Rangfolge der Operatoren ist wie in der Mathematik (Exponent vor Punkt; Punkt vor Strich).


```python
2 + 3 * 6

```




    20




```python
(2 + 3) * 6
```




    30




```python
48565878 * 578453
```




    28093077826734




```python
2 ** 8
```




    256




```python
23 / 7
```




    3.2857142857142856




```python
23 // 7
```




    3




```python
23 % 7
```




    2




```python
-23 % 7
```




    5




```python
-23 // 7
```




    -4




```python
(-23 // 7) * 7
```




    -28




```python
2 + 2
```




    4




```python
(5 - 1) * ((7 + 1) / (3 - 1))
```




    16.0



## Syntax Error Beispiele


```python
5 +
```


      File "<ipython-input-10-c03da42f7f4c>", line 1
        5 +
           ^
    SyntaxError: invalid syntax




```python
42 + 5 + * 2
```


      File "<ipython-input-11-46dd2e1d2da1>", line 1
        42 + 5 + * 2
                 ^
    SyntaxError: invalid syntax



## Flieskommazahlen


```python
5.0
```




    5.0



__Achtung__


```python
5,0
```




    (5, 0)




```python
type((5,0))
```




    tuple



Was ein `tuple` ist folgt noch.
