package org.eclipse.jdt.internal.core.nd.db;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.core.JavaCore;

public final class ChunkCache {
    public static final String CHUNK_CACHE_SIZE_MB = "chunkCacheSizeMb";
    public static final double CHUNK_CACHE_SIZE_MB_DEFAULT = 128.0d;
    public static final String CHUNK_CACHE_SIZE_PERCENT = "chunkCacheSizePercent";
    public static final double CHUNK_CACHE_SIZE_PERCENT_DEFAULT = 5.0d;
    private static ChunkCache sSharedInstance;
    private Chunk[] fPageTable;
    private int fPointer;
    private boolean fTableIsFull;

    static {
        final IEclipsePreferences node = InstanceScope.INSTANCE.getNode(JavaCore.PLUGIN_ID);
        sSharedInstance = new ChunkCache(getChunkCacheSize(node));
        node.addPreferenceChangeListener(new IEclipsePreferences.IPreferenceChangeListener() {
            public final void a(IEclipsePreferences.PreferenceChangeEvent preferenceChangeEvent) {
                ChunkCache.lambda$0(node, preferenceChangeEvent);
            }
        });
    }

    public ChunkCache() {
        this(5242880L);
    }

    private int computeLength(long j10) {
        return Math.max(1, (int) Math.min(j10 / 4096, 2147483647L));
    }

    private void evictChunk() {
        while (true) {
            Chunk[] chunkArr = this.fPageTable;
            int i10 = this.fPointer;
            Chunk chunk = chunkArr[i10];
            if (!chunk.fCacheHitFlag) {
                chunk.fCacheIndex = -1;
                chunk.fDatabase.checkIfChunkReleased(chunk);
                this.fPageTable[this.fPointer] = null;
                return;
            }
            chunk.fCacheHitFlag = false;
            this.fPointer = (i10 + 1) % chunkArr.length;
        }
    }

    private static long getChunkCacheSize(IEclipsePreferences iEclipsePreferences) {
        return Math.min((long) ((Runtime.getRuntime().maxMemory() / 100.0d) * Math.max(1.0d, Math.min(50.0d, iEclipsePreferences.getDouble(CHUNK_CACHE_SIZE_PERCENT, 5.0d)))), (long) (Math.max(iEclipsePreferences.getDouble(CHUNK_CACHE_SIZE_MB, 128.0d), 1.0d) * 1024.0d * 1024.0d));
    }

    public static ChunkCache getSharedInstance() {
        return sSharedInstance;
    }

    public static void lambda$0(IEclipsePreferences iEclipsePreferences, IEclipsePreferences.PreferenceChangeEvent preferenceChangeEvent) {
        String key = preferenceChangeEvent.getKey();
        if (key.equals(CHUNK_CACHE_SIZE_PERCENT) || key.equals(CHUNK_CACHE_SIZE_MB)) {
            sSharedInstance.setMaxSize(getChunkCacheSize(iEclipsePreferences));
        }
    }

    public synchronized void add(Chunk chunk) {
        if (chunk.fCacheIndex >= 0) {
            chunk.fCacheHitFlag = true;
            return;
        }
        if (this.fTableIsFull) {
            evictChunk();
            int i10 = this.fPointer;
            chunk.fCacheIndex = i10;
            this.fPageTable[i10] = chunk;
        } else {
            int i11 = this.fPointer;
            chunk.fCacheIndex = i11;
            Chunk[] chunkArr = this.fPageTable;
            chunkArr[i11] = chunk;
            int i12 = i11 + 1;
            this.fPointer = i12;
            if (i12 == chunkArr.length) {
                this.fPointer = 0;
                this.fTableIsFull = true;
            }
        }
    }

    public synchronized void clear() {
        int i10 = 0;
        while (true) {
            Chunk[] chunkArr = this.fPageTable;
            if (i10 >= chunkArr.length) {
                this.fTableIsFull = false;
                this.fPointer = 0;
            } else {
                Chunk chunk = chunkArr[i10];
                if (chunk != null) {
                    chunk.fCacheIndex = -1;
                    chunk.fDatabase.checkIfChunkReleased(chunk);
                    this.fPageTable[i10] = null;
                }
                i10++;
            }
        }
    }

    public synchronized long getMaxSize() {
        return this.fPageTable.length * 4096;
    }

    public synchronized void remove(Chunk chunk) {
        try {
            int i10 = chunk.fCacheIndex;
            if (i10 >= 0) {
                if (this.fTableIsFull) {
                    this.fPointer = this.fPageTable.length - 1;
                    this.fTableIsFull = false;
                } else {
                    this.fPointer--;
                }
                chunk.fCacheIndex = -1;
                Chunk[] chunkArr = this.fPageTable;
                int i11 = this.fPointer;
                Chunk chunk2 = chunkArr[i11];
                chunkArr[i10] = chunk2;
                chunk2.fCacheIndex = i10;
                chunkArr[i11] = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setMaxSize(long j10) {
        try {
            int computeLength = computeLength(j10);
            int length = this.fTableIsFull ? this.fPageTable.length : this.fPointer;
            if (computeLength > length) {
                Chunk[] chunkArr = new Chunk[computeLength];
                System.arraycopy(this.fPageTable, 0, chunkArr, 0, length);
                this.fTableIsFull = false;
                this.fPointer = length;
                this.fPageTable = chunkArr;
            } else {
                for (int i10 = computeLength; i10 < length; i10++) {
                    Chunk chunk = this.fPageTable[i10];
                    chunk.fCacheIndex = -1;
                    chunk.fDatabase.checkIfChunkReleased(chunk);
                }
                Chunk[] chunkArr2 = new Chunk[computeLength];
                System.arraycopy(this.fPageTable, 0, chunkArr2, 0, computeLength);
                this.fTableIsFull = true;
                this.fPointer = 0;
                this.fPageTable = chunkArr2;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public ChunkCache(long j10) {
        this.fPageTable = new Chunk[computeLength(j10)];
    }
}
