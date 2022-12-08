# WIP salt-lab-dev
This salt lab has adapted to be used in docker containers *(based on Centos7 images)*

First, I share the credits of the project that served as the basis for this repository:
## Docker Structure Overview:

---

* **Dockerfile.master:**  

  Configuration for salt-master build.

* **Dockerfile.minion:**

  Configuration for salt-minion(s) build.

* **docker-compose.yml:**

  Salt orchestration.

### Salt Structure:
* State/Pillar Folders in salt-master:
  
  * `/srv/salt/states`
  * `/srv/salt/pillars`

## Getting started Salt Docker Env

---

1. Build/Start docker lab env using docker-compose:
Go to salt-lab-dev and execute:
```sh
docker-compose up -d
```
If everything is ok, we will have a container with salt-master and another one with salt-minion.

2. Login to the salt-master and test minion communication:

```sh
docker-compose exec salt-master bash
```

---
**Due Credits to:**

* [simplest-way-to-learn-saltstack](https://timlwhite.medium.com/the-simplest-way-to-learn-saltstack-cd9f5edbc967)

**References:**

* https://repo.saltproject.io/#rhel
* https://docs.saltproject.io/en/latest/ref/configuration/index.html
* https://docs.saltproject.io/salt/install-guide/en/latest/
* https://docs.docker.com/compose/gettingstarted/
