#!/bin/bash

# Directory to store the markdown files
OUTPUT_DIR="./november_logs"
mkdir -p "$OUTPUT_DIR"

# Array of motivational quotes
quotes=(
    "Believe you can and you're halfway there. – Theodore Roosevelt"
    "Your limitation—it's only your imagination."
    "Push yourself, because no one else is going to do it for you."
    "Great things never come from comfort zones."
    "Dream it. Wish it. Do it."
    "Success doesn’t just find you. You have to go out and get it."
    "The harder you work for something, the greater you’ll feel when you achieve it."
    "Don’t stop when you’re tired. Stop when you’re done."
    "Wake up with determination. Go to bed with satisfaction."
    "Do something today that your future self will thank you for."
    "Little things make big days."
    "It’s going to be hard, but hard does not mean impossible."
    "Don’t wait for opportunity. Create it."
    "Sometimes we’re tested not to show our weaknesses, but to discover our strengths."
    "The key to success is to focus on goals, not obstacles."
    "Your only limit is you."
    "Do what you can with all you have, wherever you are."
    "Push yourself again and again. Don’t give an inch until the final buzzer sounds."
    "Success is not for the lazy."
)

# Loop through the dates from 12 to 30
for day in $(seq 12 30); do
    # Format the date: day-month-year.md (25 = 2025)
    filename=$(printf "%02d-11-25.md" "$day")
    
    # Select a random quote from the array
    quote=${quotes[$RANDOM % ${#quotes[@]}]}
    
    # Create the markdown file with the quote at the top
    echo "# $quote" > "$OUTPUT_DIR/$filename"
    
    # Optionally, you can add a placeholder for content
    echo -e "\nYour notes here..." >> "$OUTPUT_DIR/$filename"
done

echo "Markdown files generated in $OUTPUT_DIR"
