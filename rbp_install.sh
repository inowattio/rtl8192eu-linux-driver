sudo apt-get install git raspberrypi-kernel-headers build-essential dkms -y
sudo dkms add .
sudo dkms install rtl8192eu/1.0
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf
echo -e "8192eu\n\nloop" | sudo tee /etc/modules
sudo update-grub; sudo update-initramfs -u

echo "Reboot your Raspberry Pi to complete the installation"
