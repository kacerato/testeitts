package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class AbstractC7810in0 extends AbstractMap {

    public static final int f49055h = 0;

    public final int f49056b;

    public List f49057c = Collections.EMPTY_LIST;

    public Map f49058d;

    public boolean f49059e;

    public volatile C7644hn0 f49060f;

    public Map f49061g;

    public AbstractC7810in0(int i10) {
        this.f49056b = i10;
        Map map = Collections.EMPTY_MAP;
        this.f49058d = map;
        this.f49061g = map;
    }

    public final Object a(Comparable comparable, Object obj) {
        e();
        int a10 = a(comparable);
        if (a10 >= 0) {
            return ((C6977dn0) this.f49057c.get(a10)).setValue(obj);
        }
        e();
        if (this.f49057c.isEmpty() && !(this.f49057c instanceof ArrayList)) {
            this.f49057c = new ArrayList(this.f49056b);
        }
        int i10 = -(a10 + 1);
        if (i10 >= this.f49056b) {
            return j().put(comparable, obj);
        }
        int size = this.f49057c.size();
        int i11 = this.f49056b;
        if (size == i11) {
            C6977dn0 c6977dn0 = (C6977dn0) this.f49057c.remove(i11 - 1);
            j().put(c6977dn0.f47516b, c6977dn0.f47517c);
        }
        this.f49057c.add(i10, new C6977dn0(this, comparable, obj));
        return null;
    }

    @Override
    public final void clear() {
        e();
        if (!this.f49057c.isEmpty()) {
            this.f49057c.clear();
        }
        if (this.f49058d.isEmpty()) {
            return;
        }
        this.f49058d.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f49058d.containsKey(comparable);
    }

    public final void e() {
        if (this.f49059e) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final Set entrySet() {
        if (this.f49060f == null) {
            this.f49060f = new C7644hn0(this);
        }
        return this.f49060f;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC7810in0)) {
            return super.equals(obj);
        }
        AbstractC7810in0 abstractC7810in0 = (AbstractC7810in0) obj;
        int size = size();
        if (size != abstractC7810in0.size()) {
            return false;
        }
        int size2 = this.f49057c.size();
        if (size2 != abstractC7810in0.f49057c.size()) {
            return ((AbstractSet) entrySet()).equals(abstractC7810in0.entrySet());
        }
        for (int i10 = 0; i10 < size2; i10++) {
            if (!((Map.Entry) this.f49057c.get(i10)).equals((Map.Entry) abstractC7810in0.f49057c.get(i10))) {
                return false;
            }
        }
        if (size2 != size) {
            return this.f49058d.equals(abstractC7810in0.f49058d);
        }
        return true;
    }

    @Override
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a10 = a(comparable);
        return a10 >= 0 ? ((C6977dn0) this.f49057c.get(a10)).f47517c : this.f49058d.get(comparable);
    }

    @Override
    public final int hashCode() {
        int size = this.f49057c.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += ((C6977dn0) this.f49057c.get(i11)).hashCode();
        }
        return this.f49058d.size() > 0 ? this.f49058d.hashCode() + i10 : i10;
    }

    public final Iterable i() {
        return this.f49058d.isEmpty() ? AbstractC6644bn0.f46864b : this.f49058d.entrySet();
    }

    public final SortedMap j() {
        e();
        if (this.f49058d.isEmpty() && !(this.f49058d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f49058d = treeMap;
            this.f49061g = treeMap.descendingMap();
        }
        return (SortedMap) this.f49058d;
    }

    public abstract void k();

    @Override
    public final Object remove(Object obj) {
        e();
        Comparable comparable = (Comparable) obj;
        int a10 = a(comparable);
        if (a10 < 0) {
            if (this.f49058d.isEmpty()) {
                return null;
            }
            return this.f49058d.remove(comparable);
        }
        e();
        Object obj2 = ((C6977dn0) this.f49057c.remove(a10)).f47517c;
        if (!this.f49058d.isEmpty()) {
            Iterator it = j().entrySet().iterator();
            this.f49057c.add(new C6977dn0(this, (Map.Entry) it.next()));
            it.remove();
        }
        return obj2;
    }

    @Override
    public final int size() {
        return this.f49058d.size() + this.f49057c.size();
    }

    public final int a(Comparable comparable) {
        int i10;
        int size = this.f49057c.size();
        int i11 = size - 1;
        if (i11 >= 0) {
            int compareTo = comparable.compareTo(((C6977dn0) this.f49057c.get(i11)).f47516b);
            if (compareTo > 0) {
                i10 = size + 1;
                return -i10;
            }
            if (compareTo == 0) {
                return i11;
            }
        }
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) / 2;
            int compareTo2 = comparable.compareTo(((C6977dn0) this.f49057c.get(i13)).f47516b);
            if (compareTo2 < 0) {
                i11 = i13 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i13;
                }
                i12 = i13 + 1;
            }
        }
        i10 = i12 + 1;
        return -i10;
    }
}
