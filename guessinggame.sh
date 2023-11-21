# Function to check if the guess is too low or too high
function test_number {
  local guess=$1
  local nb_files=$2
  if [ $guess -lt $nb_files ]; then
    echo "Sorry, your guess is too low."
  else
    echo "Sorry, your guess is too high."
  fi
  echo "Try again"
}

# Function to check if input is numeric
function is_numeric {
  [[ $1 =~ ^[0-9]+$ ]]
}

# Function to prompt for a non-numeric guess
function read_guess {
  read guess
  while ! is_numeric $guess; do
    echo "Please enter only a non-numeric value:"
    read guess
  done
}

# main program

# Calculates the number of files in the current directory
nb_files=$(ls -l | grep "^-" | wc -l)

echo "How many files are in the current directory? Write your guess:"
read_guess

while [ "$guess" -ne "$nb_files" ]; do
  test_number $guess $nb_files
  read_guess
done

echo "Congratulations, you succeeded!"