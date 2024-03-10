# cppdev

Remote C++ development environment on Docker container

## Usage

### 1. Start Container
Up container daemon
```bash
bash setup.sh
```

### 2. Enter Container
```bash
bash run_exec.sh
```

> Note: You can use VScode Remote Explorer to enter the container instead.

### 3. Remove Container and Image
Stop and Remove only container
```bash
bash teardown.sh
```

Stop and Remove both container and image
```bash
bash teardown.sh image
```


## Container Information

- image: ``Ubuntu:22.04``
- volumes: ``./workspace/``:``$HOME/workspace/``
- In the container, $USER has ``sudo`` privileges that do NOT require a password (see ``Dockerfile``).

## Customize
``.env`` stores parameters that need to be changed as needed.

| parameter | explanation |
| --- | --- |
| IMAGE_NAME      | Name of the Docker image generated from the ``Dockerfile``. |
| CONTAINER_NAME  | Name of the Docker container generated from ``docker-compose.yml``. |
| REMOTE_HOSTNAME | Hostname in the container. |
| REMOTE_USERNAME | Username in the container. |
| WORKING_DIR     | Working directory in the container. |
| PS1             | Environment variable for Bash prompt. |



