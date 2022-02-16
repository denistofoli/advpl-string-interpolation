# Advpl-String-Interpolation
Classe ajudante para interpolação de strings

### Exemplo #1
```xBase
    Local oStrInt := StrInterpol():New("Hello %s %s %s",{"Denis", 15, date()})
    Local cOut    := oStrInt:Out()
    
    // cOut: "Hello Denis 15 20220216"
```

### Exemplo #2
```xBase
    Local oStrInt := StrInterpol():New()
    Local cOut    := ""
    
    oStrInt:SetText("Hello %s %s %s")
    oStrInt:SetParams({"Denis", 15, date()})

    cOut := oStrInt:Out()
    // cOut: "Hello Denis 15 20220216"
```

### Parametros
| Parametro | Descrição |
| --- | --- |
| cText | Texto a ser processado |
| aParam | Lista de valores para interpolação |
