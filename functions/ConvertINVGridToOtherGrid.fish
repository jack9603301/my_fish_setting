function ConvertINVGridToOtherGrid
    if test (count $argv) -ge 2
        command curl "http://192.168.4.20/webhook/ConvertINVGridToOtherGrid?type=$argv[1]&GRID=$argv[2]" 2>/dev/null | command jq $argv[3]
    else
        printf "ConvertINVGridToOtherGrid type INV_GRID [jq query string]"
    end
end
