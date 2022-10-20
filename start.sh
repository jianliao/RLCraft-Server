#!/bin/sh

MINECRAFT_VER=1.12.2
FORGE_VER=14.23.5.2838

echo "Downloading Forge..."
FORGE_URL=https://files.minecraftforge.net/maven/net/minecraftforge/forge/${MINECRAFT_VER}-${FORGE_VER}/forge-${MINECRAFT_VER}-${FORGE_VER}-installer.jar
wget "$FORGE_URL" -O installer.jar

echo "Downloading RLCraft..."
#RLCRAFT_URL=https://mediafilez.forgecdn.net/files/3655/676/RLCraft+Server+Pack+1.12.2+-+Release+v2.9.1c.zip
RLCRAFT_URL=https://mediafilez.forgecdn.net/files/2935/323/RLCraft+Server+Pack+1.12.2+-+Beta+v2.8.2.zip
wget "$RLCRAFT_URL" -O rlcraft.zip

echo "Unzip RLCraft..."
unzip -q rlcraft.zip

echo "Remove the downloaded zip file..."
rm -rf rlcraft.zip
