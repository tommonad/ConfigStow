Vim�UnDo� ����&���#<���� ���Py�W�X�	�      `# You can add xorg to the installation packages, I usually add it at the DE or WM install script            ?       ?   ?   ?    f�L    _�                             ����                                                                                                                                                                                                                                                                                                                                                             f��E     �                !sed -i '178s/.//' /etc/locale.gen5��                          Y       "               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f���     �         (      +echo "KEYMAP=colemak" >> /etc/vconsole.conf5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f��     �      	   (    5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��     �      
   )    �      	   )    5��                          �               0       5�_�                    	   '    ����                                                                                                                                                                                                                                                                                                                                                             f��     �      	          /sudo nano /etc/X11/xorg.conf.d/00-keyboard.conf5��                          �       0               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��     �                 5��                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f��     �                echo "arch" >> /etc/hostname5��                          �                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             f��     �   
             echo root:password | chpasswd5��    
                      G                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             f���     �                +echo "LANG=en_US.UTF-8" >> /etc/locale.conf5��                          d       ,               5�_�   	              
      
    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         %     Vpacman -S grub efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call virt-manager qemu bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       
                  �                     5�_�   
                    �    ����                                                                                                                                                                                                                                                                                                                                                             f��S     �         %     Qpacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call virt-manager qemu bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  N                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f��z     �         %     Cpacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call virt-manager qemu bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f��|     �         %     6pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call qemu bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f��}     �         %     1pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         %     $pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call dnsmasq vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %     pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call vde2 openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %     pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call openbsd-netcat iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %     pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call iptables-nft ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call ipset flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call flatpak acpid terminus-font5��       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid terminus-font5��       �                  �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f��M     �         %      systemctl enable libvirtd5��                         f                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %      �grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi is you mounted the EFI partition at /boot/efi5��                               �       �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %      $grub-mkconfig -o /boot/grub/grub.cfg5��                         �      %       '       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f���     �         %      systemctl enable cups.service   systemctl enable sshd   systemctl enable avahi-daemon    systemctl enable reflector.timer   systemctl enable fstrim.timer5��                         �      �       �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f���     �         %      systemctl enable acpid5��                         �                    5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                                  V        f���     �   "   $   %      6echo "ermanno ALL=(ALL) ALL" >> /etc/sudoers.d/ermanno5��    "                     �      7       9       5�_�                            ����                                                                                                                                                                                                                                                                                                                                       	           V        f��     �      
   %      9ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime   hwclock --systohc   
locale-gen   *echo "KEYMAP=colemak" > /etc/vconsole.conf   (echo "127.0.0.1 localhost" >> /etc/hosts   (echo "::1       localhost" >> /etc/hosts   9echo "192.168.1.2 archway.localdomain arch" >> /etc/hosts5��                                            5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��    �         %      # systemctl enable cups.service   # systemctl enable sshd   # systemctl enable avahi-daemon   "# systemctl enable reflector.timer   # systemctl enable fstrim.timer   # systemctl enable libvirtd   # systemctl enable acpid5��                         �      �       �       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             f�CA     �                ;# ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime   # hwclock --systohc   # locale-gen5��                                 ]               5�_�      !                  	    ����                                                                                                                                                                                                                                                                                                                                                             f�C�     �         "      echo tom:password | chpasswd5��       	                 e                    5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             f�C�     �         "      usermod -aG libvirt ermanno5��                         �                     5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             f�C�     �         "      usermod -aG libvirt 5��                         �                     5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             f�C�     �                 8# echo "ermanno ALL=(ALL) ALL" >> /etc/sudoers.d/ermanno5��                          �      9               5�_�   #   %           $      Z    ����                                                                                                                                                                                                                                                                                                                                                             f�D     �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils inetutils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   Z       
           �      
               5�_�   $   &           %      Z    ����                                                                                                                                                                                                                                                                                                                                                             f�D      �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils dnsutils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   Z       	           �      	               5�_�   %   '           &      _    ����                                                                                                                                                                                                                                                                                                                                                             f�D)     �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups alsa-utils pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   _                  �                     5�_�   &   (           '      _    ����                                                                                                                                                                                                                                                                                                                                                             f�D+     �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups pipewire pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   _       	           �      	               5�_�   '   )           (      _    ����                                                                                                                                                                                                                                                                                                                                                             f�D,     �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   _                  �                     5�_�   (   *           )      _    ����                                                                                                                                                                                                                                                                                                                                                             f�D-     �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups pipewire-jack bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   _                  �                     5�_�   )   +           *      �    ����                                                                                                                                                                                                                                                                                                                                                             f�D�     �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector acpi acpi_call acpid 5��    
   �                                       5�_�   *   ,           +      
    ����                                                                                                                                                                                                                                                                                                                                                             f�D�    �   
      !      �pacman -S efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector acpi acpi_call acpid5��    
   
                  �                     5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             f�H�     �                useradd -m tom   echo tom:tulla | chpasswd5��                                )               5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             f�I     �                )# pacman -S --noconfirm xf86-video-amdgpu5��                          +      *               5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                             f�I     �                ;# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings5��                          +      <               5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                             f�I     �                �# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi is you mounted the EFI partition at /boot/efi5��                          ,      �               5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                             f�I     �                 5��                          ,                     5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                                             f�I     �                &# grub-mkconfig -o /boot/grub/grub.cfg5��                          ,      '               5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                             f�I     �                 5��                          +                     5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                                             f�I    �                 5��                          +                     5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                             f���     �                systemctl enable acpid5��                          �                     5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                             f���     �                systemctl enable libvirtd    5��                          �                     5�_�   5   7           6      �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �   
            �pacman -S --needed --noconfirm efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector acpi acpi_call acpid5��    
   �                                       5�_�   6   8           7      �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �   
            �pacman -S --needed --noconfirm efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector acpi_call acpid5��    
   �       
                 
               5�_�   7   9           8      �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �   
            �pacman -S --needed --noconfirm efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector acpid5��    
   �                                       5�_�   8   :           9      �    ����                                                                                                                                                                                                                                                                                                                                                             f���     �   
            �pacman -S --needed --noconfirm efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector 5��    
   �                                       5�_�   9   ;           :      o    ����                                                                                                                                                                                                                                                                                                                                                             f��     �   
            �pacman -S --needed --noconfirm efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils cups bash-completion openssh rsync reflector5��    
   o                  �                     5�_�   :   <           ;      o    ����                                                                                                                                                                                                                                                                                                                                                             f��     �   
            �pacman -S --needed --noconfirm efibootmgr dialog mtools base-devel linux-headers avahi xdg-user-dirs xdg-utils bash-completion openssh rsync reflector5��    
   o                  �                     5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                             f��?     �                usermod -aG libvirt5��                          �                     5�_�   <   >           =           ����                                                                                                                                                                                                                                                                                                                                                             f��H    �                systemctl enable sshd5��                                               5�_�   =   ?           >   	        ����                                                                                                                                                                                                                                                                                                                                                             f�E     �      	          I# You can remove the tlp package if you are installing on a desktop or vm5��                          .      J               5�_�   >               ?          ����                                                                                                                                                                                                                                                                                                                                                             f�K    �      	         `# You can add xorg to the installation packages, I usually add it at the DE or WM install script5��              ^          �       ^              �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �              	          �       	              �                      '   �              '       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f���     �         %      �ub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi is you mounted the EFI partition at /boot/efi5��                                               5��