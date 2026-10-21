set -e

echo "==> Ενημέρωση συστήματος"
sudo dnf upgrade -y

echo "==> Εγκατάσταση εργαλείων"
sudo dnf install -y zsh vim git tree htop gawk

echo "==> zsh ως default shell"
sudo chsh -s "$(command -v zsh)" "$USER"

echo "==> Έτοιμο ✅ Κλείσε και ξανάνοιξε το terminal."