﻿Get-EventLog –ComputerName al130-dc-02 -LogName Security | Where-Object {$_.EventID -eq 4771} | fl