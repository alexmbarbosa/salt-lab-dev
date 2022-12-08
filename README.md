# salt-lab-dev
This [**salt**](https://docs.saltproject.io/en/getstarted/) lab has adapted to be used in docker containers *(based on [**Centos7**](https://hub.docker.com/_/centos) image)*.

This is a helpful way to practice/test salt concepts as a sysadmin or developer. Keep in mind this Project should be used *only as a development environment*.

## How to use:
1. Clone this repository:
  ```bash
git clone https://github.com/alexmbarbosa/salt-lab-dev.git
  ```
2. Go to the project root folder:
```bash
cd ./salt-lab-dev/
```
3. Build/Start/Run this Project:
```bash
make start
```
4. Stop this Project execution:
```bash
make stop
```
**Additional options:**
  * Build Docker Project:
  ```bash
  make build
  ```
  * Exec docker salt-master:
  ```bash
  make run-master
  ```
  * Exec docker salt-minions:
  ```bash
  make run-minion-1
  make run-minion-2
  ``` 
 
 ## Docker Structure Overview:

---

* **Dockerfile.master:**  

  Configuration for salt-master build.

* **Dockerfile.minion:**

  Configuration for salt-minion(s) build.

* **docker-compose.yml:**

  Salt orchestration.

### Salt Structure:
* Salt states and pillars are bound by docker-compose volume using this source:

  - **files/etc/salt/**

* State/Pillar Folders in salt-master:
  
  * `/srv/salt/states`
  * `/srv/salt/pillars`

---
**Due Credits to:**

* [simplest-way-to-learn-saltstack](https://timlwhite.medium.com/the-simplest-way-to-learn-saltstack-cd9f5edbc967)

**References:**

* https://repo.saltproject.io/#rhel
* https://docs.saltproject.io/en/latest/ref/configuration/index.html
* https://docs.saltproject.io/salt/install-guide/en/latest/
* https://docs.docker.com/compose/gettingstarted/
