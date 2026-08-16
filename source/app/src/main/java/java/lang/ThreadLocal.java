package java.lang;

import java.lang.StackWalker;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import jdk.internal.misc.CarrierThreadLocal;
import jdk.internal.misc.TerminatingThreadLocal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ThreadLocal.class
 */
public class ThreadLocal<T> {
    private static final boolean TRACE_VTHREAD_LOCALS;
    private final int threadLocalHashCode = nextHashCode();
    private static final AtomicInteger nextHashCode;
    private static final int HASH_INCREMENT = 1640531527;
    private static final ThreadLocal<Boolean> DUMPING_STACK;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !ThreadLocal.class.desiredAssertionStatus();
        TRACE_VTHREAD_LOCALS = traceVirtualThreadLocals();
        nextHashCode = new AtomicInteger();
        DUMPING_STACK = new ThreadLocal<>();
    }

    private static int nextHashCode() {
        return nextHashCode.getAndAdd(HASH_INCREMENT);
    }

    protected T initialValue() {
        return null;
    }

    public static <S> ThreadLocal<S> withInitial(Supplier<? extends S> supplier) {
        return new SuppliedThreadLocal(supplier);
    }

    public T get() {
        return get(Thread.currentThread());
    }

    public T getCarrierThreadLocal() {
        if ($assertionsDisabled || (this instanceof CarrierThreadLocal)) {
            return get(Thread.currentCarrierThread());
        }
        throw new AssertionError();
    }

    private T get(Thread thread) {
        ThreadLocalMap.Entry entry;
        ThreadLocalMap map = getMap(thread);
        if (map != null && (entry = map.getEntry(this)) != null) {
            return (T) entry.value;
        }
        return setInitialValue(thread);
    }

    private T setInitialValue(Thread t10) {
        T value = initialValue();
        ThreadLocalMap map = getMap(t10);
        if (map != null) {
            map.set(this, value);
        } else {
            createMap(t10, value);
        }
        if (this instanceof TerminatingThreadLocal) {
            TerminatingThreadLocal<?> ttl = (TerminatingThreadLocal) this;
            TerminatingThreadLocal.register(ttl);
        }
        if (TRACE_VTHREAD_LOCALS && t10 == Thread.currentThread() && t10.isVirtual()) {
            printStackTrace();
        }
        return value;
    }

    public void set(T value) {
        set(Thread.currentThread(), value);
        if (TRACE_VTHREAD_LOCALS && Thread.currentThread().isVirtual()) {
            printStackTrace();
        }
    }

    public void setCarrierThreadLocal(T value) {
        if (!$assertionsDisabled && !(this instanceof CarrierThreadLocal)) {
            throw new AssertionError();
        }
        set(Thread.currentCarrierThread(), value);
    }

    private void set(Thread t10, T value) {
        ThreadLocalMap map = getMap(t10);
        if (map != null) {
            map.set(this, value);
        } else {
            createMap(t10, value);
        }
    }

    public void remove() {
        remove(Thread.currentThread());
    }

    public void removeCarrierThreadLocal() {
        if (!$assertionsDisabled && !(this instanceof CarrierThreadLocal)) {
            throw new AssertionError();
        }
        remove(Thread.currentCarrierThread());
    }

    private void remove(Thread t10) {
        ThreadLocalMap m10 = getMap(t10);
        if (m10 != null) {
            m10.remove(this);
        }
    }

    ThreadLocalMap getMap(Thread t10) {
        if (this instanceof TerminatingThreadLocal) {
            return t10.terminatingThreadLocals();
        }
        return t10.threadLocals();
    }

    void createMap(Thread t10, T firstValue) {
        ThreadLocalMap map = new ThreadLocalMap(this, firstValue);
        if (this instanceof TerminatingThreadLocal) {
            t10.setTerminatingThreadLocals(map);
        } else {
            t10.setThreadLocals(map);
        }
    }

    public static ThreadLocalMap createInheritedMap(ThreadLocalMap parentMap) {
        return new ThreadLocalMap(parentMap);
    }

    T childValue(T parentValue) {
        throw new UnsupportedOperationException();
    }

    public static final class SuppliedThreadLocal<T> extends ThreadLocal<T> {
        private final Supplier<? extends T> supplier;

        SuppliedThreadLocal(Supplier<? extends T> supplier) {
            this.supplier = (Supplier) Objects.requireNonNull(supplier);
        }

        @Override
        protected T initialValue() {
            return this.supplier.get();
        }
    }

    public static class ThreadLocalMap {
        private static final int INITIAL_CAPACITY = 16;
        private Entry[] table;
        private int size;
        private int threshold;

        public static class Entry extends WeakReference<ThreadLocal<?>> {
            Object value;

            Entry(ThreadLocal<?> k10, Object v10) {
                super(k10);
                this.value = v10;
            }
        }

        private void setThreshold(int len) {
            this.threshold = (len * 2) / 3;
        }

        private static int nextIndex(int i10, int len) {
            if (i10 + 1 < len) {
                return i10 + 1;
            }
            return 0;
        }

        private static int prevIndex(int i10, int len) {
            return i10 - 1 >= 0 ? i10 - 1 : len - 1;
        }

        private ThreadLocalMap() {
            this.size = 0;
        }

        public ThreadLocalMap(ThreadLocal<?> firstKey, Object firstValue) {
            this.size = 0;
            this.table = new Entry[16];
            int i10 = ((ThreadLocal) firstKey).threadLocalHashCode & 15;
            this.table[i10] = new Entry(firstKey, firstValue);
            this.size = 1;
            setThreshold(16);
        }

        private ThreadLocalMap(ThreadLocalMap parentMap) {
            ThreadLocal<Object> key;
            int h10;
            this.size = 0;
            Entry[] parentTable = parentMap.table;
            int len = parentTable.length;
            setThreshold(len);
            this.table = new Entry[len];
            for (Entry e10 : parentTable) {
                if (e10 != null && (key = e10.get()) != null) {
                    Object value = key.childValue(e10.value);
                    Entry c10 = new Entry(key, value);
                    int i10 = ((ThreadLocal) key).threadLocalHashCode & (len - 1);
                    while (true) {
                        h10 = i10;
                        if (this.table[h10] == null) {
                            break;
                        } else {
                            i10 = nextIndex(h10, len);
                        }
                    }
                    this.table[h10] = c10;
                    this.size++;
                }
            }
        }

        public int size() {
            return this.size;
        }

        private Entry getEntry(ThreadLocal<?> key) {
            int i10 = ((ThreadLocal) key).threadLocalHashCode & (this.table.length - 1);
            Entry e10 = this.table[i10];
            if (e10 != null && e10.refersTo(key)) {
                return e10;
            }
            return getEntryAfterMiss(key, i10, e10);
        }

        private Entry getEntryAfterMiss(ThreadLocal<?> key, int i10, Entry e10) {
            Entry[] tab = this.table;
            int len = tab.length;
            while (e10 != null) {
                if (e10.refersTo(key)) {
                    return e10;
                }
                if (e10.refersTo(null)) {
                    expungeStaleEntry(i10);
                } else {
                    i10 = nextIndex(i10, len);
                }
                e10 = tab[i10];
            }
            return null;
        }

        private void set(ThreadLocal<?> key, Object value) {
            Entry[] tab = this.table;
            int len = tab.length;
            int i10 = ((ThreadLocal) key).threadLocalHashCode & (len - 1);
            Entry entry = tab[i10];
            while (true) {
                Entry e10 = entry;
                if (e10 != null) {
                    if (e10.refersTo(key)) {
                        e10.value = value;
                        return;
                    } else if (!e10.refersTo(null)) {
                        int nextIndex = nextIndex(i10, len);
                        i10 = nextIndex;
                        entry = tab[nextIndex];
                    } else {
                        replaceStaleEntry(key, value, i10);
                        return;
                    }
                } else {
                    tab[i10] = new Entry(key, value);
                    int sz = this.size + 1;
                    this.size = sz;
                    if (!cleanSomeSlots(i10, sz) && sz >= this.threshold) {
                        rehash();
                        return;
                    }
                    return;
                }
            }
        }

        private void remove(ThreadLocal<?> key) {
            Entry[] tab = this.table;
            int len = tab.length;
            int i10 = ((ThreadLocal) key).threadLocalHashCode & (len - 1);
            Entry entry = tab[i10];
            while (true) {
                Entry e10 = entry;
                if (e10 != null) {
                    if (!e10.refersTo(key)) {
                        int nextIndex = nextIndex(i10, len);
                        i10 = nextIndex;
                        entry = tab[nextIndex];
                    } else {
                        e10.clear();
                        expungeStaleEntry(i10);
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        private void replaceStaleEntry(ThreadLocal<?> key, Object value, int staleSlot) {
            Entry[] tab = this.table;
            int len = tab.length;
            int slotToExpunge = staleSlot;
            int prevIndex = prevIndex(staleSlot, len);
            while (true) {
                int i10 = prevIndex;
                Entry e10 = tab[i10];
                if (e10 == null) {
                    break;
                }
                if (e10.refersTo(null)) {
                    slotToExpunge = i10;
                }
                prevIndex = prevIndex(i10, len);
            }
            int nextIndex = nextIndex(staleSlot, len);
            while (true) {
                int i11 = nextIndex;
                Entry e11 = tab[i11];
                if (e11 != null) {
                    if (e11.refersTo(key)) {
                        e11.value = value;
                        tab[i11] = tab[staleSlot];
                        tab[staleSlot] = e11;
                        if (slotToExpunge == staleSlot) {
                            slotToExpunge = i11;
                        }
                        cleanSomeSlots(expungeStaleEntry(slotToExpunge), len);
                        return;
                    }
                    if (e11.refersTo(null) && slotToExpunge == staleSlot) {
                        slotToExpunge = i11;
                    }
                    nextIndex = nextIndex(i11, len);
                } else {
                    tab[staleSlot].value = null;
                    tab[staleSlot] = new Entry(key, value);
                    if (slotToExpunge != staleSlot) {
                        cleanSomeSlots(expungeStaleEntry(slotToExpunge), len);
                        return;
                    }
                    return;
                }
            }
        }

        private int expungeStaleEntry(int staleSlot) {
            Entry[] tab = this.table;
            int len = tab.length;
            tab[staleSlot].value = null;
            tab[staleSlot] = null;
            this.size--;
            int nextIndex = nextIndex(staleSlot, len);
            while (true) {
                int i10 = nextIndex;
                Entry e10 = tab[i10];
                if (e10 != null) {
                    ThreadLocal<?> k10 = e10.get();
                    if (k10 == null) {
                        e10.value = null;
                        tab[i10] = null;
                        this.size--;
                    } else {
                        int h10 = ((ThreadLocal) k10).threadLocalHashCode & (len - 1);
                        if (h10 != i10) {
                            tab[i10] = null;
                            while (tab[h10] != null) {
                                h10 = nextIndex(h10, len);
                            }
                            tab[h10] = e10;
                        }
                    }
                    nextIndex = nextIndex(i10, len);
                } else {
                    return i10;
                }
            }
        }

        private boolean cleanSomeSlots(int i10, int n10) {
            int i11;
            boolean removed = false;
            Entry[] tab = this.table;
            int len = tab.length;
            do {
                i10 = nextIndex(i10, len);
                Entry e10 = tab[i10];
                if (e10 != null && e10.refersTo(null)) {
                    n10 = len;
                    removed = true;
                    i10 = expungeStaleEntry(i10);
                }
                i11 = n10 >>> 1;
                n10 = i11;
            } while (i11 != 0);
            return removed;
        }

        private void rehash() {
            expungeStaleEntries();
            if (this.size >= this.threshold - (this.threshold / 4)) {
                resize();
            }
        }

        private void resize() {
            int h10;
            Entry[] oldTab = this.table;
            int oldLen = oldTab.length;
            int newLen = oldLen * 2;
            Entry[] newTab = new Entry[newLen];
            int count = 0;
            for (Entry e10 : oldTab) {
                if (e10 != null) {
                    ThreadLocal<?> k10 = e10.get();
                    if (k10 == null) {
                        e10.value = null;
                    } else {
                        int i10 = ((ThreadLocal) k10).threadLocalHashCode & (newLen - 1);
                        while (true) {
                            h10 = i10;
                            if (newTab[h10] == null) {
                                break;
                            } else {
                                i10 = nextIndex(h10, newLen);
                            }
                        }
                        newTab[h10] = e10;
                        count++;
                    }
                }
            }
            setThreshold(newLen);
            this.size = count;
            this.table = newTab;
        }

        private void expungeStaleEntries() {
            Entry[] tab = this.table;
            int len = tab.length;
            for (int j10 = 0; j10 < len; j10++) {
                Entry e10 = tab[j10];
                if (e10 != null && e10.refersTo(null)) {
                    expungeStaleEntry(j10);
                }
            }
        }
    }

    private static boolean traceVirtualThreadLocals() {
        String propValue = System.getProperty("jdk.traceVirtualThreadLocals");
        return propValue != null && (propValue.isEmpty() || Boolean.parseBoolean(propValue));
    }

    private void printStackTrace() {
        Thread t10 = Thread.currentThread();
        ThreadLocalMap map = getMap(t10);
        if (map.getEntry(DUMPING_STACK) == null) {
            map.set(DUMPING_STACK, true);
            try {
                List<StackWalker.StackFrame> stack = (List) StackWalker.getInstance().walk(s10 -> {
                    return (List) s10.skip(1L).collect(Collectors.toList());
                });
                System.out.println(t10);
                for (StackWalker.StackFrame frame : stack) {
                    System.out.format("    %s%n", frame.toStackTraceElement());
                }
            } finally {
                map.remove(DUMPING_STACK);
            }
        }
    }
}
