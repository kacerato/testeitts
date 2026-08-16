package com.jme3.asset.cache;

import com.jme3.asset.AssetKey;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class WeakRefAssetCache implements AssetCache {
    private static final Logger logger = Logger.getLogger(WeakRefAssetCache.class.getName());
    private final ReferenceQueue<Object> refQueue = new ReferenceQueue<>();
    private final ConcurrentHashMap<AssetKey, AssetRef> assetCache = new ConcurrentHashMap<>();

    public static class AssetRef extends WeakReference<Object> {
        private final AssetKey assetKey;

        public AssetRef(AssetKey assetKey, Object obj, ReferenceQueue<Object> referenceQueue) {
            super(obj, referenceQueue);
            this.assetKey = assetKey;
        }
    }

    private void removeCollectedAssets() {
        int i10 = 0;
        while (true) {
            AssetRef assetRef = (AssetRef) this.refQueue.poll();
            if (assetRef == null) {
                break;
            } else if (this.assetCache.remove(assetRef.assetKey) != null) {
                i10++;
            }
        }
        if (i10 >= 1) {
            logger.log(Level.FINE, "WeakRefAssetCache: {0} assets were purged from the cache.", Integer.valueOf(i10));
        }
    }

    @Override
    public <T> void addToCache(AssetKey<T> assetKey, T t10) {
        removeCollectedAssets();
        this.assetCache.put(assetKey, new AssetRef(assetKey, t10, this.refQueue));
    }

    @Override
    public void clearCache() {
        this.assetCache.clear();
    }

    @Override
    public boolean deleteFromCache(AssetKey assetKey) {
        return this.assetCache.remove(assetKey) != null;
    }

    @Override
    public <T> T getFromCache(AssetKey<T> assetKey) {
        AssetRef assetRef = this.assetCache.get(assetKey);
        if (assetRef != null) {
            return (T) assetRef.get();
        }
        return null;
    }

    @Override
    public void notifyNoAssetClone() {
    }

    @Override
    public <T> void registerAssetClone(AssetKey<T> assetKey, T t10) {
    }
}
