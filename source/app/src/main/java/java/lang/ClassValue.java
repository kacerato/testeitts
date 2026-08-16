package java.lang;

import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.ref.WeakReference;
import java.lang.runtime.ObjectMethods;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import jdk.internal.misc.Unsafe;

public abstract class ClassValue<T> {
    private static final int HASH_INCREMENT = 1640531527;
    static final int HASH_MASK = 1073741823;
    private static final Entry<?>[] EMPTY_CACHE = {null};
    private static final AtomicInteger nextHashCode = new AtomicInteger();
    private static final Object CRITICAL_SECTION = new Object();
    private static final Unsafe UNSAFE = Unsafe.getUnsafe();
    final int hashCodeForCache = nextHashCode.getAndAdd(HASH_INCREMENT) & 1073741823;
    final Identity identity = new Identity();
    private volatile Version<T> version = new Version<>(this);

    protected abstract T computeValue(Class<?> cls);

    public T get(Class<?> type) {
        Entry<?>[] cache = getCacheCarefully(type);
        Entry<?> probeHomeLocation = ClassValueMap.probeHomeLocation(cache, this);
        if (match(probeHomeLocation)) {
            return probeHomeLocation.value;
        }
        return getFromBackup(cache, type);
    }

    public void remove(Class<?> type) {
        ClassValueMap map = getMap(type);
        map.removeAccess(this);
    }

    void put(Class<?> type, T value) {
        ClassValueMap map = getMap(type);
        map.forcedAssociateAccess(this, value);
    }

    private static Entry<?>[] getCacheCarefully(Class<?> type) {
        ClassValueMap map = type.classValueMap;
        if (map == null) {
            return EMPTY_CACHE;
        }
        Entry<?>[] cache = map.getCache();
        return cache;
    }

    private T getFromBackup(Entry<?>[] cache, Class<?> type) {
        Entry<T> e10 = ClassValueMap.probeBackupLocations(cache, this);
        if (e10 != null) {
            return e10.value;
        }
        return getFromHashMap(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    Entry<T> castEntry(Entry<?> entry) {
        return entry;
    }

    private T getFromHashMap(Class<?> type) {
        ClassValueMap map = getMap(type);
        Object accessed = map.readAccess(this);
        if (accessed instanceof Entry) {
            Entry<T> cast = (Entry) accessed;
            return cast.value;
        }
        do {
            try {
                RemovalToken token = (RemovalToken) accessed;
                T value = computeValue(type);
                accessed = map.associateAccess(this, token, value);
            } catch (Throwable ex) {
                Object accessed2 = map.readAccess(this);
                if (accessed2 instanceof Entry) {
                    Entry<T> cast2 = (Entry) accessed2;
                    return cast2.value;
                }
                if (ex instanceof RuntimeException) {
                    RuntimeException rte = (RuntimeException) ex;
                    throw rte;
                }
                if (!(ex instanceof Error)) {
                    throw new Error(ex);
                }
                Error err = (Error) ex;
                throw err;
            }
        } while (!(accessed instanceof Entry));
        Entry<T> cast3 = (Entry) accessed;
        return cast3.value;
    }

    boolean match(Entry<?> e10) {
        return e10 != null && e10.version() == this.version;
    }

    public static class Identity {
        Identity() {
        }
    }

    void bumpVersion() {
        this.version = new Version<>(this);
    }

    public static final class Version<T> extends Record {
        private final ClassValue<T> classValue;

        Version(ClassValue<T> classValue) {
            this.classValue = classValue;
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, Version.class), Version.class, "classValue", "FIELD:Ljava/lang/ClassValue$Version;->classValue:Ljava/lang/ClassValue;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final int hashCode() {
            return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, Version.class), Version.class, "classValue", "FIELD:Ljava/lang/ClassValue$Version;->classValue:Ljava/lang/ClassValue;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final boolean equals(Object o10) {
            return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, Version.class, Object.class), Version.class, "classValue", "FIELD:Ljava/lang/ClassValue$Version;->classValue:Ljava/lang/ClassValue;").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
        }

        public ClassValue<T> classValue() {
            return this.classValue;
        }

        boolean isLive() {
            return ((ClassValue) this.classValue).version == this;
        }
    }

    public static final class RemovalToken {
        private final long actorId = Thread.currentThread().threadId();
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !ClassValue.class.desiredAssertionStatus();
        }

        private RemovalToken() {
        }

        private static boolean allowsAssociation(RemovalToken current, RemovalToken start) {
            if ($assertionsDisabled || current != null || start == null) {
                return current == start || current.actorId == Thread.currentThread().threadId();
            }
            throw new AssertionError((Object) (((Object) current) + " : " + ((Object) start)));
        }
    }

    public static final class Entry<T> {
        final T value;
        final WeakReference<Version<T>> version;
        static final Entry<?> DEAD_ENTRY = new Entry<>(null, null);

        Entry(Version<T> version, T value) {
            this.value = value;
            this.version = new WeakReference<>(version);
        }

        Version<T> version() {
            return this.version.get();
        }

        ClassValue<T> classValueOrNull() {
            Version<T> v10 = version();
            if (v10 == null) {
                return null;
            }
            return v10.classValue();
        }

        boolean isLive() {
            Version<T> v10 = version();
            if (v10 == null) {
                return false;
            }
            if (v10.isLive()) {
                return true;
            }
            this.version.clear();
            return false;
        }

        Entry<T> refreshVersion(Version<T> v22) {
            return this.version.refersTo(v22) ? this : new Entry<>(v22, this.value);
        }
    }

    private static ClassValueMap getMap(Class<?> type) {
        ClassValueMap map = type.classValueMap;
        return map != null ? map : initializeMap(type);
    }

    private static ClassValueMap initializeMap(Class<?> type) {
        ClassValueMap map;
        synchronized (CRITICAL_SECTION) {
            ClassValueMap classValueMap = type.classValueMap;
            map = classValueMap;
            if (classValueMap == null) {
                map = new ClassValueMap();
                UNSAFE.storeFence();
                type.classValueMap = map;
            }
        }
        return map;
    }

    static <T> Entry<T> makeEntry(Version<T> explicitVersion, T value) {
        return new Entry<>(explicitVersion, value);
    }

    public static final class ClassValueMap extends WeakHashMap<Identity, Object> {
        private Entry<?>[] cacheArray;
        private int cacheLoad;
        private int cacheLoadLimit;
        private static final int INITIAL_ENTRIES = 32;
        private static final int CACHE_LOAD_LIMIT = 67;
        private static final int PROBE_LIMIT = 6;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !ClassValue.class.desiredAssertionStatus();
        }

        ClassValueMap() {
            sizeCache(32);
        }

        Entry<?>[] getCache() {
            return this.cacheArray;
        }

        synchronized <T> Object readAccess(ClassValue<T> classValue) {
            Object item = get(classValue.identity);
            if (item instanceof Entry) {
                Entry<T> entry = (Entry) item;
                Entry<T> updated = entry.refreshVersion(((ClassValue) classValue).version);
                if (updated != entry) {
                    put(classValue.identity, updated);
                }
                checkCacheLoad();
                addToCache(classValue, updated);
            }
            return item;
        }

        synchronized <T> Object associateAccess(ClassValue<T> classValue, RemovalToken startToken, T value) {
            Object item = readAccess(classValue);
            if (item instanceof Entry) {
                return item;
            }
            RemovalToken currentToken = (RemovalToken) item;
            if (RemovalToken.allowsAssociation(currentToken, startToken)) {
                Entry<T> entry = ClassValue.makeEntry(((ClassValue) classValue).version, value);
                put(classValue.identity, entry);
                checkCacheLoad();
                addToCache(classValue, entry);
                return entry;
            }
            return currentToken;
        }

        synchronized void removeAccess(ClassValue<?> classValue) {
            put(classValue.identity, new RemovalToken());
            classValue.bumpVersion();
            removeStaleEntries(classValue);
        }

        synchronized <T> void forcedAssociateAccess(ClassValue<T> classValue, T value) {
            classValue.bumpVersion();
            removeStaleEntries();
            Entry<T> entry = ClassValue.makeEntry(((ClassValue) classValue).version, value);
            put(classValue.identity, entry);
            checkCacheLoad();
            addToCache(classValue, entry);
        }

        static Entry<?> loadFromCache(Entry<?>[] cache, int i10) {
            return cache[i10 & (cache.length - 1)];
        }

        static <T> Entry<T> probeHomeLocation(Entry<?>[] cache, ClassValue<T> classValue) {
            return classValue.castEntry(loadFromCache(cache, classValue.hashCodeForCache));
        }

        static <T> Entry<T> probeBackupLocations(Entry<?>[] cache, ClassValue<T> classValue) {
            Entry<?> e10;
            Entry<?> entry;
            int mask = cache.length - 1;
            int home = classValue.hashCodeForCache & mask;
            Entry<?> e22 = cache[home];
            if (e22 == null) {
                return null;
            }
            int pos2 = -1;
            for (int i10 = home + 1; i10 < home + 6 && (e10 = cache[i10 & mask]) != null; i10++) {
                if (classValue.match(e10)) {
                    cache[home] = e10;
                    if (pos2 >= 0) {
                        cache[i10 & mask] = Entry.DEAD_ENTRY;
                    } else {
                        pos2 = i10;
                    }
                    int i11 = pos2 & mask;
                    if (entryDislocation(cache, pos2, e22) < 6) {
                        entry = e22;
                    } else {
                        entry = Entry.DEAD_ENTRY;
                    }
                    cache[i11] = entry;
                    return classValue.castEntry(e10);
                }
                if (!e10.isLive() && pos2 < 0) {
                    pos2 = i10;
                }
            }
            return null;
        }

        private static int entryDislocation(Entry<?>[] cache, int pos, Entry<?> e10) {
            ClassValue<?> cv = e10.classValueOrNull();
            if (cv == null) {
                return 0;
            }
            int mask = cache.length - 1;
            return (pos - cv.hashCodeForCache) & mask;
        }

        private void sizeCache(int length) {
            if (!$assertionsDisabled && (length & (length - 1)) != 0) {
                throw new AssertionError();
            }
            this.cacheLoad = 0;
            this.cacheLoadLimit = (int) ((length * 67.0d) / 100.0d);
            this.cacheArray = new Entry[length];
        }

        private void checkCacheLoad() {
            if (this.cacheLoad >= this.cacheLoadLimit) {
                reduceCacheLoad();
            }
        }

        private void reduceCacheLoad() {
            removeStaleEntries();
            if (this.cacheLoad < this.cacheLoadLimit) {
                return;
            }
            Entry<?>[] oldCache = getCache();
            if (oldCache.length > 1073741823) {
                return;
            }
            sizeCache(oldCache.length * 2);
            for (Entry<?> e10 : oldCache) {
                if (e10 != null && e10.isLive()) {
                    addToCache(e10);
                }
            }
        }

        private void removeStaleEntries(Entry<?>[] cache, int begin, int count) {
            int mask = cache.length - 1;
            int removed = 0;
            for (int i10 = begin; i10 < begin + count; i10++) {
                Entry<?> e10 = cache[i10 & mask];
                if (e10 != null && !e10.isLive()) {
                    Entry<?> replacement = findReplacement(cache, i10);
                    cache[i10 & mask] = replacement;
                    if (replacement == null) {
                        removed++;
                    }
                }
            }
            this.cacheLoad = Math.max(0, this.cacheLoad - removed);
        }

        private Entry<?> findReplacement(Entry<?>[] cache, int home1) {
            Entry<?> e22;
            int dis2;
            int home2;
            Entry<?> replacement = null;
            int haveReplacement = -1;
            int replacementPos = 0;
            int mask = cache.length - 1;
            for (int i22 = home1 + 1; i22 < home1 + 6 && (e22 = cache[i22 & mask]) != null; i22++) {
                if (e22.isLive() && (dis2 = entryDislocation(cache, i22, e22)) != 0 && (home2 = i22 - dis2) <= home1) {
                    if (home2 == home1) {
                        haveReplacement = 1;
                        replacementPos = i22;
                        replacement = e22;
                    } else if (haveReplacement <= 0) {
                        haveReplacement = 0;
                        replacementPos = i22;
                        replacement = e22;
                    }
                }
            }
            if (haveReplacement >= 0) {
                if (cache[(replacementPos + 1) & mask] != null) {
                    cache[replacementPos & mask] = Entry.DEAD_ENTRY;
                } else {
                    cache[replacementPos & mask] = null;
                    this.cacheLoad--;
                }
            }
            return replacement;
        }

        private void removeStaleEntries(ClassValue<?> classValue) {
            removeStaleEntries(getCache(), classValue.hashCodeForCache, 6);
        }

        private void removeStaleEntries() {
            Entry<?>[] cache = getCache();
            removeStaleEntries(cache, 0, (cache.length + 6) - 1);
        }

        private <T> void addToCache(Entry<T> e10) {
            ClassValue<T> classValue = e10.classValueOrNull();
            if (classValue != null) {
                addToCache(classValue, e10);
            }
        }

        private <T> void addToCache(ClassValue<T> classValue, Entry<T> e10) {
            Entry<?>[] cache = getCache();
            int mask = cache.length - 1;
            int home = classValue.hashCodeForCache & mask;
            Entry<?> e22 = placeInCache(cache, home, e10, false);
            if (e22 == null) {
                return;
            }
            int dis2 = entryDislocation(cache, home, e22);
            int home2 = home - dis2;
            for (int i22 = home2; i22 < home2 + 6 && placeInCache(cache, i22 & mask, e22, true) != null; i22++) {
            }
        }

        private Entry<?> placeInCache(Entry<?>[] cache, int pos, Entry<?> e10, boolean gently) {
            Entry<?> e22 = overwrittenEntry(cache[pos]);
            if (gently && e22 != null) {
                return e10;
            }
            cache[pos] = e10;
            return e22;
        }

        private <T> Entry<T> overwrittenEntry(Entry<T> e22) {
            if (e22 != null) {
                if (e22.isLive()) {
                    return e22;
                }
                return null;
            }
            this.cacheLoad++;
            return null;
        }
    }
}
