package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public final class C6036Um0 extends AbstractMap {

    public static final int f44862g = 0;

    public final int f44863b;

    public List f44864c = Collections.EMPTY_LIST;

    public Map f44865d = Collections.EMPTY_MAP;

    public boolean f44866e;

    public volatile C7477gn0 f44867f;

    public C6036Um0(int i10) {
        this.f44863b = i10;
    }

    @Override
    public final Object put(Comparable comparable, Object obj) {
        e();
        int a10 = a(comparable);
        if (a10 >= 0) {
            return ((C6810cn0) this.f44864c.get(a10)).setValue(obj);
        }
        e();
        if (this.f44864c.isEmpty() && !(this.f44864c instanceof ArrayList)) {
            this.f44864c = new ArrayList(this.f44863b);
        }
        int i10 = -(a10 + 1);
        if (i10 >= this.f44863b) {
            e();
            if (this.f44865d.isEmpty() && !(this.f44865d instanceof TreeMap)) {
                this.f44865d = new TreeMap();
            }
            return ((SortedMap) this.f44865d).put(comparable, obj);
        }
        int size = this.f44864c.size();
        int i11 = this.f44863b;
        if (size == i11) {
            C6810cn0 c6810cn0 = (C6810cn0) this.f44864c.remove(i11 - 1);
            e();
            if (this.f44865d.isEmpty() && !(this.f44865d instanceof TreeMap)) {
                this.f44865d = new TreeMap();
            }
            ((SortedMap) this.f44865d).put(c6810cn0.f47168b, c6810cn0.f47169c);
        }
        this.f44864c.add(i10, new C6810cn0(this, comparable, obj));
        return null;
    }

    @Override
    public final void clear() {
        e();
        if (!this.f44864c.isEmpty()) {
            this.f44864c.clear();
        }
        if (this.f44865d.isEmpty()) {
            return;
        }
        this.f44865d.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f44865d.containsKey(comparable);
    }

    public final void e() {
        if (this.f44866e) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final Set entrySet() {
        if (this.f44867f == null) {
            this.f44867f = new C7477gn0(this);
        }
        return this.f44867f;
    }

    @Override
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a10 = a(comparable);
        return a10 >= 0 ? ((C6810cn0) this.f44864c.get(a10)).f47169c : this.f44865d.get(comparable);
    }

    @Override
    public final Object remove(Object obj) {
        e();
        Comparable comparable = (Comparable) obj;
        int a10 = a(comparable);
        if (a10 < 0) {
            if (this.f44865d.isEmpty()) {
                return null;
            }
            return this.f44865d.remove(comparable);
        }
        e();
        Object obj2 = ((C6810cn0) this.f44864c.remove(a10)).f47169c;
        if (!this.f44865d.isEmpty()) {
            e();
            if (this.f44865d.isEmpty() && !(this.f44865d instanceof TreeMap)) {
                this.f44865d = new TreeMap();
            }
            Iterator it = ((SortedMap) this.f44865d).entrySet().iterator();
            this.f44864c.add(new C6810cn0(this, (Map.Entry) it.next()));
            it.remove();
        }
        return obj2;
    }

    @Override
    public final int size() {
        return this.f44865d.size() + this.f44864c.size();
    }

    public final int a(Comparable comparable) {
        int i10;
        int size = this.f44864c.size();
        int i11 = size - 1;
        if (i11 >= 0) {
            int compareTo = comparable.compareTo(((C6810cn0) this.f44864c.get(i11)).f47168b);
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
            int compareTo2 = comparable.compareTo(((C6810cn0) this.f44864c.get(i13)).f47168b);
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
