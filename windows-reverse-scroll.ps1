# 提示輸入 device instance path (input device instance path)
    $deviceInstancePath=Read-Host -Prompt 'Input your device instnace path'
    # 指定 registry 位置 (set registry path)
    $RegKey="HKLM:\SYSTEM\CurrentControlSet\Enum\"+$deviceInstancePath+"\Device Parameters"

    # 顯示目前設定值(show current setting)
    Get-ItemProperty -path $regKey -Name FlipFlopWheel
    # 設定捲軸反轉(set reverse scrll)
    Set-ItemProperty -path $regKey -Name FlipFlopWheel -Value 1
    # 確認設定結果 (confirm new setting)
    Get-ItemProperty -path $regKey -Name FlipFlopWheel