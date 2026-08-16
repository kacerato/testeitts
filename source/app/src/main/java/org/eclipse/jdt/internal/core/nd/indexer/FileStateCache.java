package org.eclipse.jdt.internal.core.nd.indexer;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.nd.Nd;

public class FileStateCache {
    private final Map<String, Boolean> fileStateCache = new HashMap();

    public static FileStateCache create() {
        return new FileStateCache();
    }

    public static FileStateCache getCache(Nd nd2) {
        return (FileStateCache) nd2.getData(FileStateCache.class, new Supplier() {
            @Override
            public final Object get() {
                FileStateCache create;
                create = FileStateCache.create();
                return create;
            }
        });
    }

    public void clear() {
        synchronized (this.fileStateCache) {
            this.fileStateCache.clear();
        }
    }

    public Boolean isUpToDate(String str) {
        Boolean bool;
        synchronized (this.fileStateCache) {
            bool = this.fileStateCache.get(str);
        }
        return bool;
    }

    public void put(String str, boolean z10) {
        synchronized (this.fileStateCache) {
            this.fileStateCache.put(str, Boolean.valueOf(z10));
        }
    }

    public void remove(String str) {
        synchronized (this.fileStateCache) {
            this.fileStateCache.remove(str);
        }
    }
}
