# log_script_labs2023
The repository contain an executable python script that reads and parse the nginx access log file and insert the lines into a database.
The repository also contains an sql file showing the structure of the database mentioned above.
The script was made to run every 5 minutes using crontab with the following command:
*/5 * * * * ~/log_script_labs2023/script_labs.py
