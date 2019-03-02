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
    [parameter(Mandatory=$true,
    ValueFromPipeline=$true)]
    [String[]]
    $textFile
)

$word_array = Get-Content $textFile
foreach ($word in $word_array) {
    Write-Output $word
}

# +---------------------+
# | generate a new word |
# +---------------------+
# randomly slice the word up

# print out a list of new words

# +-----------------------+
# | generate a new phrase |
# +-----------------------+
# randomly pair the words up

# print out a list of phrases