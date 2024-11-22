
$servers=@(
    "test1"
    "test2"
)

foreach ($server in $servers) {
    <# $server is the current item #>
    Write-host "on $server"
}