# Advpl-String-Interpolation
Advpl string interpolation class helper

### Example #1
```xBase
    Local oStrInt := StrInterpol():New("Hello %s number %s today is %s",{"Denis", 15, date()})
    Local cOut    := oStrInt:Out()
    
    // cOut: "Hello Denis numeber 15 today is 20220216"
```

### Example #2
```xBase
    Local oStrInt := StrInterpol():New()
    Local cOut    := ""
    
    oStrInt:SetText("Hello %s number %s today is %s")
    oStrInt:SetParams({"Denis", 15, date()})

    cOut := oStrInt:Out()
    // cOut: "Hello Denis numeber 15 today is 20220216"
```

### Parameters
| Parameter | Description |
| --- | --- |
| cText | Text to be process |
| aParam | List of vales to be interpolated |


[Read me in Brazillian Portuguese](README-ptbr.md)