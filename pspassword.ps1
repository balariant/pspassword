$letter='A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        '0','1','2','3','4','5','6','7','8','9'

$length=16

$separator='-'

$out=''

For ($i=0; $i -lt $length; ++$i)
{
  $d=Get-Random -Minimum 0 -Maximum ($letter.Length-1)
  
  $out+=$letter[$d]

  If((($i+1)%4 -eq 0) -and (($i+1) -ne $length))
  {
    $out+=$separator
  }
}

Write-Output "Alphabet length is ", $letter.Length.ToString() #todo: one line output

"Result: {0}" -f $out


