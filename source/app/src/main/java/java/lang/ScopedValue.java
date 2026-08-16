package java.lang;

import java.lang.ref.Reference;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.function.Supplier;
import jdk.internal.access.JavaUtilConcurrentTLRAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.vm.ScopedValueContainer;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Hidden;

public final class ScopedValue<T> {
    private final int hash = generateKey();
    private static final Object NEW_THREAD_BINDINGS;
    private static int nextKey;
    static final boolean $assertionsDisabled;

    @FunctionalInterface
    public interface CallableOp<T, X extends Throwable> {
        T call() throws Throwable;
    }

    static {
        $assertionsDisabled = !ScopedValue.class.desiredAssertionStatus();
        NEW_THREAD_BINDINGS = Thread.class;
        nextKey = -252645136;
    }

    public int hashCode() {
        return this.hash;
    }

    public static final class Snapshot {
        final Snapshot prev;
        final Carrier bindings;
        final int bitmask;
        private static final Object NIL = new Object();
        static final Snapshot EMPTY_SNAPSHOT = new Snapshot();

        Snapshot(Carrier bindings, Snapshot prev) {
            this.prev = prev;
            this.bindings = bindings;
            this.bitmask = bindings.bitmask | prev.bitmask;
        }

        protected Snapshot() {
            this.prev = null;
            this.bindings = null;
            this.bitmask = 0;
        }

        Object find(ScopedValue<?> key) {
            int bits = key.bitmask();
            Snapshot snapshot = this;
            while (true) {
                Snapshot snapshot2 = snapshot;
                if (ScopedValue.containsAll(snapshot2.bitmask, bits)) {
                    Carrier carrier = snapshot2.bindings;
                    while (true) {
                        Carrier carrier2 = carrier;
                        if (carrier2 != null && ScopedValue.containsAll(carrier2.bitmask, bits)) {
                            if (carrier2.getKey() != key) {
                                carrier = carrier2.prev;
                            } else {
                                Object value = carrier2.get();
                                return value;
                            }
                        }
                    }
                } else {
                    return NIL;
                }
                snapshot = snapshot2.prev;
            }
        }
    }

    public static final class Carrier {
        final int bitmask;
        final ScopedValue<?> key;
        final Object value;
        final Carrier prev;

        Carrier(ScopedValue<?> key, Object value, Carrier prev) {
            this.key = key;
            this.value = value;
            this.prev = prev;
            int bits = key.bitmask();
            this.bitmask = prev != null ? bits | prev.bitmask : bits;
        }

        private static <T> Carrier where(ScopedValue<T> key, T value, Carrier prev) {
            return new Carrier(key, value, prev);
        }

        public <T> Carrier where(ScopedValue<T> key, T value) {
            return where(key, value, this);
        }

        static <T> Carrier of(ScopedValue<T> key, T value) {
            return where(key, value, null);
        }

        Object get() {
            return this.value;
        }

        ScopedValue<?> getKey() {
            return this.key;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        
            throw new java.util.NoSuchElementException("No mapping present");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public <T> T get(ScopedValue<T> scopedValue) {
            int bitmask = scopedValue.bitmask();
            Carrier carrier = this;
            while (true) {
                Carrier carrier2 = carrier;
                if (carrier2 == null || !ScopedValue.containsAll(carrier2.bitmask, bitmask)) {
                    break;
                }
                if (carrier2.getKey() != scopedValue) {
                    carrier = carrier2.prev;
                } else {
                    return (T) carrier2.get();
                }
            }
        }

        public <R, X extends Throwable> R call(CallableOp<? extends R, X> callableOp) throws Throwable {
            Objects.requireNonNull(callableOp);
            Cache.invalidate(this.bitmask);
            return (R) runWith(new Snapshot(this, ScopedValue.scopedValueBindings()), callableOp);
        }

        @Hidden
        @ForceInline
        private <R, X extends Throwable> R runWith(Snapshot snapshot, CallableOp<R, X> callableOp) {
            try {
                Thread.setScopedValueBindings(snapshot);
                Thread.ensureMaterializedForStackWalk(snapshot);
                R r10 = (R) ScopedValueContainer.call(callableOp);
                Reference.reachabilityFence(snapshot);
                Thread.setScopedValueBindings(snapshot.prev);
                Cache.invalidate(this.bitmask);
                return r10;
            } catch (Throwable th2) {
                Reference.reachabilityFence(snapshot);
                Thread.setScopedValueBindings(snapshot.prev);
                Cache.invalidate(this.bitmask);
                throw th2;
            }
        }

        public void run(Runnable op) {
            Objects.requireNonNull(op);
            Cache.invalidate(this.bitmask);
            Snapshot prevSnapshot = ScopedValue.scopedValueBindings();
            Snapshot newSnapshot = new Snapshot(this, prevSnapshot);
            runWith(newSnapshot, op);
        }

        @Hidden
        @ForceInline
        private void runWith(Snapshot newSnapshot, Runnable op) {
            try {
                Thread.setScopedValueBindings(newSnapshot);
                Thread.ensureMaterializedForStackWalk(newSnapshot);
                ScopedValueContainer.run(op);
            } finally {
                Reference.reachabilityFence(newSnapshot);
                Thread.setScopedValueBindings(newSnapshot.prev);
                Cache.invalidate(this.bitmask);
            }
        }
    }

    public static <T> Carrier where(ScopedValue<T> key, T value) {
        return Carrier.of(key, value);
    }

    private ScopedValue() {
    }

    public static <T> ScopedValue<T> newInstance() {
        return new ScopedValue<>();
    }

    @ForceInline
    public T get() {
        Object[] scopedValueCache = scopedValueCache();
        if (scopedValueCache != null) {
            int i10 = (this.hash & Cache.SLOT_MASK) * 2;
            if (scopedValueCache[i10] == this) {
                return (T) scopedValueCache[i10 + 1];
            }
            int i11 = ((this.hash >>> 4) & Cache.SLOT_MASK) * 2;
            if (scopedValueCache[i11] == this) {
                return (T) scopedValueCache[i11 + 1];
            }
        }
        return slowGet();
    }

    private T slowGet() {
        T t10 = (T) scopedValueBindings().find(this);
        if (t10 == Snapshot.NIL) {
            throw new NoSuchElementException("ScopedValue not bound");
        }
        Cache.put(this, t10);
        return t10;
    }

    private Object findBinding() {
        Object[] objects = scopedValueCache();
        if (objects != null) {
            int n10 = (this.hash & Cache.SLOT_MASK) * 2;
            if (objects[n10] == this) {
                return objects[n10 + 1];
            }
            int n11 = ((this.hash >>> 4) & Cache.SLOT_MASK) * 2;
            if (objects[n11] == this) {
                return objects[n11 + 1];
            }
        }
        Object value = scopedValueBindings().find(this);
        boolean found = value != Snapshot.NIL;
        if (found) {
            Cache.put(this, value);
        }
        return value;
    }

    public boolean isBound() {
        Object obj = findBinding();
        return obj != Snapshot.NIL;
    }

    public T orElse(T t10) {
        Objects.requireNonNull(t10);
        T t11 = (T) findBinding();
        if (t11 != Snapshot.NIL) {
            return t11;
        }
        return t10;
    }

    public <X extends Throwable> T orElseThrow(Supplier<? extends X> supplier) throws Throwable {
        Objects.requireNonNull(supplier);
        T t10 = (T) findBinding();
        if (t10 != Snapshot.NIL) {
            return t10;
        }
        throw supplier.get();
    }

    private static Object[] scopedValueCache() {
        return Thread.scopedValueCache();
    }

    private static void setScopedValueCache(Object[] cache) {
        Thread.setScopedValueCache(cache);
    }

    private static Snapshot scopedValueBindings() {
        Object bindings = Thread.scopedValueBindings();
        if (bindings == NEW_THREAD_BINDINGS) {
            return Snapshot.EMPTY_SNAPSHOT;
        }
        if (bindings == null) {
            bindings = Thread.findScopedValueBindings();
            if (bindings == NEW_THREAD_BINDINGS || bindings == null) {
                bindings = Snapshot.EMPTY_SNAPSHOT;
            }
            Thread.setScopedValueBindings(bindings);
        }
        if ($assertionsDisabled || bindings != null) {
            return (Snapshot) bindings;
        }
        throw new AssertionError();
    }

    private static synchronized int generateKey() {
        int x10 = nextKey;
        do {
            int x11 = x10 ^ (x10 >>> 12);
            int x12 = x11 ^ (x11 << 9);
            x10 = x12 ^ (x12 >>> 23);
        } while (Cache.primarySlot(x10) == Cache.secondarySlot(x10));
        nextKey = x10;
        return x10;
    }

    int bitmask() {
        return (1 << Cache.primaryIndex(this)) | (1 << (Cache.secondaryIndex(this) + 16));
    }

    static boolean containsAll(int bitmask, int targetBits) {
        return (bitmask & targetBits) == targetBits;
    }

    public static final class Cache {
        static final int INDEX_BITS = 4;
        static final int TABLE_SIZE = 16;
        static final int TABLE_MASK = 15;
        static final int PRIMARY_MASK = 65535;
        private static final int CACHE_TABLE_SIZE;
        private static final int SLOT_MASK;
        private static final int MAX_CACHE_SIZE = 16;
        private static final JavaUtilConcurrentTLRAccess THREAD_LOCAL_RANDOM_ACCESS;

        private Cache() {
        }

        static {
            String sizeString = System.getProperty("java.lang.ScopedValue.cacheSize", "16");
            Integer cacheSize = Integer.valueOf(sizeString);
            if (cacheSize.intValue() < 2 || cacheSize.intValue() > 16) {
                cacheSize = 16;
                System.err.println("java.lang.ScopedValue.cacheSize is out of range: is " + sizeString);
            }
            if ((cacheSize.intValue() & (cacheSize.intValue() - 1)) != 0) {
                cacheSize = 16;
                System.err.println("java.lang.ScopedValue.cacheSize must be an integer power of 2: is " + sizeString);
            }
            CACHE_TABLE_SIZE = cacheSize.intValue();
            SLOT_MASK = cacheSize.intValue() - 1;
            THREAD_LOCAL_RANDOM_ACCESS = SharedSecrets.getJavaUtilConcurrentTLRAccess();
        }

        static int primaryIndex(ScopedValue<?> key) {
            return ((ScopedValue) key).hash & 15;
        }

        static int secondaryIndex(ScopedValue<?> key) {
            return (((ScopedValue) key).hash >> 4) & 15;
        }

        private static int primarySlot(ScopedValue<?> key) {
            return key.hashCode() & SLOT_MASK;
        }

        private static int secondarySlot(ScopedValue<?> key) {
            return (((ScopedValue) key).hash >> 4) & SLOT_MASK;
        }

        static int primarySlot(int hash) {
            return hash & SLOT_MASK;
        }

        static int secondarySlot(int hash) {
            return (hash >> 4) & SLOT_MASK;
        }

        static void put(ScopedValue<?> key, Object value) {
            Object[] theCache = ScopedValue.scopedValueCache();
            if (theCache == null) {
                theCache = new Object[CACHE_TABLE_SIZE * 2];
                ScopedValue.setScopedValueCache(theCache);
            }
            int k12 = primarySlot(key);
            int k22 = secondarySlot(key);
            boolean usePrimaryIndex = chooseVictim();
            int victim = usePrimaryIndex ? k12 : k22;
            int other = usePrimaryIndex ? k22 : k12;
            setKeyAndObjectAt(victim, key, value);
            if (getKey(theCache, other) == key) {
                setKeyAndObjectAt(other, key, value);
            }
        }

        private static void setKeyAndObjectAt(int n10, Object key, Object value) {
            Object[] cache = ScopedValue.scopedValueCache();
            cache[n10 * 2] = key;
            cache[(n10 * 2) + 1] = value;
        }

        private static void setKeyAndObjectAt(Object[] cache, int n10, Object key, Object value) {
            cache[n10 * 2] = key;
            cache[(n10 * 2) + 1] = value;
        }

        private static Object getKey(Object[] objs, int n10) {
            return objs[n10 * 2];
        }

        private static void setKey(Object[] objs, int n10, Object key) {
            objs[n10 * 2] = key;
        }

        private static boolean chooseVictim() {
            int r10 = THREAD_LOCAL_RANDOM_ACCESS.nextSecondaryThreadLocalRandomSeed();
            return (r10 & 15) >= 5;
        }

        static void invalidate(int toClearBits) {
            int toClearBits2 = (toClearBits >>> 16) | (toClearBits & 65535);
            Object[] objects = ScopedValue.scopedValueCache();
            if (objects != null) {
                int i10 = toClearBits2;
                while (true) {
                    int bits = i10;
                    if (bits != 0) {
                        int index = Integer.numberOfTrailingZeros(bits);
                        setKeyAndObjectAt(objects, index & SLOT_MASK, null, null);
                        i10 = bits & ((-2) << index);
                    } else {
                        return;
                    }
                }
            }
        }
    }
}
