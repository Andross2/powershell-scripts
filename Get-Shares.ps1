$report=@()
$directories=@()
$directories=(Get-WmiObject win32_share -ComputerName al130-fs-02 | Where {$_.name -NotLike "*$"})
	Foreach ($directory in $directories)
		{
		$dirname=$directory.name
		$dirname
		$sharename = "\\AL130-FS-02.Endo.Com\$dirname"
		$data = Get-ChildItem $sharename -Recurse -Directory | Select-Object Fullname | sort-Object Fullname
		$report += $data
		}
		#$data | Export-Csv "H:\sharename.csv" -NoTypeInformation