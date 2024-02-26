#SingleInstance prompt

OnExit, saida
global eab := ComObjCreate("Excel.Application")
global ab:= eab.Workbooks.Open("LOCAL DO ARQUIVO", 1)
eab.Visible := visibilidade = 1 ? True : False

iNcol := 10
sClientes := ["Array with colums to be verified ex:A6"]
sStatus := ["Array with colums to be verified ex:g6"]

for i, sCol in sStatus {
    status := eab.Range(sCol).Value
    if (status == "NAO EM CONFORMIDADE") {
        cliente := eab.Range(sClientes[i]).Value 
        MsgBox Nobreak precisando de manutenção entrar em contato com cliente: %cliente%
    }
}

// I created this program to help me on verify a excel sheet automaticaly
