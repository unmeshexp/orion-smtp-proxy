**README.md**

This project contains the docker for SMTP proxy.

User can send mail on this container which can be relayed to SMTP URL.

Following are current configurations

| Configurations | Values |
| -------------- | ------ |
| SMTP Exposed Port | 1587 |
| SMTP URL | email-smtp.us-east-1.amazonaws.com:587 |

The configuarion details are available in haproxy.cfg

The project can be built using Jenkins file.
