[string]$twoDigits = "00"
[string]$physicalAddr = ""
$bool_int = 0
[int]$count1 = 0
[int]$count2 = 0

# append to physicalAddress until proper size
DO{
        DO{# randomize $twoDigits
                    # generate random boolean
                    $bool_int = get-random
                    $bool_int = $bool_int % 2
                    if($bool_int % 2 -eq 0)
                    {
                        $bool_int = 1
                    }
                    else
                    {
                        $bool_int = 0
                    }
                    # if 0 then...
                    if($bool_int -eq 0)
                    {
                        # generate random letter
                        $physicalAddr += (65..90) + (97..122) | Get-Random | %{[char]$_} 
                    }
                else
                {
                    # generate random number between 0 and 9
                    $physicalAddr += Get-Random -Minimum 0 -Maximum 10   
                }
                    $count1++
            } while($count1 -lt 2)
            $count1 = 0
        # add hypens until filled proper
        if($count2 -lt 5)
            {
                $physicalAddr += "-"
            }
            $count2++
    } while($count2 -lt 6)
# print to console
$physicalAddr.ToUpper()
