# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Get item relating to a file
# Instantiate a System.IO.FileInfo object
$File = Get-ChildItem -Path C:\Foo\Books.xml -File

# Use the encrypt instance method within this object
$File.Encrypt()
# Create a file, then Get object relating to that file

$File = Get-Item -Path .\FileInfo.txt

# Check to see if the file is encrypted
$Attributes = [System.IO.File]::GetAttributes($File)
If ($Attributes.ToString().Contains("Encrypted")) {
  Write-Output "$($File.Name) IS encrypted"
}  else {
  Write-Output "$($File.Name) is NOT encrypted"
}

# Use the encrypt instance method within this object
$File.Encrypt()

# Is it encrypted now?
$attributes = [System.IO.File]::GetAttributes($File)
If ($attributes.ToString().Contains("Encrypted")) {
  Write-Output "$($File.Name) IS encrypted"
}  
else {
  Write-Output "$($File.Name) is NOT encrypted"
}

# And decrypt it
$File.Decrypt()

# Is it encrypted now?
$attributes = [System.IO.File]::GetAttributes($File)
If ($attributes.ToString().Contains("Encrypted")) {
  Write-Output "$($File.Name) IS encrypted"
}  
else {
  Write-Output "$($File.Name) is NOT encrypted"
}

#  Expected output from this fragment
#  FileInfo.txt is NOT encrypted
#  FileInfo.txt IS encrypted
#  FileInfo.txt is NOT encrypted

The `Encrypt()` and `Encrypt()` methods returns no output to indicate that the method has succeeded.
If either method had _not_ succeeded, .NET would throw an exception but if it has been successful in encrypting the file the method returns nothing.  
This is normal!

### Invoking Static Methods

With a static methods, you do not need to first create an instance.
Instead, you use a different calling pattern that references the class and the method.
Calling a static method would look like this:
