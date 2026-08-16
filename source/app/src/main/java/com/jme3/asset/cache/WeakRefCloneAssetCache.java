package com.jme3.asset.cache;

import com.jme3.asset.AssetKey;
import com.jme3.asset.CloneableSmartAsset;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class WeakRefCloneAssetCache implements AssetCache {
    private static final Logger logger = Logger.getLogger(WeakRefAssetCache.class.getName());
    private final ReferenceQueue<AssetKey> refQueue = new ReferenceQueue<>();
    private final ConcurrentHashMap<AssetKey, AssetRef> smartCache = new ConcurrentHashMap<>();
    private final ThreadLocal<ArrayList<AssetKey>> assetLoadStack = new ThreadLocal<ArrayList<AssetKey>>() {
        @Override
        public ArrayList<AssetKey> initialValue() {
            return new ArrayList<>();
        }
    };

    public static final class AssetRef extends WeakReference<AssetKey> {
        CloneableSmartAsset asset;

        public AssetRef(CloneableSmartAsset cloneableSmartAsset, AssetKey assetKey) {
            super(assetKey);
            this.asset = cloneableSmartAsset;
        }
    }

    public static final class KeyRef extends PhantomReference<AssetKey> {
        AssetKey clonedKey;

        public KeyRef(AssetKey assetKey, ReferenceQueue<AssetKey> referenceQueue) {
            super(assetKey, referenceQueue);
            this.clonedKey = assetKey.m1262clone();
        }
    }

    private void removeCollectedAssets() {
        int i10 = 0;
        while (true) {
            KeyRef keyRef = (KeyRef) this.refQueue.poll();
            if (keyRef == null) {
                break;
            }
            if (this.smartCache.remove(keyRef.clonedKey) != null) {
                i10++;
            }
        }
        if (i10 >= 1) {
            logger.log(Level.FINE, "WeakRefCloneAssetCache: {0} assets were purged from the cache.", Integer.valueOf(i10));
        }
    }

    @Override
    public <T> void addToCache(AssetKey<T> assetKey, T t10) {
        removeCollectedAssets();
        CloneableSmartAsset cloneableSmartAsset = (CloneableSmartAsset) t10;
        cloneableSmartAsset.setKey(null);
        this.smartCache.put(new KeyRef(assetKey, this.refQueue).clonedKey, new AssetRef(cloneableSmartAsset, assetKey));
        this.assetLoadStack.get().add(assetKey);
    }

    @Override
    public void clearCache() {
        if (!this.assetLoadStack.get().isEmpty()) {
            throw new UnsupportedOperationException("Cache cannot be modifiedwhile assets are being loaded");
        }
        this.smartCache.clear();
    }

    @Override
    public boolean deleteFromCache(AssetKey assetKey) {
        if (this.assetLoadStack.get().isEmpty()) {
            return this.smartCache.remove(assetKey) != null;
        }
        throw new UnsupportedOperationException("Cache cannot be modifiedwhile assets are being loaded");
    }

    @Override
    public <T> T getFromCache(AssetKey<T> assetKey) {
        AssetKey assetKey2;
        AssetRef assetRef = this.smartCache.get(assetKey);
        if (assetRef == null || (assetKey2 = assetRef.get()) == null) {
            return null;
        }
        this.assetLoadStack.get().add(assetKey2);
        return (T) assetRef.asset;
    }

    @Override
    public void notifyNoAssetClone() {
        this.assetLoadStack.get().remove(r0.size() - 1);
    }

    @Override
    public <T> void registerAssetClone(AssetKey<T> assetKey, T t10) {
        ((CloneableSmartAsset) t10).setKey(this.assetLoadStack.get().remove(r2.size() - 1));
    }
}
