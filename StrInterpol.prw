#Include "totvs.ch"
/*/{Protheus.doc} StrInterpol
Interpolation Strings Helper

@type class
@version 1.0

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 16/02/2022

@Obs License MIT (https://opensource.org/licenses/MIT)
source https://github.com/denistofoli/advpl-string-interpolation
/*/
Class StrInterpol
    Data Text
    Data Params

    Method New()
    Method SetText()
    Method SetParams()
    Method Out()
EndClass


/*/{Protheus.doc} StrInterpol::New
Class Contructor

@type method
@version 1.0

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 16/02/2022

@param cText, character, Text to be process
@param aParams, array, List of vales to be interpolated

@example StrInterpol():New("Hello %s",{name})
/*/
Method New(cText,aParams) Class StrInterpol
    ::SetText(cText)
    ::SetParams(aParams)
Return


/*/{Protheus.doc} StrInterpol::SetText
Setter for Text

@type method
@version 1.0

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 16/02/2022

@param cText, character, Text to be process

@example StrInt:SetText("Hello %s")
/*/
Method SetText(cText) Class StrInterpol
    ::Text := Iif(ValType(cText) = "C", cText, "")
Return


/*/{Protheus.doc} StrInterpol::SetParams
Setter for datas list

@type method
@version 1.0

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 16/02/2022

@param aParams, array, List of vales to be interpolated

@example StrInt:SetParams({"Denis"})
/*/
Method SetParams(aParams) Class StrInterpol
    ::Params := Iif(ValType(aParams) = "A", aParams, {})
Return


/*/{Protheus.doc} StrInterpol::Out
Interpolation output

@type method
@version 1.0

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 26/02/2022
@license MIT License

@return character, Interpolation result

@example StrInt:Out()
/*/
Method Out() Class StrInterpol
    Local cRet  := ::Text
    Local cRepl := ""
    Local i     := 0

    For i = 1 to Len(::Params)
        if ValType(::Params[i]) = "C"
            cRepl := AllTrim(::Params[i])
        Elseif ValType(::Params[i]) = "N"
            cRepl := AllTrim(Str(::Params[i]))
        Elseif ValType(::Params[i]) = "D"
            cRepl := dtos(::Params[i])
        Else
            cRepl := ""
        EndIf

        cRet := StrTran(cRet,"%s",cRepl,1,1)
    Next i
Return cRet
