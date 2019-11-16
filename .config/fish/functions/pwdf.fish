function pwdf --description 'Prints path to given arguments. Useful for linking.'
    for arg in $argv
	if test (count $argv) -eq 0
            command pwd
	else
	    printf '%s/%s ' (pwd) $arg
	end
    end
end
