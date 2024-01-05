#!/bin/bash

# Define an array of Quran verses
verses=(
    "Indeed, Allah is with the patient. ([Quran 2:153]"
    "He created the heavens and earth in truth and formed you and perfected your forms, and to Him is the [final] destination [Quran 64:3]"
    "And whoever relies upon Allah, then He is sufficient for him. Indeed, Allah will accomplish His purpose. Allah has already set for everything a [decreed] extent [Quran 65:3]"
    "My mercy encompasses all things [Quran 7:156]"
    "Allah does not burden a soul beyond that it can bear [Quran 2:286]"
    "So verily, with the hardship, there is relief. Verily, with the hardship, there is relief [Quran 94:5-6]"
    "Do what is beautiful. Allah loves those who do what is beautiful [Quran 2:195]"
    "This worldly life is no more than play and amusement. But the Hereafter is indeed the real life, if only they knew. [Quran 29:64]"
    "And so that Allah will help you tremendously. [Quran 48:3]"
    "And whoever puts all his trust in Allah, He will be enough for him. [Quran 65:3]"
    "And We have commanded people to ˹honour˺ their parents. Their mothers bore them through hardship upon hardship, and their weaning takes two years. So be grateful to Me and your parents. To Me is the final return. [Quran 31:14]"
    "He created the heavens and earth in truth and formed you and perfected your forms, and to Him is the [final] destination [Quran 64:3]"
    "And whoever relies upon Allah, then He is sufficient for him. Indeed, Allah will accomplish His purpose. Allah has already set for everything a [decreed] extent [Quran 65:3]"
)

# Generate a random number within the range of the verses array
index=$(($RANDOM % ${#verses[@]}))

# Select a random verse
random_verse=${verses[$index]}

# Define colors
GREEN="\033[92m" # Green color
BLUE="\033[94m" # Blue color
MAGENTA="\033[95m" # Magenta color
RESET="\033[0m" # Reset color

# Calculate the number of columns in the terminal
COLS=$(tput cols)

# Define the header message
header_message="This is a self message from Quran:"

# Calculate the padding needed to center the header message
padding=$((($COLS - ${#header_message}) / 2))

# Print the centered header message in magenta
printf "%${padding}s" "" # Add padding before the message
echo -e "${MAGENTA}${header_message}${RESET}\n"


echo -e "  

 ██████╗ ██╗   ██╗██████╗  █████╗ ███╗   ██╗
██╔═══██╗██║   ██║██╔══██╗██╔══██╗████╗  ██║
██║   ██║██║   ██║██████╔╝███████║██╔██╗ ██║
██║▄▄ ██║██║   ██║██╔══██╗██╔══██║██║╚██╗██║
╚██████╔╝╚██████╔╝██║  ██║██║  ██║██║ ╚████║
 ╚══▀▀═╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
                                            "

# Split the verse into text and location based on the last occurrence of brackets
verse_text=${random_verse% [*}
verse_location="[${random_verse##* [}"

# Print the verse text in bold green and the location in blue
bold=$(tput bold)
normal=$(tput sgr0)
echo -e "${GREEN}${bold}${verse_text}${normal}${RESET} ${BLUE}${verse_location}${RESET}"




# Add a newline
echo -e "\n"
