package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public final class C7045eA extends AbstractC8928pV implements InterfaceC7200f6, Serializable {

    public static final int f47615j = 0;

    public transient C6118Vz[] f47616b;

    public transient C6118Vz[] f47617c;

    public transient C6118Vz f47618d;

    public transient C6118Vz f47619e;

    public transient int f47620f;

    public transient int f47621g;

    public transient int f47622h;

    public transient C6379aA f47623i;

    public C7045eA(int i10) {
        AbstractC5496Le.a(i10, "expectedSize");
        int a10 = AbstractC9047qA.a(i10, 1.0d);
        this.f47616b = new C6118Vz[a10];
        this.f47617c = new C6118Vz[a10];
        this.f47618d = null;
        this.f47619e = null;
        this.f47620f = 0;
        this.f47621g = a10 - 1;
        this.f47622h = 0;
    }

    public static Object a(C7045eA c7045eA, Object obj, Object obj2, boolean z10) {
        c7045eA.getClass();
        int a10 = AbstractC9047qA.a(obj);
        int a11 = AbstractC9047qA.a(obj2);
        C6118Vz b10 = c7045eA.b(a10, obj);
        C6118Vz a12 = c7045eA.a(a11, obj2);
        if (b10 != null && a11 == b10.f45242d && V30.a(obj2, b10.f46190b)) {
            return obj2;
        }
        if (a12 != null && !z10) {
            throw new IllegalArgumentException("key already present: " + obj2);
        }
        if (b10 != null) {
            c7045eA.a(b10);
        }
        if (a12 != null) {
            c7045eA.a(a12);
        }
        c7045eA.a(new C6118Vz(obj2, a11, obj, a10), a12);
        if (a12 != null) {
            a12.f45247i = null;
            a12.f45246h = null;
        }
        if (b10 != null) {
            b10.f45247i = null;
            b10.f45246h = null;
        }
        c7045eA.j();
        if (b10 == null) {
            return null;
        }
        return b10.f46190b;
    }

    public final C6118Vz b(int i10, Object obj) {
        for (C6118Vz c6118Vz = this.f47617c[this.f47621g & i10]; c6118Vz != null; c6118Vz = c6118Vz.f45245g) {
            if (i10 == c6118Vz.f45243e && V30.a(obj, c6118Vz.f46191c)) {
                return c6118Vz;
            }
        }
        return null;
    }

    @Override
    public final void clear() {
        this.f47620f = 0;
        Arrays.fill(this.f47616b, (Object) null);
        Arrays.fill(this.f47617c, (Object) null);
        this.f47618d = null;
        this.f47619e = null;
        this.f47622h++;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return a(AbstractC9047qA.a(obj), obj) != null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return b(AbstractC9047qA.a(obj), obj) != null;
    }

    @Override
    public final Iterator e() {
        return new C6061Uz(this);
    }

    @Override
    public final InterfaceC7200f6 f() {
        C6379aA c6379aA = this.f47623i;
        if (c6379aA != null) {
            return c6379aA;
        }
        C6379aA c6379aA2 = new C6379aA(this);
        this.f47623i = c6379aA2;
        return c6379aA2;
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        for (C6118Vz c6118Vz = this.f47618d; c6118Vz != null; c6118Vz = c6118Vz.f45246h) {
            biConsumer.accept(c6118Vz.f46190b, c6118Vz.f46191c);
        }
    }

    @Override
    public final Object get(Object obj) {
        C6118Vz a10 = a(AbstractC9047qA.a(obj), obj);
        if (a10 == null) {
            return null;
        }
        return a10.getValue();
    }

    public final void j() {
        C6118Vz[] c6118VzArr = this.f47616b;
        int i10 = this.f47620f;
        int length = c6118VzArr.length;
        if (i10 <= length * 1.0d || length >= 1073741824) {
            return;
        }
        int length2 = c6118VzArr.length * 2;
        this.f47616b = new C6118Vz[length2];
        this.f47617c = new C6118Vz[length2];
        this.f47621g = length2 - 1;
        this.f47620f = 0;
        for (C6118Vz c6118Vz = this.f47618d; c6118Vz != null; c6118Vz = c6118Vz.f45246h) {
            a(c6118Vz, c6118Vz);
        }
        this.f47622h++;
    }

    @Override
    public final Set o() {
        return new C6879dA(this);
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return a(obj, obj2, false);
    }

    @Override
    public final Object remove(Object obj) {
        C6118Vz a10 = a(AbstractC9047qA.a(obj), obj);
        if (a10 == null) {
            return null;
        }
        a(a10);
        a10.f45247i = null;
        a10.f45246h = null;
        return a10.f46191c;
    }

    @Override
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        clear();
        for (C6118Vz c6118Vz = this.f47618d; c6118Vz != null; c6118Vz = c6118Vz.f45246h) {
            Object obj = c6118Vz.f46190b;
            a(obj, biFunction.apply(obj, c6118Vz.f46191c), false);
        }
    }

    @Override
    public final int size() {
        return this.f47620f;
    }

    @Override
    public final Collection values() {
        return ((C6379aA) f()).o();
    }

    public final void a(C6118Vz c6118Vz) {
        C6118Vz c6118Vz2;
        int i10 = c6118Vz.f45242d & this.f47621g;
        C6118Vz c6118Vz3 = null;
        C6118Vz c6118Vz4 = null;
        for (C6118Vz c6118Vz5 = this.f47616b[i10]; c6118Vz5 != c6118Vz; c6118Vz5 = c6118Vz5.f45244f) {
            c6118Vz4 = c6118Vz5;
        }
        if (c6118Vz4 == null) {
            this.f47616b[i10] = c6118Vz.f45244f;
        } else {
            c6118Vz4.f45244f = c6118Vz.f45244f;
        }
        int i11 = c6118Vz.f45243e & this.f47621g;
        C6118Vz c6118Vz6 = this.f47617c[i11];
        while (true) {
            c6118Vz2 = c6118Vz3;
            c6118Vz3 = c6118Vz6;
            if (c6118Vz3 == c6118Vz) {
                break;
            } else {
                c6118Vz6 = c6118Vz3.f45245g;
            }
        }
        if (c6118Vz2 == null) {
            this.f47617c[i11] = c6118Vz.f45245g;
        } else {
            c6118Vz2.f45245g = c6118Vz.f45245g;
        }
        C6118Vz c6118Vz7 = c6118Vz.f45247i;
        if (c6118Vz7 == null) {
            this.f47618d = c6118Vz.f45246h;
        } else {
            c6118Vz7.f45246h = c6118Vz.f45246h;
        }
        C6118Vz c6118Vz8 = c6118Vz.f45246h;
        if (c6118Vz8 == null) {
            this.f47619e = c6118Vz7;
        } else {
            c6118Vz8.f45247i = c6118Vz7;
        }
        this.f47620f--;
        this.f47622h++;
    }

    public final void a(C6118Vz c6118Vz, C6118Vz c6118Vz2) {
        int i10 = c6118Vz.f45242d;
        int i11 = this.f47621g;
        int i12 = i10 & i11;
        C6118Vz[] c6118VzArr = this.f47616b;
        c6118Vz.f45244f = c6118VzArr[i12];
        c6118VzArr[i12] = c6118Vz;
        int i13 = c6118Vz.f45243e & i11;
        C6118Vz[] c6118VzArr2 = this.f47617c;
        c6118Vz.f45245g = c6118VzArr2[i13];
        c6118VzArr2[i13] = c6118Vz;
        if (c6118Vz2 == null) {
            C6118Vz c6118Vz3 = this.f47619e;
            c6118Vz.f45247i = c6118Vz3;
            c6118Vz.f45246h = null;
            if (c6118Vz3 == null) {
                this.f47618d = c6118Vz;
            } else {
                c6118Vz3.f45246h = c6118Vz;
            }
            this.f47619e = c6118Vz;
        } else {
            C6118Vz c6118Vz4 = c6118Vz2.f45247i;
            c6118Vz.f45247i = c6118Vz4;
            if (c6118Vz4 == null) {
                this.f47618d = c6118Vz;
            } else {
                c6118Vz4.f45246h = c6118Vz;
            }
            C6118Vz c6118Vz5 = c6118Vz2.f45246h;
            c6118Vz.f45246h = c6118Vz5;
            if (c6118Vz5 == null) {
                this.f47619e = c6118Vz;
            } else {
                c6118Vz5.f45247i = c6118Vz;
            }
        }
        this.f47620f++;
        this.f47622h++;
    }

    public final C6118Vz a(int i10, Object obj) {
        for (C6118Vz c6118Vz = this.f47616b[this.f47621g & i10]; c6118Vz != null; c6118Vz = c6118Vz.f45244f) {
            if (i10 == c6118Vz.f45242d && V30.a(obj, c6118Vz.f46190b)) {
                return c6118Vz;
            }
        }
        return null;
    }

    public final Object a(Object obj, Object obj2, boolean z10) {
        int a10 = AbstractC9047qA.a(obj);
        int a11 = AbstractC9047qA.a(obj2);
        C6118Vz a12 = a(a10, obj);
        if (a12 != null && a11 == a12.f45243e && V30.a(obj2, a12.f46191c)) {
            return obj2;
        }
        C6118Vz b10 = b(a11, obj2);
        if (b10 != null) {
            if (z10) {
                a(b10);
            } else {
                throw new IllegalArgumentException("value already present: " + obj2);
            }
        }
        C6118Vz c6118Vz = new C6118Vz(obj, a10, obj2, a11);
        if (a12 != null) {
            a(a12);
            a(c6118Vz, a12);
            a12.f45247i = null;
            a12.f45246h = null;
            return a12.f46191c;
        }
        a(c6118Vz, (C6118Vz) null);
        j();
        return null;
    }
}
