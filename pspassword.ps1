$letter='A','B' 

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

"Result: {0}" -f $out


