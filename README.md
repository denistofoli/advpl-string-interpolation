# Advpl-String-Interpolation
Advpl string interpolation class helper

### Example #1
```xBase
    Local oStrInt := StrInterpol():New("Hello %s %s %s",{"Denis", 15, date()})
    Local cOut    := oStrInt:Out()
    
    // cOut: "Hello Denis 15 20220216"
```

### Example #2
```xBase
    Local oStrInt := StrInterpol():New()
    Local cOut    := ""
    
    oStrInt:SetText("Hello %s %s %s")
    oStrInt:SetParams({"Denis", 15, date()})

    cOut := oStrInt:Out()
    // cOut: "Hello Denis 15 20220216"
```

### Parameters
| Parameter | Description |
| --- | --- |
| cText | Text to be process |
| aParam | List of vales to be interpolated |
