#!/usr/bin/env python3

import pymysql
from datetime import datetime
# Database configuration
DB_HOST = 'localhost'
DB_USER = 'labs'
DB_PASSWORD = 'softbinator'
DB_NAME = 'test'

# Open database connection
db = pymysql.connect(host=DB_HOST, user=DB_USER, password=DB_PASSWORD, database=DB_NAME)
cursor = db.cursor()

# Read the nginx access log file
with open('/var/log/nginx/access.log', 'r') as f:
    logs = f.readlines()

# Parse and insert the logs into the database
for log in logs:
    # Parse the log line into JSON format
    log_data = {}
    log_parts = log.split()
    log_data['ip_address'] = log_parts[0]
    timestamp_str = log_parts[3][1:]
    timestamp_obj = datetime.strptime(timestamp_str, '%d/%b/%Y:%H:%M:%S')
    log_data['timestamp'] = timestamp_obj.strftime('%Y-%m-%d %H:%M:%S')
    log_data['request'] = log_parts[5][1:]
    log_data['status_code'] = log_parts[8]
    log_data['user_agent'] = ' '.join(log_parts[11:])

    # Insert the log into the database
    try:
        cursor.execute("""
            INSERT INTO nginx_logs (ip_address, timestamp, request, status_code, user_agent)
            VALUES (%s, %s, %s, %s, %s)
        """, (log_data['ip_address'], log_data['timestamp'], log_data['request'], log_data['status_code'], log_data['user_agent']))
        db.commit()
    except pymysql.IntegrityError:
        db.rollback()

# Close database connection
db.close()
