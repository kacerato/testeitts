package org.openjdk.tools.javac.file;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.openjdk.tools.javac.util.Context;

public class CacheFSInfo extends FSInfo {
    private final Map<Path, Entry> cache = new ConcurrentHashMap();

    public static class Entry {
        Path canonicalFile;
        boolean exists;
        boolean isDirectory;
        boolean isFile;
        List<Path> jarClassPath;

        private Entry() {
        }
    }

    private Entry getEntry(Path path) {
        Entry entry = this.cache.get(path);
        if (entry != null) {
            return entry;
        }
        Entry entry2 = new Entry();
        entry2.canonicalFile = super.getCanonicalFile(path);
        entry2.exists = super.exists(path);
        entry2.isDirectory = super.isDirectory(path);
        entry2.isFile = super.isFile(path);
        this.cache.put(path, entry2);
        return entry2;
    }

    public static FSInfo lambda$preRegister$0(Context context) {
        CacheFSInfo cacheFSInfo = new CacheFSInfo();
        context.put((Class<Class>) FSInfo.class, (Class) cacheFSInfo);
        return cacheFSInfo;
    }

    public static void preRegister(Context context) {
        context.put(FSInfo.class, new Context.Factory() {
            @Override
            public final Object make(Context context2) {
                FSInfo lambda$preRegister$0;
                lambda$preRegister$0 = CacheFSInfo.lambda$preRegister$0(context2);
                return lambda$preRegister$0;
            }
        });
    }

    public void clearCache() {
        this.cache.clear();
    }

    @Override
    public boolean exists(Path path) {
        return getEntry(path).exists;
    }

    @Override
    public Path getCanonicalFile(Path path) {
        return getEntry(path).canonicalFile;
    }

    @Override
    public List<Path> getJarClassPath(Path path) throws IOException {
        Entry entry = getEntry(path);
        if (entry.jarClassPath == null) {
            entry.jarClassPath = super.getJarClassPath(path);
        }
        return entry.jarClassPath;
    }

    @Override
    public boolean isDirectory(Path path) {
        return getEntry(path).isDirectory;
    }

    @Override
    public boolean isFile(Path path) {
        return getEntry(path).isFile;
    }
}
