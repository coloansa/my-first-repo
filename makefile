README.md: guessinggame.sh
        # Set the title of the README.md file
        echo "# Guessing game in bash\n" > README.md

        # Set the execution date of the makefile
        echo "This file was created on $$(date)\n" >> README.md

        # Calculates the number of lines in guessinggame.sh
        echo -n "guessinggame.sh has " >> README.md
        wc -l < guessinggame.sh | tr -d ' ' >> README.md
        echo " lines" >> README.md
		
		