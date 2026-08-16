package org.eclipse.jdt.internal.core;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.LRUCacheEnumerator;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Messages;

public abstract class OverflowingLRUCache<K, V> extends LRUCache<K, V> {
    protected double loadFactor;
    protected int overflow;
    protected boolean timestampsOn;

    public class C1Temp {
        public Class<?> clazz;
        public int count = 1;

        public C1Temp(Class<?> cls) {
            this.clazz = cls;
        }

        public String toString() {
            return "Class: " + ((Object) this.clazz) + " has " + this.count + " entries.";
        }
    }

    public OverflowingLRUCache(int i10) {
        this(i10, 0);
    }

    public abstract boolean close(LRUCache.LRUCacheEntry<K, V> lRUCacheEntry);

    public Enumeration<V> elements() {
        LRUCache.LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueue;
        if (lRUCacheEntry == null) {
            return new LRUCacheEnumerator(null);
        }
        LRUCacheEnumerator.LRUEnumeratorElement<V> lRUEnumeratorElement = new LRUCacheEnumerator.LRUEnumeratorElement<>(lRUCacheEntry.value);
        LRUCache.LRUCacheEntry<K, V> lRUCacheEntry2 = this.entryQueue.next;
        LRUCacheEnumerator.LRUEnumeratorElement<V> lRUEnumeratorElement2 = lRUEnumeratorElement;
        while (lRUCacheEntry2 != null) {
            LRUCacheEnumerator.LRUEnumeratorElement<V> lRUEnumeratorElement3 = new LRUCacheEnumerator.LRUEnumeratorElement<>(lRUCacheEntry2.value);
            lRUEnumeratorElement2.next = lRUEnumeratorElement3;
            lRUCacheEntry2 = lRUCacheEntry2.next;
            lRUEnumeratorElement2 = lRUEnumeratorElement3;
        }
        return new LRUCacheEnumerator(lRUEnumeratorElement);
    }

    @Override
    public double fillingRatio() {
        return ((this.currentSpace + this.overflow) * 100.0d) / this.spaceLimit;
    }

    public Hashtable<K, LRUCache.LRUCacheEntry<K, V>> getEntryTable() {
        return this.entryTable;
    }

    public double getLoadFactor() {
        return this.loadFactor;
    }

    public int getOverflow() {
        return this.overflow;
    }

    @Override
    public boolean makeSpace(int i10) {
        int i11;
        int i12 = this.spaceLimit;
        if (this.overflow == 0 && this.currentSpace + i10 <= i12) {
            return true;
        }
        int i13 = (int) ((1.0d - this.loadFactor) * i12);
        if (i13 <= i10) {
            i13 = i10;
        }
        LRUCache.LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueueTail;
        try {
            this.timestampsOn = false;
            while (true) {
                i11 = this.currentSpace;
                if (i11 + i13 <= i12 || lRUCacheEntry == null) {
                    break;
                }
                privateRemoveEntry(lRUCacheEntry, false, false);
                lRUCacheEntry = lRUCacheEntry.previous;
            }
            this.timestampsOn = true;
            if (i11 + i10 <= i12) {
                this.overflow = 0;
                return true;
            }
            this.overflow = (i11 + i10) - i12;
            return false;
        } catch (Throwable th2) {
            this.timestampsOn = true;
            throw th2;
        }
    }

    public abstract LRUCache<K, V> newInstance(int i10, int i11);

    public void printStats() {
        int i10 = 0;
        int i11 = 0;
        for (LRUCache.LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueue; lRUCacheEntry != null; lRUCacheEntry = lRUCacheEntry.next) {
            i11++;
        }
        System.out.println("Forward length: " + i11);
        for (LRUCache.LRUCacheEntry<K, V> lRUCacheEntry2 = this.entryQueueTail; lRUCacheEntry2 != null; lRUCacheEntry2 = lRUCacheEntry2.previous) {
            i10++;
        }
        System.out.println("Backward length: " + i10);
        HashMap hashMap = new HashMap();
        Iterator<K> it = this.entryTable.o().iterator();
        while (it.hasNext()) {
            Class<?> cls = this.entryTable.get(it.next()).value.getClass();
            C1Temp c1Temp = (C1Temp) hashMap.get(cls);
            if (c1Temp == null) {
                hashMap.put(cls, new C1Temp(cls));
            } else {
                c1Temp.count++;
            }
        }
        Iterator<V> it2 = hashMap.values().iterator();
        while (it2.hasNext()) {
            System.out.println((C1Temp) it2.next());
        }
    }

    @Override
    public void privateRemoveEntry(LRUCache.LRUCacheEntry<K, V> lRUCacheEntry, boolean z10) {
        privateRemoveEntry(lRUCacheEntry, z10, true);
    }

    @Override
    public V put(K k10, V v10) {
        if (this.overflow > 0) {
            shrink();
        }
        int spaceFor = spaceFor(v10);
        LRUCache.LRUCacheEntry<K, V> lRUCacheEntry = this.entryTable.get(k10);
        if (lRUCacheEntry != null) {
            int i10 = (this.currentSpace - lRUCacheEntry.space) + spaceFor;
            if (i10 <= this.spaceLimit) {
                updateTimestamp(lRUCacheEntry);
                lRUCacheEntry.value = v10;
                lRUCacheEntry.space = spaceFor;
                this.currentSpace = i10;
                this.overflow = 0;
                return v10;
            }
            privateRemoveEntry(lRUCacheEntry, false, false);
        }
        makeSpace(spaceFor);
        privateAdd(k10, v10, spaceFor);
        return v10;
    }

    public V remove(K k10) {
        return removeKey(k10);
    }

    public void setLoadFactor(double d10) throws IllegalArgumentException {
        if (d10 > 1.0d || d10 <= 0.0d) {
            throw new IllegalArgumentException(Messages.cache_invalidLoadFactor);
        }
        this.loadFactor = d10;
    }

    @Override
    public void setSpaceLimit(int i10) {
        int i11 = this.spaceLimit;
        if (i10 < i11) {
            makeSpace(i11 - i10);
        }
        this.spaceLimit = i10;
    }

    public boolean shrink() {
        if (this.overflow > 0) {
            return makeSpace(0);
        }
        return true;
    }

    @Override
    public String toString() {
        return String.valueOf(toStringFillingRation("OverflowingLRUCache ")) + toStringContents();
    }

    @Override
    public void updateTimestamp(LRUCache.LRUCacheEntry<K, V> lRUCacheEntry) {
        if (this.timestampsOn) {
            int i10 = this.timestampCounter;
            this.timestampCounter = i10 + 1;
            lRUCacheEntry.timestamp = i10;
            if (this.entryQueue != lRUCacheEntry) {
                privateRemoveEntry(lRUCacheEntry, true);
                privateAddEntry(lRUCacheEntry, true);
            }
        }
    }

    public OverflowingLRUCache(int i10, int i11) {
        super(i10);
        this.timestampsOn = true;
        this.loadFactor = 0.333d;
        this.overflow = i11;
    }

    public void privateRemoveEntry(LRUCache.LRUCacheEntry<K, V> lRUCacheEntry, boolean z10, boolean z11) {
        if (!z10) {
            if (z11) {
                this.entryTable.remove(lRUCacheEntry.key);
                this.currentSpace -= lRUCacheEntry.space;
            } else {
                if (!close(lRUCacheEntry) || this.entryTable.get(lRUCacheEntry.key) == null) {
                    return;
                }
                this.entryTable.remove(lRUCacheEntry.key);
                this.currentSpace -= lRUCacheEntry.space;
            }
        }
        LRUCache.LRUCacheEntry<K, V> lRUCacheEntry2 = lRUCacheEntry.previous;
        LRUCache.LRUCacheEntry<K, V> lRUCacheEntry3 = lRUCacheEntry.next;
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

    @Override
    public OverflowingLRUCache<K, V> clone() {
        OverflowingLRUCache<K, V> overflowingLRUCache = (OverflowingLRUCache) newInstance(this.spaceLimit, this.overflow);
        for (LRUCache.LRUCacheEntry<K, V> lRUCacheEntry = this.entryQueueTail; lRUCacheEntry != null; lRUCacheEntry = lRUCacheEntry.previous) {
            overflowingLRUCache.privateAdd(lRUCacheEntry.key, lRUCacheEntry.value, lRUCacheEntry.space);
        }
        return overflowingLRUCache;
    }
}
