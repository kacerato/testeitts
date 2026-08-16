package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C5838Rc0 extends AbstractC7519h1 {

    public final C6012Uc0 f43943b;

    public C5838Rc0(C6012Uc0 c6012Uc0) {
        this.f43943b = c6012Uc0;
    }

    @Override
    public final void clear() {
        this.f43943b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C6012Uc0 c6012Uc0;
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Boolean)) {
            Object key = entry.getKey();
            boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
            if (key == null) {
                C6012Uc0 c6012Uc02 = this.f43943b;
                return c6012Uc02.f44803e && c6012Uc02.f44801c[c6012Uc02.f44804f] == booleanValue;
            }
            Object[] objArr = this.f43943b.f44800b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(key));
            C6012Uc0 c6012Uc03 = this.f43943b;
            int i10 = a10 & c6012Uc03.f44802d;
            Object obj3 = objArr[i10];
            if (obj3 == null) {
                return false;
            }
            if (key == obj3) {
                return c6012Uc03.f44801c[i10] == booleanValue;
            }
            do {
                c6012Uc0 = this.f43943b;
                i10 = (i10 + 1) & c6012Uc0.f44802d;
                obj2 = objArr[i10];
                if (obj2 == null) {
                    return false;
                }
            } while (key != obj2);
            if (c6012Uc0.f44801c[i10] == booleanValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C5606Nc0(this.f43943b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() == null || !(entry.getValue() instanceof Boolean)) {
            return false;
        }
        Object key = entry.getKey();
        boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
        if (key == null) {
            C6012Uc0 c6012Uc0 = this.f43943b;
            if (c6012Uc0.f44803e) {
                boolean[] zArr = c6012Uc0.f44801c;
                int i10 = c6012Uc0.f44804f;
                if (zArr[i10] == booleanValue) {
                    c6012Uc0.f44803e = false;
                    c6012Uc0.f44800b[i10] = null;
                    int i11 = c6012Uc0.f44806h - 1;
                    c6012Uc0.f44806h = i11;
                    if (i11 < c6012Uc0.f44805g / 4 && i10 > 16) {
                        c6012Uc0.d(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f43943b.f44800b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(key));
        C6012Uc0 c6012Uc02 = this.f43943b;
        int i12 = a10 & c6012Uc02.f44802d;
        Object obj2 = objArr[i12];
        if (obj2 == null) {
            return false;
        }
        if (obj2 == key) {
            if (c6012Uc02.f44801c[i12] != booleanValue) {
                return false;
            }
            c6012Uc02.e(i12);
            return true;
        }
        while (true) {
            C6012Uc0 c6012Uc03 = this.f43943b;
            i12 = (i12 + 1) & c6012Uc03.f44802d;
            Object obj3 = objArr[i12];
            if (obj3 == null) {
                return false;
            }
            if (obj3 == key && c6012Uc03.f44801c[i12] == booleanValue) {
                c6012Uc03.e(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f43943b.f44806h;
    }

    @Override
    public final Iterator iterator() {
        return new C5606Nc0(this.f43943b);
    }
}
