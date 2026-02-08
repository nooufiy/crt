Google Cloud
=============

Subject: Request to Remove SMTP (Port 25) Restriction on Compute Engine VM

Hello Google Cloud Support Team,

I am writing to request the removal of SMTP outbound port restrictions on my Compute Engine VM instance.

**Project Details:**
- Project ID: [YOUR_PROJECT_ID]
- VM Instance Name: [YOUR_VM_NAME]
- Zone: [e.g., asia-southeast1-a]
- External IP: [YOUR_VM_IP]

**Use Case:**
I am setting up a legitimate mail server for my business application to send transactional emails such as:
- Email verification for user registration
- Password reset notifications
- Order confirmation emails

**Infrastructure Details:**
- I have properly configured DNS records (MX, SPF, DKIM, DMARC)
- Domain: [YOUR_DOMAIN]
- I understand and will comply with Google's Acceptable Use Policy
- The mail server will only send transactional emails, not bulk marketing

**DNS Records Configured:**
- A record: mail.[domain] → [IP]
- MX record: [domain] → mail.[domain]
- SPF: v=spf1 mx a ip4:[IP] ~all
- DKIM: Configured
- DMARC: v=DMARC1; p=quarantine

I would greatly appreciate if you could lift the SMTP port 25 restriction on this VM to allow outbound email delivery.

Thank you for your assistance.

Best regards,
[Your Name]


==========================================================================================================================
