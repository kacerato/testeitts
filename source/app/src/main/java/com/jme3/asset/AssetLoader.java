package com.jme3.asset;

import java.io.IOException;

public interface AssetLoader {
    Object load(AssetInfo assetInfo) throws IOException;
}
