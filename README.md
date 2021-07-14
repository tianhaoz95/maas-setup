# MAAS Setup

```bash
sudo apt update -y && sudo apt install git
git clone https://github.com/tianhaoz95/maas-setup.git /tmp/maas-setup
cd /tmp/maas-setup && source setup.sh
```

```bash
git clone https://github.com/tianhaoz95/maas-setup.git /tmp/maas-setup
cd /tmp/maas-setup
source ./scripts/utils/helpers.sh
./scripts/tasks/subtasks/[task].sh
```