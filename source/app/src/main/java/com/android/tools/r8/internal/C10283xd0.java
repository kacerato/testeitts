package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C10283xd0 extends AbstractC7519h1 {

    public final C4856Ad0 f53787b;

    public C10283xd0(C4856Ad0 c4856Ad0) {
        this.f53787b = c4856Ad0;
    }

    @Override
    public final void clear() {
        this.f53787b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C4856Ad0 c4856Ad0;
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Long)) {
            Object key = entry.getKey();
            long longValue = ((Long) entry.getValue()).longValue();
            if (key == null) {
                C4856Ad0 c4856Ad02 = this.f53787b;
                return c4856Ad02.f38649e && c4856Ad02.f38647c[c4856Ad02.f38650f] == longValue;
            }
            Object[] objArr = this.f53787b.f38646b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(key));
            C4856Ad0 c4856Ad03 = this.f53787b;
            int i10 = a10 & c4856Ad03.f38648d;
            Object obj3 = objArr[i10];
            if (obj3 == null) {
                return false;
            }
            if (key == obj3) {
                return c4856Ad03.f38647c[i10] == longValue;
            }
            do {
                c4856Ad0 = this.f53787b;
                i10 = (i10 + 1) & c4856Ad0.f38648d;
                obj2 = objArr[i10];
                if (obj2 == null) {
                    return false;
                }
            } while (key != obj2);
            if (c4856Ad0.f38647c[i10] == longValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C9615td0(this.f53787b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() == null || !(entry.getValue() instanceof Long)) {
            return false;
        }
        Object key = entry.getKey();
        long longValue = ((Long) entry.getValue()).longValue();
        if (key == null) {
            C4856Ad0 c4856Ad0 = this.f53787b;
            if (c4856Ad0.f38649e) {
                long[] jArr = c4856Ad0.f38647c;
                int i10 = c4856Ad0.f38650f;
                if (jArr[i10] == longValue) {
                    c4856Ad0.f38649e = false;
                    c4856Ad0.f38646b[i10] = null;
                    int i11 = c4856Ad0.f38652h - 1;
                    c4856Ad0.f38652h = i11;
                    if (i11 < c4856Ad0.f38651g / 4 && i10 > 16) {
                        c4856Ad0.d(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f53787b.f38646b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(key));
        C4856Ad0 c4856Ad02 = this.f53787b;
        int i12 = a10 & c4856Ad02.f38648d;
        Object obj2 = objArr[i12];
        if (obj2 == null) {
            return false;
        }
        if (obj2 == key) {
            if (c4856Ad02.f38647c[i12] != longValue) {
                return false;
            }
            c4856Ad02.e(i12);
            return true;
        }
        while (true) {
            C4856Ad0 c4856Ad03 = this.f53787b;
            i12 = (i12 + 1) & c4856Ad03.f38648d;
            Object obj3 = objArr[i12];
            if (obj3 == null) {
                return false;
            }
            if (obj3 == key && c4856Ad03.f38647c[i12] == longValue) {
                c4856Ad03.e(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f53787b.f38652h;
    }

    @Override
    public final Iterator iterator() {
        return new C9615td0(this.f53787b);
    }
}
