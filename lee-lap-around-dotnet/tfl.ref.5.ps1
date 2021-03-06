# Get Input
$Value = Read-Host -Prompt 'Enter a 64 bit integer'

# Create a return value
[System.Int64] $Return = 0

# Test the input
If ([System.Int64]::TryParse($Value, [ref] $Return)) {
    Write-Output "[$Value] IS parsable into a 64-bit integer"
}
Else {
    Write-Output "[$Value] IS NOT parsable into a 64-bit integer"
}
#  Expected output when this fragment is used:
#
#  Enter a 64 bit integer: 42
#  [42] IS parsable into a 64-bit integer
#
#  Enter a 64 bit integer: 420420420420424242042042
#  [420420420420424242042042] IS NOT parsable into a 64-bit integer


