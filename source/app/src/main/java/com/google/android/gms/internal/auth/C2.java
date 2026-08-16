package com.google.android.gms.internal.auth;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class C2 extends AbstractMap {

    public final int f61587b;

    public boolean f61590e;

    public volatile A2 f61591f;

    public List f61588c = Collections.emptyList();

    public Map f61589d = Collections.emptyMap();

    public Map f61592g = Collections.emptyMap();

    public C2(int i10, B2 b22) {
        this.f61587b = i10;
    }

    @Override
    public final void clear() {
        u();
        if (!this.f61588c.isEmpty()) {
            this.f61588c.clear();
        }
        if (this.f61589d.isEmpty()) {
            return;
        }
        this.f61589d.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return r(comparable) >= 0 || this.f61589d.containsKey(comparable);
    }

    public void e() {
        if (this.f61590e) {
            return;
        }
        this.f61589d = this.f61589d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f61589d);
        this.f61592g = this.f61592g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f61592g);
        this.f61590e = true;
    }

    @Override
    public final Set entrySet() {
        if (this.f61591f == null) {
            this.f61591f = new A2(this, null);
        }
        return this.f61591f;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2)) {
            return super.equals(obj);
        }
        C2 c22 = (C2) obj;
        int size = size();
        if (size != c22.size()) {
            return false;
        }
        int i10 = i();
        if (i10 != c22.i()) {
            return entrySet().equals(c22.entrySet());
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!n(i11).equals(c22.n(i11))) {
                return false;
            }
        }
        if (i10 != size) {
            return this.f61589d.equals(c22.f61589d);
        }
        return true;
    }

    @Override
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int r10 = r(comparable);
        return r10 >= 0 ? ((C12000w2) this.f61588c.get(r10)).getValue() : this.f61589d.get(comparable);
    }

    @Override
    public final int hashCode() {
        int i10 = i();
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += ((C12000w2) this.f61588c.get(i12)).hashCode();
        }
        return this.f61589d.size() > 0 ? i11 + this.f61589d.hashCode() : i11;
    }

    public final int i() {
        return this.f61588c.size();
    }

    public final Iterable j() {
        return this.f61589d.isEmpty() ? C11996v2.a() : this.f61589d.entrySet();
    }

    @Override
    public final Object put(Comparable comparable, Object obj) {
        u();
        int r10 = r(comparable);
        if (r10 >= 0) {
            return ((C12000w2) this.f61588c.get(r10)).setValue(obj);
        }
        u();
        if (this.f61588c.isEmpty() && !(this.f61588c instanceof ArrayList)) {
            this.f61588c = new ArrayList(this.f61587b);
        }
        int i10 = -(r10 + 1);
        if (i10 >= this.f61587b) {
            return t().put(comparable, obj);
        }
        int size = this.f61588c.size();
        int i11 = this.f61587b;
        if (size == i11) {
            C12000w2 c12000w2 = (C12000w2) this.f61588c.remove(i11 - 1);
            t().put(c12000w2.b(), c12000w2.getValue());
        }
        this.f61588c.add(i10, new C12000w2(this, comparable, obj));
        return null;
    }

    public final Map.Entry n(int i10) {
        return (Map.Entry) this.f61588c.get(i10);
    }

    public final boolean q() {
        return this.f61590e;
    }

    public final int r(Comparable comparable) {
        int size = this.f61588c.size();
        int i10 = size - 1;
        int i11 = 0;
        if (i10 >= 0) {
            int compareTo = comparable.compareTo(((C12000w2) this.f61588c.get(i10)).b());
            if (compareTo > 0) {
                return -(size + 1);
            }
            if (compareTo == 0) {
                return i10;
            }
        }
        while (i11 <= i10) {
            int i12 = (i11 + i10) / 2;
            int compareTo2 = comparable.compareTo(((C12000w2) this.f61588c.get(i12)).b());
            if (compareTo2 < 0) {
                i10 = i12 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i12;
                }
                i11 = i12 + 1;
            }
        }
        return -(i11 + 1);
    }

    @Override
    public final Object remove(Object obj) {
        u();
        Comparable comparable = (Comparable) obj;
        int r10 = r(comparable);
        if (r10 >= 0) {
            return s(r10);
        }
        if (this.f61589d.isEmpty()) {
            return null;
        }
        return this.f61589d.remove(comparable);
    }

    public final Object s(int i10) {
        u();
        Object value = ((C12000w2) this.f61588c.remove(i10)).getValue();
        if (!this.f61589d.isEmpty()) {
            Iterator it = t().entrySet().iterator();
            List list = this.f61588c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new C12000w2(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    @Override
    public final int size() {
        return this.f61588c.size() + this.f61589d.size();
    }

    public final SortedMap t() {
        u();
        if (this.f61589d.isEmpty() && !(this.f61589d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f61589d = treeMap;
            this.f61592g = treeMap.descendingMap();
        }
        return (SortedMap) this.f61589d;
    }

    public final void u() {
        if (this.f61590e) {
            throw new UnsupportedOperationException();
        }
    }
}
