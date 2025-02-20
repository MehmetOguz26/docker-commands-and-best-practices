# Learn Dockerfile ENTRYPOINT Instructions Practically
Understand how to use the ENTRYPOINT instruction in Dockerfiles, and how to override or append arguments during the 'docker run' command.


## Introduction

In this guide, you will:

- Create a Dockerfile with the `ENTRYPOINT` instruction.
- Build a Docker image and verify its functionality.
- Understand how to:
  - Use `ENTRYPOINT` as defined in the Dockerfile.
  - Append additional arguments to the `ENTRYPOINT` instruction.
  - Override the `ENTRYPOINT` instruction using the `--entrypoint` flag.

---

## Step 1: Create Dockerfile

- **Directory:** `DockerFiles`

Create a `Dockerfile` with the following content:

```dockerfile
# Use ubuntu as base Docker Image
FROM ubuntu

# OCI Labels
LABEL org.opencontainers.image.authors="Mehmet OGUZ"
LABEL org.opencontainers.image.title="ENTRYPOINT Instruction in Docker"
LABEL org.opencontainers.image.description="A Dockerfile demo illustrating the use of the ENTRYPOINT instruction"
LABEL org.opencontainers.image.version="1.0"

# Always run the echo command as the entrypoint
ENTRYPOINT ["echo", "AquilOps"]
```

---

## Step 2: Build Docker Image and Run It

### Build the Docker Image

```bash
# Change to the directory containing your Dockerfile
cd DockerFiles

# Build the Docker Image
docker build -t dockerfile-entrypoint:v1 .
```

### Demo 1: Use ENTRYPOINT As-Is

```bash
# Run Docker Container and Verify
docker run --name entrypoint dockerfile-entrypoint:v1

# Expected Output:
# AquilOps
```

**Observation:**

- The container runs and outputs `AquilOps`, which is the argument provided in the `ENTRYPOINT` instruction during the Docker image build.

### Demo 2: Append Arguments to ENTRYPOINT

```bash
# Run Docker Container and append an additional argument
docker run --name entrypoint-2 dockerfile-entrypoint:v1 Mehmet

# Expected Output:
# AquilOps Mehmet
```

**Observation:**

- The additional argument `Mehmet` is appended to the `ENTRYPOINT` instruction.
- The container outputs `AquilOps Mehmet`.

### Demo 3: Override ENTRYPOINT Instruction

```bash
# Run Docker Container and override the ENTRYPOINT instruction
docker run --name entrypoint-3 --entrypoint /bin/sh dockerfile-entrypoint:v1 -c 'echo "Overridden ENTRYPOINT instruction by Mehmet OGUZ!"'

# Expected Output:
# Overridden ENTRYPOINT instruction by Mehmet OGUZ!
```

**Observation:**

- The `--entrypoint` flag overrides the `ENTRYPOINT` instruction specified in the Dockerfile.
- The container runs `/bin/sh` with the `-c` option, executing the `echo` command.
- The container outputs `Overridden ENTRYPOINT instruction by Mehmet Oguz!`

---

## Step 3: Stop and Remove Containers and Images

```bash
# Stop and Remove the Containers
docker rm -f entrypoint
docker rm -f entrypoint-2
docker rm -f entrypoint-3

# Remove the Docker Images
docker rmi dockerfile-entrypoint:v1

# List Docker Images to Confirm Removal
docker images
```

---

## Conclusion

You have successfully:

- Created a Dockerfile using the `ENTRYPOINT` instruction.
- Built a Docker image and ran it, observing the default `ENTRYPOINT` execution.
- Appended additional arguments to the `ENTRYPOINT` instruction during `docker run`.
- Overridden the `ENTRYPOINT` instruction using the `--entrypoint` flag.
- Tagged and pushed the Docker image to Docker Hub.

---

## Additional Notes

- **ENTRYPOINT Instruction:**

  - The `ENTRYPOINT` instruction allows you to configure a container to run as an executable.
  - It is useful for setting up a container that runs a specific command or application.

- **Appending Arguments:**

  - When you provide additional arguments during `docker run`, they are appended to the `ENTRYPOINT` instruction.

- **Overriding ENTRYPOINT:**

  - Use the `--entrypoint` flag during `docker run` to override the `ENTRYPOINT` instruction specified in the Dockerfile.

- **Best Practices:**

  - Use `ENTRYPOINT` when you want to define a container with a specific executable.
  - Use `CMD` to provide default arguments to the `ENTRYPOINT`.

---

## Additional Resources

- [Docker Documentation](https://docs.docker.com/)
- [Dockerfile Reference - ENTRYPOINT Instruction](https://docs.docker.com/engine/reference/builder/#entrypoint)
- [Best Practices for Writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
- [Understanding ENTRYPOINT and CMD in Docker](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact)

---

**Happy Dockerizing!**
