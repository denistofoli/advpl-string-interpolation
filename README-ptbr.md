# Advpl-String-Interpolation
Classe ajudante para interpolação de strings

### Exemplo #1
```xBase
    Local oStrInt := StrInterpol():New("Hello %s number %s today is %s",{"Denis", 15, date()})
    Local cOut    := oStrInt:Out()
    
    // cOut: "Hello Denis numeber 15 today is 20220216"
```

### Exemplo #2
```xBase
    Local oStrInt := StrInterpol():New()
    Local cOut    := ""
    
    oStrInt:SetText("Hello %s number %s today is %s")
    oStrInt:SetParams({"Denis", 15, date()})

    cOut := oStrInt:Out()
    // cOut: "Hello Denis numeber 15 today is 20220216"
```

### Parametros
| Parametro | Descrição |
| --- | --- |
| cText | Texto a ser processado |
| aParam | Lista de valores para interpolação |
