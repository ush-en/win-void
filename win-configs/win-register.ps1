# =============================================================================== #
# Change Keyboard Rate:		                                                        #
# =============================================================================== #
Set-Location "HKCU:\Control Panel\Accessibility\Keyboard Response"
Set-ItemProperty -Path . -Name AutoRepeatDelay       -Value 180
Set-ItemProperty -Path . -Name AutoRepeatRate        -Value 8
Set-ItemProperty -Path . -Name DelayBeforeAcceptance -Value 0
Set-ItemProperty -Path . -Name BounceTime            -Value 0
Set-ItemProperty -Path . -Name Flags                 -Value 59
