=====
REST Api Consumer module
=====

Basic example of REST API Consumer cron service running in docker wit python-cron lib.

Requirements
--------

- Python version v3.10
- python-cron lib
- requests lib
- Docker


Installation
--------

1. Clone this repository
2. Run `docker build -t api-consumer .` in the root directory of the project
3. Run `docker run -dp 3000:3000 api-consumer`

Notes
--------
Tested only in Windows 10.

License
--------
`MIT <https://github.com/Kolman-Freecss/Cron-API-Consumer/blob/master/LICENSE>`_
