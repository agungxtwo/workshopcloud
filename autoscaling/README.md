# Workshop Cloud

## AutoScaling

$ kubectl run php-apache --image=k8s.gcr.io/hpa-example --requests=cpu=200m --expose --port=80

$ kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

$ kubectl get hpa

Load testing
$ kubectl run -i --tty load-generator --image=busybox /bin/sh

Hit enter for command prompt

$ while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done

$ kubectl get hpa


# Project
1. Membuat Apps/layanan bebas dengan container lebih dari 2, menerapkan docker swarm
2. Membuat Apps/layanan bebas dengan container lebih dari 2, menerapkan kubernetes
3. Centralisasi docker logs dengan ELK Stack
4. CI/CD bisa menggunakan jenkins / circle CI / lainnya
5. Load Balancing layanan yang menggunakan docker menggunakan traefik / nginx / ha proxy
6. performance testing layanan dengan menggunakan apache Jmeter / gattling / locust.io
7. Docker provisioning dengan terraform / salt stack / ansible / chef
8. Performance Monitoring dengan promoteus

5-7 menerapkan kubernetes
