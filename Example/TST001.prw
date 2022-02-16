#Include "totvs.ch"
/*/{Protheus.doc} Tst001
Example using StrInterpol

@type function
@version 1.0
@license MIT License

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 16/02/2022
/*/
User Function Tst001()
    Local StrInt := StrInterpol():New("Hello %s number %s today is %s",{"Denis", 15, date()})
    Local cOut   := StrInt:Out()

    Conout(cOut)
Return nil
