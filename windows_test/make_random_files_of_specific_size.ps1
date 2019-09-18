#create a fixed size byte array for later use.  make it the required file size.
$bytearray = New-Object byte[] (1024*50)

#create and start a stopwatch object to measure how long it all takes.
$stopwatch = [Diagnostics.Stopwatch]::StartNew()

#create a CSRNG object
$RNGObject = New-Object Security.Cryptography.RNGCryptoServiceProvider

# set up a loop to run 50000 times
0..100000 | Foreach-Object {
    write-output "creating file $_"

    # create a file stream handle with a name format 'filennnnn'
    $stream = New-Object System.IO.FileStream("c:\temp\file$("{0:D5}" -f $_)"), Create

    # and a stream writer handle
    $writer = New-Object System.IO.BinaryWriter($stream)

    # Fill our array from the CSRNG
    $RNGObject.GetNonZeroBytes($bytearray)

    # Append to the current file
    $writer.write($bytearray)

    # Close the stream
    $stream.close()

}

# how long did it all take?
$stopwatch.stop()
$stopwatch
write-host (date)