# By John T. and Sarah F.
param ($net, $dnsserver)
$range = 1..254
foreach($r in $range)
{

Resolve-DnsName -DnsOnly "$net.$r" -Server "$dnsserver" -ErrorAction Ignore

}

