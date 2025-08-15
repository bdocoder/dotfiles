function take
    if test (count $argv) -gt 0
        mkdir -p $argv[1]
        cd $argv[1]
    else
        cd (mktemp -d)
    end
end
