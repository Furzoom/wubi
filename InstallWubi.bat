CD /D %~DP0

IF NOT EXIST "TableTextServiceSimplifiedZhengMa.txt" EXIT /B


TAKEOWN /F "C:\Program Files\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt" /A
icacls "C:\Program Files\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt" /grant %USERNAME%:(D,WDAC)
DEL "C:\Program Files\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt"
COPY "TableTextServiceSimplifiedZhengMa.txt" "C:\Program Files\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt"


IF NOT %PROCESSOR_ARCHITECTURE%==AMD64 EXIT /B

TAKEOWN /F "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt" /A
icacls "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt" /grant %USERNAME%:(D,WDAC)
DEL "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt"
COPY "TableTextServiceSimplifiedZhengMa.txt" "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceSimplifiedZhengMa.txt"

PAUSE
