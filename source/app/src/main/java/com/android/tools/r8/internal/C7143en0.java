package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

public final class C7143en0 implements Iterator {

    public int f47783b = -1;

    public boolean f47784c;

    public Iterator f47785d;

    public final C6036Um0 f47786e;

    public C7143en0(C6036Um0 c6036Um0) {
        this.f47786e = c6036Um0;
    }

    @Override
    public final boolean hasNext() {
        if (this.f47783b + 1 >= this.f47786e.f44864c.size()) {
            if (this.f47785d == null) {
                this.f47785d = this.f47786e.f44865d.entrySet().iterator();
            }
            if (!this.f47785d.hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object next() {
        this.f47784c = true;
        int i10 = this.f47783b + 1;
        this.f47783b = i10;
        if (i10 < this.f47786e.f44864c.size()) {
            return (Map.Entry) this.f47786e.f44864c.get(this.f47783b);
        }
        if (this.f47785d == null) {
            this.f47785d = this.f47786e.f44865d.entrySet().iterator();
        }
        return (Map.Entry) this.f47785d.next();
    }

    @Override
    public final void remove() {
        if (!this.f47784c) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f47784c = false;
        C6036Um0 c6036Um0 = this.f47786e;
        int i10 = C6036Um0.f44862g;
        c6036Um0.e();
        if (this.f47783b >= this.f47786e.f44864c.size()) {
            if (this.f47785d == null) {
                this.f47785d = this.f47786e.f44865d.entrySet().iterator();
            }
            this.f47785d.remove();
            return;
        }
        C6036Um0 c6036Um02 = this.f47786e;
        int i11 = this.f47783b;
        this.f47783b = i11 - 1;
        c6036Um02.e();
        Object obj = ((C6810cn0) c6036Um02.f44864c.remove(i11)).f47169c;
        if (c6036Um02.f44865d.isEmpty()) {
            return;
        }
        c6036Um02.e();
        if (c6036Um02.f44865d.isEmpty() && !(c6036Um02.f44865d instanceof TreeMap)) {
            c6036Um02.f44865d = new TreeMap();
        }
        Iterator it = ((SortedMap) c6036Um02.f44865d).entrySet().iterator();
        c6036Um02.f44864c.add(new C6810cn0(c6036Um02, (Map.Entry) it.next()));
        it.remove();
    }
}
