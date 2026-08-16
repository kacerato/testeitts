package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class C12155p6 extends AbstractMap {

    public Object[] f62388b;

    public int f62389c;

    public boolean f62391e;

    public volatile C12146o6 f62392f;

    public Map f62390d = Collections.emptyMap();

    public Map f62393g = Collections.emptyMap();

    public C12155p6() {
    }

    @Override
    public final void clear() {
        o();
        if (this.f62389c != 0) {
            this.f62388b = null;
            this.f62389c = 0;
        }
        if (this.f62390d.isEmpty()) {
            return;
        }
        this.f62390d.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return t(comparable) >= 0 || this.f62390d.containsKey(comparable);
    }

    public void e() {
        if (this.f62391e) {
            return;
        }
        this.f62390d = this.f62390d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f62390d);
        this.f62393g = this.f62393g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f62393g);
        this.f62391e = true;
    }

    @Override
    public final Set entrySet() {
        if (this.f62392f == null) {
            this.f62392f = new C12146o6(this, null);
        }
        return this.f62392f;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12155p6)) {
            return super.equals(obj);
        }
        C12155p6 c12155p6 = (C12155p6) obj;
        int size = size();
        if (size != c12155p6.size()) {
            return false;
        }
        int i10 = this.f62389c;
        if (i10 != c12155p6.f62389c) {
            return entrySet().equals(c12155p6.entrySet());
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!k(i11).equals(c12155p6.k(i11))) {
                return false;
            }
        }
        if (i10 != size) {
            return this.f62390d.equals(c12155p6.f62390d);
        }
        return true;
    }

    @Override
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int t10 = t(comparable);
        return t10 >= 0 ? ((C12128m6) this.f62388b[t10]).getValue() : this.f62390d.get(comparable);
    }

    @Override
    public final int hashCode() {
        int i10 = this.f62389c;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += this.f62388b[i12].hashCode();
        }
        return this.f62390d.size() > 0 ? i11 + this.f62390d.hashCode() : i11;
    }

    public final boolean i() {
        return this.f62391e;
    }

    public final int j() {
        return this.f62389c;
    }

    public final Map.Entry k(int i10) {
        if (i10 < this.f62389c) {
            return (C12128m6) this.f62388b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public final Iterable l() {
        return this.f62390d.isEmpty() ? Collections.emptySet() : this.f62390d.entrySet();
    }

    @Override
    public final Object put(Comparable comparable, Object obj) {
        o();
        int t10 = t(comparable);
        if (t10 >= 0) {
            return ((C12128m6) this.f62388b[t10]).setValue(obj);
        }
        o();
        if (this.f62388b == null) {
            this.f62388b = new Object[16];
        }
        int i10 = -(t10 + 1);
        if (i10 >= 16) {
            return v().put(comparable, obj);
        }
        if (this.f62389c == 16) {
            C12128m6 c12128m6 = (C12128m6) this.f62388b[15];
            this.f62389c = 15;
            v().put(c12128m6.b(), c12128m6.getValue());
        }
        Object[] objArr = this.f62388b;
        int length = objArr.length;
        System.arraycopy(objArr, i10, objArr, i10 + 1, 15 - i10);
        this.f62388b[i10] = new C12128m6(this, comparable, obj);
        this.f62389c++;
        return null;
    }

    public final Object[] p() {
        return this.f62388b;
    }

    public final int q() {
        return this.f62389c;
    }

    public final Map r() {
        return this.f62390d;
    }

    @Override
    public final Object remove(Object obj) {
        o();
        Comparable comparable = (Comparable) obj;
        int t10 = t(comparable);
        if (t10 >= 0) {
            return n(t10);
        }
        if (this.f62390d.isEmpty()) {
            return null;
        }
        return this.f62390d.remove(comparable);
    }

    public final Object n(int i10) {
        o();
        Object value = ((C12128m6) this.f62388b[i10]).getValue();
        Object[] objArr = this.f62388b;
        System.arraycopy(objArr, i10 + 1, objArr, i10, (this.f62389c - i10) - 1);
        this.f62389c--;
        if (!this.f62390d.isEmpty()) {
            Iterator it = v().entrySet().iterator();
            Object[] objArr2 = this.f62388b;
            int i11 = this.f62389c;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i11] = new C12128m6(this, (Comparable) entry.getKey(), entry.getValue());
            this.f62389c++;
            it.remove();
        }
        return value;
    }

    @Override
    public final int size() {
        return this.f62389c + this.f62390d.size();
    }

    public final int t(Comparable comparable) {
        int i10 = this.f62389c;
        int i11 = i10 - 1;
        int i12 = 0;
        if (i11 >= 0) {
            int compareTo = comparable.compareTo(((C12128m6) this.f62388b[i11]).b());
            if (compareTo > 0) {
                return -(i10 + 1);
            }
            if (compareTo == 0) {
                return i11;
            }
        }
        while (i12 <= i11) {
            int i13 = (i12 + i11) / 2;
            int compareTo2 = comparable.compareTo(((C12128m6) this.f62388b[i13]).b());
            if (compareTo2 < 0) {
                i11 = i13 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i13;
                }
                i12 = i13 + 1;
            }
        }
        return -(i12 + 1);
    }

    public final void o() {
        if (this.f62391e) {
            throw new UnsupportedOperationException();
        }
    }

    public final SortedMap v() {
        o();
        if (this.f62390d.isEmpty() && !(this.f62390d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f62390d = treeMap;
            this.f62393g = treeMap.descendingMap();
        }
        return (SortedMap) this.f62390d;
    }

    public C12155p6(byte[] bArr) {
    }
}
