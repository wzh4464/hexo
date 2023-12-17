---
title: Send Email Via python
---
# Send Email Via python

## Use Elastic Email

Elastic Email is a SMTP relay service. It is free for 100 emails per day. You can register an account and get an API key. Then you can use the following code to send email.

- Set SMTP server
- Get API key

## Python Code

```python
import os
import smtplib
from email.mime.text import MIMEText

# Count the number of files in the directory
num_files = len([f for f in os.listdir('/home/zihan/denElli/result/timebased_2') if os.path.isfile(os.path.join('/home/zihan/denElli/result/timebased_2', f))])

# if already sent, exit
if os.path.isfile('/home/zihan/denElli/result/timebased_2/sent__.txt'):
    print('Already sent')
    exit()

# Check if the number of files exceeds 6000
if num_files > 6000:
    # Set up the SMTP server
    smtp = smtplib.SMTP('smtp.elasticemail.com', 2525)
    smtp.login('wzh4464@gmail.com', 'API_KEY') # API_KEY is the key you get from Elastic Email

    # Create the email
    msg = MIMEText('The number of files in result/timebased_2 is ' + str(num_files))
    msg['Subject'] = 'File Count Alert'
    msg['From'] = 'wzh4464@gmail.com'
    msg['To'] = 'zihan.wu@my.cityu.edu.hk'

    # create a file to record as sent
    f = open('/home/zihan/denElli/result/timebased_2/sent__.txt', 'w')
    f.write('sent')

    # Send the email
    smtp.send_message(msg)
    print('Email sent')
    smtp.quit()
```

## Crontab

You can use crontab to run the python script periodically. For example, you can use `crontab -e` to edit the crontab and add the following line to run the script every minute.

```bash
# m h  dom mon dow   command
* * * * * /home/zihan/miniconda3/envs/cocluster/bin/python /home/zihan/denElli/sendEmail.py
```

and then you can use `crontab -l` to check if the crontab is set correctly.
