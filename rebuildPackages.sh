#!/bin/bash
echo "Rebuilding Packages..."
rm Packages.bz2
dpkg-scanpackages -m debs > Packages
bzip2 -c Packages > Packages.bz2
echo "Successfully rebuilt Packages."