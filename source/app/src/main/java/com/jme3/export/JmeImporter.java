package com.jme3.export;

import com.jme3.asset.AssetLoader;
import com.jme3.asset.AssetManager;

public interface JmeImporter extends AssetLoader {
    AssetManager getAssetManager();

    InputCapsule getCapsule(Savable savable);

    int getFormatVersion();
}
