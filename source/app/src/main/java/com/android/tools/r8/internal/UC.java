package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;

public final class UC extends VC implements NavigableMap {

    public static final UC f44697i;

    public final transient C7286ff0 f44698f;

    public final transient AbstractC7552hC f44699g;

    public final transient UC f44700h;

    static {
        C7286ff0 a10 = WC.a(C6935dZ.f47416b);
        int i10 = AbstractC7552hC.f48487c;
        f44697i = new UC(a10, C6190Xe0.f45779e);
    }

    public UC(C7286ff0 c7286ff0, AbstractC7552hC abstractC7552hC) {
        this.f44698f = c7286ff0;
        this.f44699g = abstractC7552hC;
        this.f44700h = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static UC a(IdentityHashMap identityHashMap) {
        boolean z10;
        C6935dZ c6935dZ = C6935dZ.f47416b;
        if (identityHashMap instanceof SortedMap) {
            Comparator comparator = ((SortedMap) identityHashMap).comparator();
            z10 = comparator == null ? true : c6935dZ.equals(comparator);
        } else {
            z10 = false;
        }
        Collection entrySet = identityHashMap.entrySet();
        Map.Entry[] entryArr = AbstractC8552nC.f50554e;
        if (!(entrySet instanceof Collection)) {
            Iterator<E> it = entrySet.iterator();
            Collection arrayList = new ArrayList();
            JK.a(arrayList, it);
            entrySet = arrayList;
        }
        Map.Entry[] entryArr2 = (Map.Entry[]) entrySet.toArray(entryArr);
        return a(z10, entryArr2, entryArr2.length);
    }

    public final UC b(int i10, int i11) {
        if (i10 == 0 && i11 == this.f44699g.size()) {
            return this;
        }
        if (i10 == i11) {
            Comparator comparator = this.f44698f.f45337e;
            if (C6935dZ.f47416b.equals(comparator)) {
                return f44697i;
            }
            return new UC(WC.a(comparator), C6190Xe0.f45779e);
        }
        return new UC(this.f44698f.e(i10, i11), this.f44699g.subList(i10, i11));
    }

    @Override
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override
    public final Object ceilingKey(Object obj) {
        Map.Entry firstEntry = tailMap(obj, true).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return firstEntry.getKey();
    }

    @Override
    public final Comparator comparator() {
        return this.f44698f.f45337e;
    }

    @Override
    public final NavigableSet descendingKeySet() {
        return this.f44698f.descendingSet();
    }

    @Override
    public final NavigableMap descendingMap() {
        UC uc2 = this.f44700h;
        if (uc2 != null) {
            return uc2;
        }
        if (!isEmpty()) {
            return new UC((C7286ff0) this.f44698f.descendingSet(), this.f44699g.i(), this);
        }
        Comparator comparator = this.f44698f.f45337e;
        D40 a10 = (comparator instanceof D40 ? (D40) comparator : new C8452mf(comparator)).a();
        return C6935dZ.f47416b.equals(a10) ? f44697i : new UC(WC.a(a10), C6190Xe0.f45779e);
    }

    @Override
    public final QC e() {
        if (!isEmpty()) {
            return new TC(this);
        }
        int i10 = QC.f43505c;
        return C7119ef0.f47742j;
    }

    @Override
    public final Set entrySet() {
        return super.entrySet();
    }

    @Override
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) super.entrySet().a().get(0);
    }

    @Override
    public final Object firstKey() {
        return this.f44698f.first();
    }

    @Override
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override
    public final Object floorKey(Object obj) {
        Map.Entry lastEntry = headMap(obj, true).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return lastEntry.getKey();
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        AbstractC7552hC a10 = this.f44698f.a();
        for (int i10 = 0; i10 < this.f44699g.size(); i10++) {
            biConsumer.accept(a10.get(i10), this.f44699g.get(i10));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
    
        if (r4 >= 0) goto L9;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        int i10;
        C7286ff0 c7286ff0 = this.f44698f;
        c7286ff0.getClass();
        if (obj != null) {
            try {
                i10 = Collections.binarySearch(c7286ff0.f48036h, obj, c7286ff0.f45337e);
            } catch (ClassCastException unused) {
            }
        }
        i10 = -1;
        if (i10 == -1) {
            return null;
        }
        return this.f44699g.get(i10);
    }

    @Override
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override
    public final Object higherKey(Object obj) {
        Map.Entry firstEntry = tailMap(obj, false).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return firstEntry.getKey();
    }

    @Override
    public final QC i() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public final XB j() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public final Set o() {
        return this.f44698f;
    }

    @Override
    public final boolean l() {
        return this.f44698f.f48036h.g() || this.f44699g.g();
    }

    @Override
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) super.entrySet().a().get(this.f44699g.size() - 1);
    }

    @Override
    public final Object lastKey() {
        return this.f44698f.last();
    }

    @Override
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override
    public final Object lowerKey(Object obj) {
        Map.Entry lastEntry = headMap(obj, false).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return lastEntry.getKey();
    }

    @Override
    public final QC keySet() {
        return this.f44698f;
    }

    @Override
    public final NavigableSet navigableKeySet() {
        return this.f44698f;
    }

    @Override
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final XB values() {
        return this.f44699g;
    }

    @Override
    public final int size() {
        return this.f44699g.size();
    }

    @Override
    public final NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
        obj.getClass();
        obj2.getClass();
        if (this.f44698f.f45337e.compare(obj, obj2) <= 0) {
            return b(0, this.f44698f.a(obj2, z11)).tailMap(obj, z10);
        }
        throw new IllegalArgumentException(AbstractC4885Aq0.a("expected fromKey <= toKey but %s > %s", obj, obj2));
    }

    @Override
    public final Collection values() {
        return this.f44699g;
    }

    @Override
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    public UC(C7286ff0 c7286ff0, AbstractC7552hC abstractC7552hC, UC uc2) {
        this.f44698f = c7286ff0;
        this.f44699g = abstractC7552hC;
        this.f44700h = uc2;
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        if (this.f44698f.f45337e.compare(obj, obj2) <= 0) {
            return b(0, this.f44698f.a(obj2, false)).tailMap(obj, true);
        }
        throw new IllegalArgumentException(AbstractC4885Aq0.a("expected fromKey <= toKey but %s > %s", obj, obj2));
    }

    @Override
    public final UC tailMap(Object obj, boolean z10) {
        C7286ff0 c7286ff0 = this.f44698f;
        obj.getClass();
        return b(c7286ff0.b(obj, z10), this.f44699g.size());
    }

    public static UC a(boolean z10, Map.Entry[] entryArr, int i10) {
        final C6935dZ c6935dZ = C6935dZ.f47416b;
        if (i10 == 0) {
            if (c6935dZ.equals(c6935dZ)) {
                return f44697i;
            }
            return new UC(WC.a(c6935dZ), C6190Xe0.f45779e);
        }
        if (i10 != 1) {
            Object[] objArr = new Object[i10];
            Object[] objArr2 = new Object[i10];
            if (z10) {
                for (int i11 = 0; i11 < i10; i11++) {
                    Map.Entry entry = entryArr[i11];
                    Objects.requireNonNull(entry);
                    Map.Entry entry2 = entry;
                    Object key = entry2.getKey();
                    Object value = entry2.getValue();
                    AbstractC5496Le.a(key, value);
                    objArr[i11] = key;
                    objArr2[i11] = value;
                }
            } else {
                Arrays.sort(entryArr, 0, i10, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return UC.a(Comparator.this, (Map.Entry) obj, (Map.Entry) obj2);
                    }
                });
                Map.Entry entry3 = entryArr[0];
                Objects.requireNonNull(entry3);
                Map.Entry entry4 = entry3;
                Object key2 = entry4.getKey();
                objArr[0] = key2;
                Object value2 = entry4.getValue();
                objArr2[0] = value2;
                AbstractC5496Le.a(objArr[0], value2);
                int i12 = 1;
                while (i12 < i10) {
                    Map.Entry entry5 = entryArr[i12 - 1];
                    Objects.requireNonNull(entry5);
                    Map.Entry entry6 = entry5;
                    Map.Entry entry7 = entryArr[i12];
                    Objects.requireNonNull(entry7);
                    Map.Entry entry8 = entry7;
                    Object key3 = entry8.getKey();
                    Object value3 = entry8.getValue();
                    AbstractC5496Le.a(key3, value3);
                    objArr[i12] = key3;
                    objArr2[i12] = value3;
                    if (!(c6935dZ.compare(key2, key3) != 0)) {
                        throw AbstractC8552nC.a("key", entry6, entry8);
                    }
                    i12++;
                    key2 = key3;
                }
            }
            return new UC(new C7286ff0(new C6190Xe0(objArr), c6935dZ), new C6190Xe0(objArr2));
        }
        Map.Entry entry9 = entryArr[0];
        Objects.requireNonNull(entry9);
        Map.Entry entry10 = entry9;
        return new UC(new C7286ff0(new C5920Sm0(entry10.getKey()), c6935dZ), new C5920Sm0(entry10.getValue()));
    }

    public static int a(Comparator comparator, Map.Entry entry, Map.Entry entry2) {
        Objects.requireNonNull(entry);
        Objects.requireNonNull(entry2);
        return comparator.compare(entry.getKey(), entry2.getKey());
    }

    @Override
    public final UC headMap(Object obj, boolean z10) {
        C7286ff0 c7286ff0 = this.f44698f;
        obj.getClass();
        return b(0, c7286ff0.a(obj, z10));
    }
}
