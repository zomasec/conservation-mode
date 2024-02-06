convmode() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: conversation_mode <0 or 1>"
        return 1
    fi

    mode=$1
    if [ "$mode" -eq 0 ] || [ "$mode" -eq 1 ]; then
        echo "$mode" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conse>
    else
        echo "Invalid argument. Use 0 for off or 1 for on."
    fi
}
