#!/bin/bash

# A simple reference script for essential Linux commands in DevOps.

echo "###################################"
echo "      Essential Linux Commands     "
echo "###################################"

# System Information
echo "1. System Information"
echo "   - Display the hostname:"
echo "     hostname"
echo "   - Display system uptime:"
echo "     uptime"
echo "   - Show disk usage:"
echo "     df -h"
echo "   - Show memory usage:"
echo "     free -h"

# File and Directory Operations
echo ""
echo "2. File and Directory Operations"
echo "   - List files:"
echo "     ls -la"
echo "   - Change directory:"
echo "     cd /path/to/directory"
echo "   - Copy files:"
echo "     cp source_file destination"
echo "   - Move/Rename files:"
echo "     mv source_file destination"
echo "   - Remove files:"
echo "     rm file_name"
echo "   - Create a directory:"
echo "     mkdir directory_name"
echo "   - Remove a directory recursively:"
echo "     rm -rf directory_name"

# Process Management
echo ""
echo "3. Process Management"
echo "   - List running processes:"
echo "     ps aux"
echo "   - Kill a process by PID:"
echo "     kill <PID>"
echo "   - Display real-time process activity:"
echo "     top"
echo "   - View system logs:"
echo "     tail -f /var/log/syslog"

# Networking
echo ""
echo "4. Networking"
echo "   - Check the network configuration:"
echo "     ifconfig"
echo "   - Check internet connectivity:"
echo "     ping google.com"
echo "   - Show active network connections:"
echo "     netstat -tuln"
echo "   - Download a file using curl:"
echo "     curl -O http://example.com/file"
echo "   - Secure copy a file (SCP):"
echo "     scp local_file user@remote_host:/remote/directory"

# Package Management
echo ""
echo "5. Package Management (Debian/Ubuntu)"
echo "   - Update package lists:"
echo "     sudo apt update"
echo "   - Upgrade all packages:"
echo "     sudo apt upgrade"
echo "   - Install a package:"
echo "     sudo apt install package_name"
echo "   - Remove a package:"
echo "     sudo apt remove package_name"

echo ""
echo "6. Git Commands"
echo "   - Clone a repository:"
echo "     git clone repository_url"
echo "   - Check the status of the working directory:"
echo "     git status"
echo "   - Add changes:"
echo "     git add ."
echo "   - Commit changes:"
echo "     git commit -m 'commit message'"
echo "   - Push to a remote repository:"
echo "     git push origin branch_name"
echo "   - Pull from a remote repository:"
echo "     git pull origin branch_name"

# Docker Commands
echo ""
echo "7. Docker Commands"
echo "   - List running containers:"
echo "     docker ps"
echo "   - Run a container:"
echo "     docker run -d image_name"
echo "   - Stop a running container:"
echo "     docker stop container_id"
echo "   - Remove a container:"
echo "     docker rm container_id"
echo "   - Build an image from Dockerfile:"
echo "     docker build -t image_name ."

echo ""
echo "###################################"
echo "        End of Reference          "
echo "###################################"

#!/bin/bash

# Function to simulate an error
simulate_error() {
    echo "Simulating an error..."
    return 1  # Returning a non-zero exit status to simulate an error
}

# Trap for catching errors
trap 'echo "An error occurred. Exiting."; exit 1;' ERR

# If statement example
echo "If Statement Example:"
number=10
if [ $number -eq 10 ]; then
    echo "The number is equal to 10."
else
    echo "The number is not equal to 10."
fi
echo ""

# For loop example
echo "For Loop Example:"
for i in {1..5}; do
    echo "Iteration $i"
done
echo ""

# While loop example
echo "While Loop Example:"
count=1
while [ $count -le 5 ]; do
    echo "Count is $count"
    ((count++))  # Increment count
done
echo ""

# Function call to demonstrate error handling
echo "Error Handling Example:"
simulate_error  # This will trigger the error handling in the trap

# Note: The above line will exit the script if simulate_error returns a non-zero status

# To show that the script continues normally, we can add a final message
echo "This message will not be displayed due to the error earlier."