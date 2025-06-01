## Setup Instructions

### 1. Install [TPM (Tmux Plugin Manager)](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 2. Install Lazygit and Lazydocker (Optional)

```bash
brew install jesseduffield/lazygit/lazygit jesseduffield/lazydocker/lazydocker
```

### 3. Configure Podman as Docker Replacement (Optional)

If you're using Podman instead of Docker, you can configure the environment to make tools like Lazydocker recognize Podman. [Reference](https://github.com/jesseduffield/lazydocker/issues/4#issuecomment-2594808943)

Add the following line to your shell config (e.g. ~/.bashrc, ~/.zshrc):

```bash
export DOCKER_HOST=unix://$(podman machine inspect --format '{{.ConnectionInfo.PodmanSocket.Path}}')
```

### 4. Install Surfshark (Optional)

```bash
curl -f https://downloads.surfshark.com/linux/debian-install.sh --output surfshark-install.sh
```
