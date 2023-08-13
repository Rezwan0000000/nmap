#!/bin/bash

# Nmap Comprehensive Script with Figlet
#Goto the blank page
clear
# Display Figlet text
figlet -c -f slant "$(echo -e ${YELLOW}NMAP${RESET})"
echo "----------------------------------------------------"
echo "
  +------------------------------------+
  |       Nmap Bash - Created By      |
  |            REZWAN                  |
  +------------------------------------+
  "

echo "----------------------------------------------------"
# Check if Nmap is installed
command -v nmap >/dev/null 2>&1 || { echo >&2 "Nmap is required but not installed. Aborting."; exit 1; }
# Define color codes
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"

# Define target IP or hostname
read -p "$(echo -e ${YELLOW}"Enter the target IP or hostname: "${RESET})" target
echo "----------------------------------------------------"
# Display options
echo -e "Select Nmap options:"
echo -e "1. ${GREEN}Basic Scan${RESET}"
echo -e "2. ${GREEN}Port Range Scan${RESET}"
echo -e "3. ${GREEN}Service Version Detection${RESET}"
echo -e "4. ${GREEN}OS Detection${RESET}"
echo -e "5. ${GREEN}Aggressive Scan${RESET}"
echo -e "6. ${GREEN}UDP Scan${RESET}"
echo -e "7. ${GREEN}Script Scan${RESET}"
echo -e "8. ${GREEN}Full Port Range Scan with Top 1000 Ports${RESET}"
echo -e "9. ${GREEN}Save Output to File (Nmap Output)${RESET}"
echo -e "10. ${GREEN}Output in XML Format${RESET}"
echo -e "11. ${GREEN}Save Output to File (Grepable Format)${RESET}"
echo -e "12. ${GREEN}Save Output to File (All Formats)${RESET}"
echo -e "13. ${GREEN}Intense Scan with All TCP Ports${RESET}"
echo "----------------------------------------------------"

read -p "$(echo -e ${YELLOW}"Enter the option number(s) (comma-separated): "${RESET})" options

# Run Nmap commands based on user-selected options
echo "Scanning target: $target"
echo "Selected options: $options"
echo "----------------------------"

nmap $options $target

echo "----------------------------"
echo "Scan completed."
