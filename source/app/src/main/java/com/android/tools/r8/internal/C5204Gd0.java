package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C5204Gd0 extends AbstractC7519h1 {

    public final C5378Jd0 f40537b;

    public C5204Gd0(C5378Jd0 c5378Jd0) {
        this.f40537b = c5378Jd0;
    }

    @Override
    public final void clear() {
        this.f40537b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C5378Jd0 c5378Jd0;
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (key == null) {
            C5378Jd0 c5378Jd02 = this.f40537b;
            return c5378Jd02.f41439e && c5378Jd02.f41437c[c5378Jd02.f41440f] == value;
        }
        Object[] objArr = this.f40537b.f41436b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(key));
        C5378Jd0 c5378Jd03 = this.f40537b;
        int i10 = a10 & c5378Jd03.f41438d;
        Object obj3 = objArr[i10];
        if (obj3 == null) {
            return false;
        }
        if (key == obj3) {
            return c5378Jd03.f41437c[i10] == value;
        }
        do {
            c5378Jd0 = this.f40537b;
            i10 = (i10 + 1) & c5378Jd0.f41438d;
            obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
        } while (key != obj2);
        return c5378Jd0.f41437c[i10] == value;
    }

    @Override
    public final A30 iterator() {
        return new C4972Cd0(this.f40537b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (key == null) {
            C5378Jd0 c5378Jd0 = this.f40537b;
            if (c5378Jd0.f41439e) {
                Object[] objArr = c5378Jd0.f41437c;
                int i10 = c5378Jd0.f41440f;
                if (objArr[i10] == value) {
                    c5378Jd0.f41439e = false;
                    c5378Jd0.f41436b[i10] = null;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    int i11 = c5378Jd0.f41442h - 1;
                    c5378Jd0.f41442h = i11;
                    if (i11 < c5378Jd0.f41441g / 4 && i10 > 16) {
                        c5378Jd0.d(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr2 = this.f40537b.f41436b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(key));
        C5378Jd0 c5378Jd02 = this.f40537b;
        int i12 = a10 & c5378Jd02.f41438d;
        Object obj3 = objArr2[i12];
        if (obj3 == null) {
            return false;
        }
        if (obj3 == key) {
            if (c5378Jd02.f41437c[i12] != value) {
                return false;
            }
            c5378Jd02.e(i12);
            return true;
        }
        while (true) {
            C5378Jd0 c5378Jd03 = this.f40537b;
            i12 = (i12 + 1) & c5378Jd03.f41438d;
            Object obj4 = objArr2[i12];
            if (obj4 == null) {
                return false;
            }
            if (obj4 == key && c5378Jd03.f41437c[i12] == value) {
                c5378Jd03.e(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f40537b.f41442h;
    }

    @Override
    public final Iterator iterator() {
        return new C4972Cd0(this.f40537b);
    }
}
