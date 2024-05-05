Function CompararGenero(ByVal texto As String) As Double

    If StrComp(texto, "Masculino", vbTextCompare) = 0 Then
        CompararGenero = 0
        
    ElseIf StrComp(texto, "Feminino", vbTextCompare) = 0 Then
        CompararGenero = 0.5
    Else
        CompararGenero = 1
    End If
    
End Function


Function CompararResposta(ByVal resposta As String) As Double
    If StrComp(resposta, "Sim", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararResposta = 0
    ElseIf StrComp(resposta, "Não", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararResposta = 0.5
    Else
        CompararResposta = 1
    End If
End Function

Function CompararHoras(ByVal texto As String) As Double
    If StrComp(texto, "Até 2 horas", vbTextCompare) = 0 Then
        CompararHoras = 0
        
    ElseIf StrComp(texto, "Entre 3 e 5 horas", vbTextCompare) = 0 Then
        CompararHoras = 0.25
        
    ElseIf StrComp(texto, "Entre 6 e 10 horas", vbTextCompare) = 0 Then
        CompararHoras = 0.5
        
    ElseIf StrComp(texto, "Mais de 10 horas semanais", vbTextCompare) = 0 Then
        CompararHoras = 0.75
        
    Else
        CompararHoras = 1
    End If
    
End Function

Function CompararIdade(ByVal texto As String) As Double
    If StrComp(texto, "Menos de 12 anos", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararIdade = 0
    ElseIf StrComp(texto, "Entre 12 e 15 anos", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararIdade = 0.16
    ElseIf StrComp(texto, "Entre 15 e 18 anos", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararIdade = 0.3
    ElseIf StrComp(texto, "Entre 19 e 24 anos", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararIdade = 0.5
    ElseIf StrComp(texto, "Entre 25 e 40 anos", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararIdade = 0.6
    ElseIf StrComp(texto, "Mais de 40 anos", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/pt-br/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararIdade = 0.83
    Else
        CompararIdade = 1
    End If
End Function

Function OneHotEncoding(ByVal texto As String) As Variant
    Dim resultado(1 To 7) As Integer
    
    If InStr(texto, "PC") > 0 Then
        resultado(1) = "1"
    Else
        resultado(1) = "0"
    End If
    
    If InStr(texto, "Consoles (por exemplo: Playstation, XBOX)") > 0 Then
        resultado(2) = "1"
    Else
        resultado(2) = "0"
    End If
    
    If InStr(texto, "Smartphone") > 0 Then
        resultado(3) = "1"
    Else
        resultado(3) = "0"
    End If
    
    If InStr(texto, "Portáteis (por exemplo: Nintendo Switch, PSP)") > 0 Then
        resultado(4) = "1"
    Else
        resultado(4) = "0"
    End If
    
    If InStr(texto, "Consoles Retrô (por exemplo: SNES, Mega Drive, Sega Saturn, Odissey, Atari, Television)") > 0 Then
        resultado(5) = "1"
    Else
        resultado(5) = "0"
    End If
    
    If InStr(texto, "Arcades ou Emuladores") > 0 Then
        resultado(6) = "1"
    Else
        resultado(6) = "0"
    End If
    
    If InStr(texto, "Prefiro não responder") > 0 Then
        resultado(7) = "1"
    Else
        resultado(7) = "0"
    End If
    
    OneHotEncoding = resultado
End Function


Function CompararFrequencia(ByVal texto As String) As Double
    If StrComp(texto, "Sempre", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/en-us/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararFrequencia = 0
    ElseIf StrComp(texto, "Eventualmente", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/en-us/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararFrequencia = 0.25
    ElseIf StrComp(texto, "Raramente", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/en-us/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararFrequencia = 0.5
    ElseIf StrComp(texto, "Nunca", vbTextCompare) = 0 Then ' [1](https://learn.microsoft.com/en-us/office/vba/language/reference/user-interface-help/strcomp-function)
        CompararFrequencia = 0.75
    Else
        CompararFrequencia = 1
    End If
End Function

Function Relacionamento(ByVal texto As String) As Double
    If InStr(texto, "Namorado(a) / Parceiro(a)") > 0 Then
        Relacionamento = 0
    ElseIf InStr(texto, "Pais") > 0 Then
        Relacionamento = 0.2
    ElseIf InStr(texto, "Filhos(as)") > 0 Then
        Relacionamento = 0.4
    ElseIf InStr(texto, "Amigos(as)") > 0 Then
        Relacionamento = 0.6
    ElseIf InStr(texto, "Irmãos(ãs)") > 0 Then
        Relacionamento = 0.8
    Else
        Relacionamento = 1
    End If
End Function

Function OneHotEncoding_13(ByVal texto As String) As Variant
    Dim vetor(1 To 9) As Integer
    
    If InStr(texto, "Jogabilidade") > 0 Then
        vetor(1) = 1
    Else
        vetor(1) = 0
    End If
    
    If InStr(texto, "Diversão") > 0 Then
        vetor(2) = 1
    Else
        vetor(2) = 0
    End If
    
    If InStr(texto, "Desafio") > 0 Then
        vetor(3) = 1
    Else
        vetor(3) = 0
    End If
    
    If InStr(texto, "Um bom enredo") > 0 Then
        vetor(4) = 1
    Else
        vetor(4) = 0
    End If
    
    If InStr(texto, "Imersão / Fuga da realidade") > 0 Then
        vetor(5) = 1
    Else
        vetor(5) = 0
    End If
    
    If InStr(texto, "Bons gráficos e sons") > 0 Then
        vetor(6) = 1
    Else
        vetor(6) = 0
    End If
    
    If InStr(texto, "Exploração") > 0 Then
        vetor(7) = 1
    Else
        vetor(7) = 0
    End If
    
    If InStr(texto, "Socialização") > 0 Then
        vetor(8) = 1
    Else
        vetor(8) = 0
    End If
    
    If InStr(texto, "Outros") > 0 Then
        vetor(9) = 1
    Else
        vetor(9) = 0
    End If
    
    OneHotEncoding_13 = vetor
End Function

Function OneHotEncoding_14(ByVal texto As String) As Variant
    Dim vetor(1 To 10) As Integer
    
    If InStr(texto, "Avanço, progresso, poder") > 0 Then
        vetor(1) = 1
    Else
        vetor(1) = 0
    End If
    
    If InStr(texto, "Mecânicas de jogo, números, otimizações") > 0 Then
        vetor(2) = 1
    Else
        vetor(2) = 0
    End If
    
    If InStr(texto, "Competição, desafios") > 0 Then
        vetor(3) = 1
    Else
        vetor(3) = 0
    End If
    
    If InStr(texto, "Socialização") > 0 Then
        vetor(4) = 1
    Else
        vetor(4) = 0
    End If
    
    If InStr(texto, "Colaboração, grupo, trabalho em equipe") > 0 Then
        vetor(5) = 1
    Else
        vetor(5) = 0
    End If
    
    If InStr(texto, "Descobertas, exploração") > 0 Then
        vetor(6) = 1
    Else
        vetor(6) = 0
    End If
    
    If InStr(texto, "RPG, enredo, história dos personagens") > 0 Then
        vetor(7) = 1
    Else
        vetor(7) = 0
    End If
    
    If InStr(texto, "Customização, aparência, estilo") > 0 Then
        vetor(8) = 1
    Else
        vetor(8) = 0
    End If
    
    If InStr(texto, "Escape, relaxamento") > 0 Then
        vetor(9) = 1
    Else
        vetor(9) = 0
    End If
    
    If InStr(texto, "Outros") > 0 Then
        vetor(10) = 1
    Else
        vetor(10) = 0
    End If
    
    OneHotEncoding_14 = vetor
End Function

Function OneHotEncoding_15(ByVal texto As String) As Variant
    Dim vetor(1 To 4) As Integer
    
    If InStr(texto, "De forma visual") > 0 Then
        vetor(1) = 1
    Else
        vetor(1) = 0
    End If
    
    If InStr(texto, "De forma auditiva") > 0 Then
        vetor(2) = 1
    Else
        vetor(2) = 0
    End If
    
    If InStr(texto, "De forma cinestésica (relacionada aos sentidos motores)") > 0 Then
        vetor(3) = 1
    Else
        vetor(3) = 0
    End If
    
    If InStr(texto, "Não sei / Prefiro não responder") > 0 Then
        vetor(4) = 1
    Else
        vetor(4) = 0
    End If
    
    OneHotEncoding_15 = vetor
End Function

Function Sentimento(ByVal texto As String) As Double
    If InStr(texto, "Muito bem") > 0 Then
        Sentimento = 0
    ElseIf InStr(texto, "Bem") > 0 Then
        Sentimento = 0.2
    ElseIf InStr(texto, "Indiferente") > 0 Then
        Sentimento = 0.4
    ElseIf InStr(texto, "Mal") > 0 Then
        Sentimento = 0.6
    ElseIf InStr(texto, "Muito mal") > 0 Then
        Sentimento = 0.8
    Else
        Sentimento = 1
    End If
End Function

Function comparaAtrapalhar(ByVal texto As String) As Double
    If InStr(texto, "Não atrapalham") > 0 Then
        comparaAtrapalhar = 0
    ElseIf InStr(texto, "Atrapalham um pouco") > 0 Then
        comparaAtrapalhar = 0.3
    ElseIf InStr(texto, "Atrapalham muito") > 0 Then
        comparaAtrapalhar = 0.6
    Else
        comparaAtrapalhar = 1
    End If
End Function

Function OneHotEncoding_20(ByVal texto As String) As Variant
    Dim vetor(1 To 7) As Variant
    
    If InStr(texto, "Sedentarismo") > 0 Then
        vetor(1) = 1
    Else
        vetor(1) = 0
    End If
    
    If InStr(texto, "Obesidade") > 0 Then
        vetor(2) = 1
    Else
        vetor(2) = 0
    End If
    
    If InStr(texto, "Problemas de postura") > 0 Then
        vetor(3) = 1
    Else
        vetor(3) = 0
    End If
    
    If InStr(texto, "Dores no corpo (costas, pescoço, braços, pulsos e mãos)") > 0 Then
        vetor(4) = 1
    Else
        vetor(4) = 0
    End If
    
    If InStr(texto, "Menor interesse nas relações sociais") > 0 Then
        vetor(5) = 1
    Else
        vetor(5) = 0
    End If
    
    If InStr(texto, "Menor controle emocional e cognitivo") > 0 Then
        vetor(6) = 1
    Else
        vetor(6) = 0
    End If
    
    If InStr(texto, "Outros") > 0 Then
        vetor(7) = 1
    Else
        vetor(7) = 0
    End If
    
    OneHotEncoding_20 = vetor
End Function


Function ConcatenarTexto(rng As Range) As String
    Dim cell As Range
    Dim concat As String
    
    For Each cell In rng
        concat = concat & Replace(cell.Value, "º", "") & " " ' Substitui 'º' por uma string vazia
    Next cell
    
    ConcatenarTexto = Trim(concat)
End Function


Function RemoverSimbolo(ByVal texto As String, ByVal simbolo As String) As String
    RemoverSimbolo = Replace(texto, simbolo, "")
End Function



