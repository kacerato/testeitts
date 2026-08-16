package com.jme3.export.binary;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;

public class BinaryLoader implements AssetLoader {
    private final Deque<BinaryImporter> importers = new ArrayDeque();

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        BinaryImporter pollLast = this.importers.pollLast();
        if (pollLast == null) {
            pollLast = new BinaryImporter();
        }
        try {
            return pollLast.load(assetInfo);
        } finally {
            this.importers.addLast(pollLast);
        }
    }
}
