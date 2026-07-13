### m2dmium

# Support
If you need any kind of support, please join [crosbreaker](https://discord.gg/nrMVY29MUb) for help
### If you would like the script to do everything for you:
```bash
git clone https://github.com/nurtayemail-cloud/m2dmium/
cd m2dmium
bash buildfull_badsh1mmer.sh <board>
```
### If you would like to use a local recovery image:
```bash
git clone https://github.com/nurtayemail-cloud/m2dmium/
cd m2dmium
bash update_downloader.sh <board>
sudo ./build_badrecovery.sh -i image.bin -t unverified
```
### What is this? 
m2dmium is a a software made to install modmium onto a managed chromebook without the need to unenroll.

### How do I make a usb?
Build an image yourself with the above commands.  
On Windows, use Rufus to flash.
On Linux, use dd as follows:
```sh
sudo dd if=/path/to/badsh1mmer.bin of=/dev/sdX bs=1M status=progress
```

(remember to replace X with the actual usb's letter identifier)
### I have a usb, what now?
If below kv6, complete [sh1ttyOOBE](https://github.com/crosbreaker/sh1ttyOOBE), then enter developer mode and recover to your usb <br>
Else, complete [sh1ttyexec](https://github.com/crosbreaker/sh1ttyexec)

### Licensing
- [LICENSE](/LICENSE) - main license for all badsh1mmer code
- [LICENSE-RELEASES](/LICENSE-RELEASES) - license for github workflow
- [LICENSE-shrink_image](/LICENSE-shrink_image) - license for `shrink_image.sh` script

### Credits:
- crosbreaker and CrOSmium, making this possible and making the original badsh1mmer and modmium.
