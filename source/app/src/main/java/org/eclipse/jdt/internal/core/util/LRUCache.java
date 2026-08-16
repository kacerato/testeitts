package org.eclipse.jdt.internal.core.util;

import java.text.NumberFormat;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.NoSuchElementException;
import java.util.function.Function;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.util.ToStringSorter;

public class LRUCache<K, V> implements Cloneable {
    protected static final int DEFAULT_SPACELIMIT = 100;
    protected int currentSpace;
    protected LRUCacheEntry<K, V> entryQueue;
    protected LRUCacheEntry<K, V> entryQueueTail;
    protected Hashtable<K, LRUCacheEntry<K, V>> entryTable;
    protected int spaceLimit;
    protected int timestampCounter;

    public static class LRUCacheEntry<K, V> {
        public K key;
        public LRUCacheEntry<K, V> next;
        public LRUCacheEntry<K, V> previous;
        public int space;
        public int timestamp;
        public V value;

        public LRUCacheEntry(K k10, V v10, int i10) {
            this.key = k10;
            this.value = v10;
            this.space = i10;
        }

        public String toString() {
            return "LRUCacheEntry [" + ((Object) this.key) + "-->" + ((Object) this.value) + "]";
        }
    }

    public class Stats {
        private int[] counters = new int[20];
        private long[] timestamps = new long[20];
        private int counterIndex = -1;

        public Stats() {
        }

        private void add(int i10) {
            int i11 = 0;
            while (true) {
                int i12 = this.counterIndex;
                if (i11 > i12) {
                    int[] iArr = this.counters;
                    int length = iArr.length;
                    int i13 = i12 + 1;
                    this.counterIndex = i13;
                    if (i13 == length) {
                        int length2 = iArr.length * 2;
                        int[] iArr2 = new int[length2];
                        this.counters = iArr2;
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                        long[] jArr = this.timestamps;
                        long[] jArr2 = new long[length2];
                        this.timestamps = jArr2;
                        System.arraycopy(jArr, 0, jArr2, 0, length);
                    }
                    int[] iArr3 = this.counters;
                    int i14 = this.counterIndex;
                    iArr3[i14] = i10;
                    this.timestamps[i14] = System.currentTimeMillis();
                    return;
                }
                if (this.counters[i11] == i10) {
                    return;
                } else {
                    i11++;
                }
            }
        }

        private String getAverageAge(long j10, int i10, long j11) {
            int i11;
            int i12;
            int i13;
            if (i10 == 0) {
                return "N/A";
            }
            long j12 = (j11 - (j10 / i10)) / 1000;
            int i14 = 0;
            if (j12 > 60) {
                long j13 = j12 / 60;
                i11 = (int) (j12 - (j13 * 60));
                if (j13 > 60) {
                    long j14 = j13 / 60;
                    i12 = (int) (j13 - (60 * j14));
                    if (j14 > 24) {
                        long j15 = j14 / 24;
                        i14 = (int) j15;
                        i13 = (int) (j14 - (24 * j15));
                    } else {
                        i13 = (int) j14;
                    }
                } else {
                    i12 = (int) j13;
                    i13 = 0;
                }
            } else {
                i11 = (int) j12;
                i12 = 0;
                i13 = 0;
            }
            StringBuffer stringBuffer = new StringBuffer();
            if (i14 > 0) {
                stringBuffer.append(i14);
                stringBuffer.append(" days ");
            }
            if (i13 > 0) {
                stringBuffer.append(i13);
                stringBuffer.append(" hours ");
            }
            if (i12 > 0) {
                stringBuffer.append(i12);
                stringBuffer.append(" minutes ");
            }
            stringBuffer.append(i11);
            stringBuffer.append(" seconds");
            return stringBuffer.toString();
        }

        private long getTimestamps(int i10) {
            for (int i11 = 0; i11 <= this.counterIndex; i11++) {
                if (this.counters[i11] >= i10) {
                    return this.timestamps[i11];
                }
            }
            return -1L;
        }

        private void removeCountersOlderThan(int i10) {
            int i11 = 0;
            while (true) {
                int i12 = this.counterIndex;
                if (i11 > i12) {
                    return;
                }
                int[] iArr = this.counters;
                if (iArr[i11] >= i10) {
                    if (i11 > 0) {
                        int i13 = (i12 - i11) + 1;
                        System.arraycopy(iArr, i11, iArr, 0, i13);
                        long[] jArr = this.timestamps;
                        System.arraycopy(jArr, i11, jArr, 0, i13);
                        this.counterIndex = i13;
                        return;
                    }
                    return;
                }
                i11++;
            }
        }

        public K getOldestElement() {
            return (K) LRUCache.this.getOldestElement();
        }

        public long getOldestTimestamps() {
            return getTimestamps(LRUCache.this.getOldestTimestampCounter());
        }

        public synchronized String printStats() {
            LRUCacheEntry<K, V> lRUCacheEntry;
            int i10 = LRUCache.this.currentSpace;
            if (i10 == 0) {
                return "No elements in cache";
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Number of elements in cache: ");
            stringBuffer.append(i10);
            int i11 = 5;
            int i12 = i10 / 5;
            stringBuffer.append("\n(");
            stringBuffer.append(5);
            stringBuffer.append(" groups of ");
            stringBuffer.append(i12);
            stringBuffer.append(" elements)");
            stringBuffer.append("\n\nAverage age:");
            LRUCacheEntry<K, V> lRUCacheEntry2 = LRUCache.this.entryQueueTail;
            long currentTimeMillis = System.currentTimeMillis();
            LRUCacheEntry<K, V> lRUCacheEntry3 = lRUCacheEntry2;
            int i13 = 0;
            long j10 = 0;
            int i14 = 1;
            while (lRUCacheEntry3 != null) {
                long timestamps = getTimestamps(lRUCacheEntry3.timestamp);
                if (timestamps > 0) {
                    j10 += timestamps;
                    i13++;
                }
                if (i13 < i12 || i14 >= i11) {
                    lRUCacheEntry = lRUCacheEntry3;
                } else {
                    stringBuffer.append("\nGroup ");
                    stringBuffer.append(i14);
                    if (i14 == 1) {
                        stringBuffer.append(" (oldest)\t: ");
                    } else {
                        stringBuffer.append("\t\t: ");
                    }
                    lRUCacheEntry = lRUCacheEntry3;
                    stringBuffer.append(getAverageAge(j10, i13, currentTimeMillis));
                    i13 = 0;
                    j10 = 0;
                    i14++;
                }
                lRUCacheEntry3 = lRUCacheEntry.previous;
                i11 = 5;
            }
            stringBuffer.append("\nGroup ");
            stringBuffer.append(i11);
            stringBuffer.append(" (youngest)\t: ");
            stringBuffer.append(getAverageAge(j10, i13, currentTimeMillis));
            return stringBuffer.toString();
        }

        public synchronized void snapshot() {
            removeCountersOlderThan(LRUCache.this.getOldestTimestampCounter());
            add(LRUCache.this.getNewestTimestampCounter());
        }
    }

    public LRUCache() {
        this(100);
    }

    public static String lambda$0(Object obj) {
        return obj instanceof JavaElement ? ((JavaElement) obj).getElementName() : obj.toString();
    }

    public double fillingRatio() {
        return (this.currentSpace * 100.0d) / this.spaceLimit;
    }

    public void flush() {
        this.currentSpace = 0;
        this.entryTable = new Hashtable<>();
        this.entryQueueTail = null;
        this.entryQueue = null;
        for (LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueueTail; lRUCacheEntry != null; lRUCacheEntry = lRUCacheEntry.previous) {
        }
    }

    public V get(K k10) {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        if (lRUCacheEntry == null) {
            return null;
        }
        updateTimestamp(lRUCacheEntry);
        return lRUCacheEntry.value;
    }

    public int getCurrentSpace() {
        return this.currentSpace;
    }

    public K getKey(K k10) {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        return lRUCacheEntry == null ? k10 : lRUCacheEntry.key;
    }

    public int getNewestTimestampCounter() {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueue;
        if (lRUCacheEntry == null) {
            return 0;
        }
        return lRUCacheEntry.timestamp;
    }

    public K getOldestElement() {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueueTail;
        if (lRUCacheEntry == null) {
            return null;
        }
        return lRUCacheEntry.key;
    }

    public int getOldestTimestampCounter() {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueueTail;
        if (lRUCacheEntry == null) {
            return 0;
        }
        return lRUCacheEntry.timestamp;
    }

    public int getSpaceLimit() {
        return this.spaceLimit;
    }

    public Enumeration<K> keys() {
        return this.entryTable.keys();
    }

    public ICacheEnumeration<K, V> keysAndValues() {
        return new ICacheEnumeration<K, V>() {
            LRUCacheEntry<K, V> entry;
            Enumeration<LRUCacheEntry<K, V>> values;

            {
                this.values = LRUCache.this.entryTable.elements();
            }

            @Override
            public V getValue() {
                LRUCacheEntry<K, V> lRUCacheEntry = this.entry;
                if (lRUCacheEntry != null) {
                    return lRUCacheEntry.value;
                }
                throw new NoSuchElementException();
            }

            @Override
            public boolean hasMoreElements() {
                return this.values.hasMoreElements();
            }

            @Override
            public K nextElement() {
                LRUCacheEntry<K, V> nextElement = this.values.nextElement();
                this.entry = nextElement;
                return nextElement.key;
            }
        };
    }

    public boolean makeSpace(int i10) {
        LRUCacheEntry<K, V> lRUCacheEntry;
        int spaceLimit = getSpaceLimit();
        if (this.currentSpace + i10 <= spaceLimit) {
            return true;
        }
        if (i10 > spaceLimit) {
            return false;
        }
        while (this.currentSpace + i10 > spaceLimit && (lRUCacheEntry = this.entryQueueTail) != null) {
            privateRemoveEntry(lRUCacheEntry, false);
        }
        return true;
    }

    public LRUCache<K, V> newInstance(int i10) {
        return new LRUCache<>(i10);
    }

    public V peek(K k10) {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        if (lRUCacheEntry == null) {
            return null;
        }
        return lRUCacheEntry.value;
    }

    public void privateAdd(K k10, V v10, int i10) {
        privateAddEntry(new LRUCacheEntry<>(k10, v10, i10), false);
    }

    public void privateAddEntry(LRUCacheEntry<K, V> lRUCacheEntry, boolean z10) {
        if (!z10) {
            this.entryTable.put(lRUCacheEntry.key, lRUCacheEntry);
            this.currentSpace += lRUCacheEntry.space;
        }
        int i10 = this.timestampCounter;
        this.timestampCounter = i10 + 1;
        lRUCacheEntry.timestamp = i10;
        LRUCacheEntry<K, V> lRUCacheEntry2 = this.entryQueue;
        lRUCacheEntry.next = lRUCacheEntry2;
        lRUCacheEntry.previous = null;
        if (lRUCacheEntry2 == null) {
            this.entryQueueTail = lRUCacheEntry;
        } else {
            lRUCacheEntry2.previous = lRUCacheEntry;
        }
        this.entryQueue = lRUCacheEntry;
    }

    public void privateRemoveEntry(LRUCacheEntry<K, V> lRUCacheEntry, boolean z10) {
        LRUCacheEntry<K, V> lRUCacheEntry2 = lRUCacheEntry.previous;
        LRUCacheEntry<K, V> lRUCacheEntry3 = lRUCacheEntry.next;
        if (!z10) {
            this.entryTable.remove(lRUCacheEntry.key);
            this.currentSpace -= lRUCacheEntry.space;
        }
        if (lRUCacheEntry2 == null) {
            this.entryQueue = lRUCacheEntry3;
        } else {
            lRUCacheEntry2.next = lRUCacheEntry3;
        }
        if (lRUCacheEntry3 == null) {
            this.entryQueueTail = lRUCacheEntry2;
        } else {
            lRUCacheEntry3.previous = lRUCacheEntry2;
        }
    }

    public V put(K k10, V v10) {
        int spaceFor = spaceFor(v10);
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        if (lRUCacheEntry != null) {
            int currentSpace = (getCurrentSpace() - lRUCacheEntry.space) + spaceFor;
            if (currentSpace <= getSpaceLimit()) {
                updateTimestamp(lRUCacheEntry);
                lRUCacheEntry.value = v10;
                lRUCacheEntry.space = spaceFor;
                this.currentSpace = currentSpace;
                return v10;
            }
            privateRemoveEntry(lRUCacheEntry, false);
        }
        if (makeSpace(spaceFor)) {
            privateAdd(k10, v10, spaceFor);
        }
        return v10;
    }

    public V removeKey(K k10) {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        if (lRUCacheEntry == null) {
            return null;
        }
        V v10 = lRUCacheEntry.value;
        privateRemoveEntry(lRUCacheEntry, false);
        return v10;
    }

    public void setSpaceLimit(int i10) {
        int i11 = this.spaceLimit;
        if (i10 < i11) {
            makeSpace(i11 - i10);
        }
        this.spaceLimit = i10;
    }

    public int spaceFor(V v10) {
        if (v10 instanceof ILRUCacheable) {
            return ((ILRUCacheable) v10).getCacheFootprint();
        }
        return 1;
    }

    public String toString() {
        return String.valueOf(toStringFillingRation("LRUCache")) + toStringContents();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toStringContents() {
        StringBuffer stringBuffer = new StringBuffer();
        for (ToStringSorter.Pair pair : new ToStringSorter(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$0;
                lambda$0 = LRUCache.lambda$0(obj);
                return lambda$0;
            }
        }).sort(this.entryTable.o())) {
            String str = pair.string;
            V v10 = get(pair.object);
            stringBuffer.append(str);
            stringBuffer.append(" -> ");
            stringBuffer.append((Object) v10);
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public String toStringFillingRation(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append('[');
        stringBuffer.append(getSpaceLimit());
        stringBuffer.append("]: ");
        stringBuffer.append(NumberFormat.getInstance().format(fillingRatio()));
        stringBuffer.append("% full");
        return stringBuffer.toString();
    }

    public void updateTimestamp(LRUCacheEntry<K, V> lRUCacheEntry) {
        int i10 = this.timestampCounter;
        this.timestampCounter = i10 + 1;
        lRUCacheEntry.timestamp = i10;
        if (this.entryQueue != lRUCacheEntry) {
            privateRemoveEntry(lRUCacheEntry, true);
            privateAddEntry(lRUCacheEntry, true);
        }
    }

    public LRUCache(int i10) {
        this.currentSpace = 0;
        this.timestampCounter = 0;
        this.entryQueueTail = null;
        this.entryQueue = null;
        this.entryTable = new Hashtable<>(i10);
        this.spaceLimit = i10;
    }

    @Override
    public LRUCache<K, V> clone() {
        LRUCache<K, V> newInstance = newInstance(this.spaceLimit);
        for (LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueueTail; lRUCacheEntry != null; lRUCacheEntry = lRUCacheEntry.previous) {
            newInstance.privateAdd(lRUCacheEntry.key, lRUCacheEntry.value, lRUCacheEntry.space);
        }
        return newInstance;
    }

    public void flush(K k10) {
        LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        if (lRUCacheEntry == null) {
            return;
        }
        privateRemoveEntry(lRUCacheEntry, false);
    }
}
