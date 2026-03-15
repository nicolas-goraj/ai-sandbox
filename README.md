# AI-SANDBOX

Run AI in a container for safety

## Setup

1. Create a directory `workspace` in this directory : this is where you will put the projects and files you want to work
   with in the container
2. (Optional) Create and configure environments variables in a new file `.env`
3. Build the container :
   ```bash
   podman build -t ai-sandbox .
   ```
4. Start it with
   ```bash
   ./run.sh
   ```
