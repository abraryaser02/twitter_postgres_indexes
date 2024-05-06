#!/bin/bash
# Wait for PostgreSQL to start
until psql -h postgres -U your_user -d your_database -c "SELECT 1" > /dev/null 2>&1; do
    echo "Waiting for PostgreSQL to start..."
    sleep 1
done

# Now run your script to load data
sh load_tweets_parallel.sh

