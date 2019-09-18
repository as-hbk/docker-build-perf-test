This repo contains two folders with configurations to build more or less identical docker images: one for Linux and one for Windows.

These builds illustrate the vast discrepency between Linux and Windows build times. Both builds create 100,000 100kB files in a single directory. On either platform, it takes about 3 minutes to create the files themselves.

When building on an on-prem VMware cluster:
On Linux, the total build time is approximately 5 minutes on a VM with 8GB RAM and 4 cores. On Windows, the total build time is significantly longer: 20 minutes on a VM with 8GB RAM and 4 cores.

When building on AWS nodes (c5.xlarge):
The gap is the same. Builds take 10 minutes on Linux and 40 minutes on Windows, instead. Still, we see a ~4x slowdown on Windows.

To build the Windows image, in powershell:
```
cd windows_test
.\build.ps1
```

To build the Linux image, in bash:
```
cd linux_test
./build.sh
```
