# Command to generate load on the ALB

***replace with your alb dns name***
```for i in {1..200}; do curl http://your-alb-address.com & done; wait```

ALB1-1060030553.us-west-1.elb.amazonaws.com

for i in {1..200}; do curl http://ALB1-1060030553.us-west-1.elb.amazonaws.com & done; wait
