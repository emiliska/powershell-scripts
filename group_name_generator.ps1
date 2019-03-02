# +--------------------+
# | script description |
# +--------------------+ 
# this script takes in a bunch of words from a text file
# and uses them to generate new words or phrases

# +------------------------------------------+
# | take in a list of words from a text file |
# +------------------------------------------+
# take in the textfile as a pipeline object from the command line
# ex: ./group_name_generator.ps1 .\words.txt
Param(
    [Parameter(Mandatory=$true,
    ValueFromPipeline=$true)]
    [String[]]
    $textFile
)

$word_array = Get-Content $textFile

# +---------------------+
# | generate a new word |
# +---------------------+
# randomly slice the word up

# print out a list of new words

# +-----------------------+
# | generate a new phrase |
# +-----------------------+
# randomly pair the words up

while ($true){ # start loop
#reset variables
$newPhrase = ""

# pick 2 poss in the array and save them
$word_array_length = $word_array.Length
$posA = Get-Random -Minimum 0 -Maximum $word_array_length
$posB = Get-Random -Minimum 0 -Maximum $word_array_length

# pack a word in the array and save it
$countVar = 0
foreach ($word in $word_array) {
    if ($countVar -eq $posA -or $countVar -eq $posB){
        $newPhrase = $newPhrase + $word + " "
    }
    $countVar++
}

# save to working file
Out-File -FilePath .\newPhrases.txt -InputObject $newPhrase -Encoding ascii -Width 80 -Append
#print out the new phrase
Write-Output $newPhrase


# +----------------------------------+
# | get another phrase with "anykey" |
# +----------------------------------+
$userInput = Read-Host -Prompt "Press 'Enter' to continue or '0' to exit the program" # 'q', 'n', or 'esc' 
# +----------------------------------------+
# | exit the program with 'q' 'n' or 'esc' |
# +----------------------------------------+
if ($userInput -eq 0){Break}
}