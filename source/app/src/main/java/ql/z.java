package ql;

import Bi.InterfaceC2392y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;

public final class z {

    public static final Map<Integer, z> f108415e;

    public final G f108416a;

    public final H f108417b;

    public final int f108418c;

    public final int f108419d;

    static {
        HashMap hashMap = new HashMap();
        Integer j10 = org.bouncycastle.util.k.j(1);
        C14549x c14549x = Sh.d.f23337c;
        hashMap.put(j10, new z(20, 2, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(2), new z(20, 4, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(3), new z(40, 2, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(4), new z(40, 4, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(5), new z(40, 8, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(6), new z(60, 3, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(7), new z(60, 6, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(8), new z(60, 12, c14549x));
        Integer j11 = org.bouncycastle.util.k.j(9);
        C14549x c14549x2 = Sh.d.f23341e;
        hashMap.put(j11, new z(20, 2, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(10), new z(20, 4, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(11), new z(40, 2, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(12), new z(40, 4, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(13), new z(40, 8, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(14), new z(60, 3, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(15), new z(60, 6, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(16), new z(60, 12, c14549x2));
        Integer j12 = org.bouncycastle.util.k.j(17);
        C14549x c14549x3 = Sh.d.f23357m;
        hashMap.put(j12, new z(20, 2, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(18), new z(20, 4, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(19), new z(40, 2, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(20), new z(40, 4, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(21), new z(40, 8, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(22), new z(60, 3, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(23), new z(60, 6, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(24), new z(60, 12, c14549x3));
        Integer j13 = org.bouncycastle.util.k.j(25);
        C14549x c14549x4 = Sh.d.f23359n;
        hashMap.put(j13, new z(20, 2, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(26), new z(20, 4, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(27), new z(40, 2, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(28), new z(40, 4, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(29), new z(40, 8, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(30), new z(60, 3, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(31), new z(60, 6, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(32), new z(60, 12, c14549x4));
        f108415e = Collections.unmodifiableMap(hashMap);
    }

    public z(int i10, int i11, InterfaceC2392y interfaceC2392y) {
        this(i10, i11, C15128f.c(interfaceC2392y.b()));
    }

    public static z k(int i10) {
        return f108415e.get(org.bouncycastle.util.k.j(i10));
    }

    public static int l(int i10, int i11) throws IllegalArgumentException {
        if (i10 < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        }
        if (i10 % i11 != 0) {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
        int i12 = i10 / i11;
        if (i12 != 1) {
            return i12;
        }
        throw new IllegalArgumentException("height / layers must be greater than 1");
    }

    public int a() {
        return this.f108418c;
    }

    public int b() {
        return this.f108419d;
    }

    public int c() {
        return this.f108417b.d();
    }

    public G d() {
        return this.f108416a;
    }

    public String e() {
        return this.f108417b.f();
    }

    public C14549x f() {
        return this.f108417b.g();
    }

    public int g() {
        return this.f108417b.h();
    }

    public C15133k h() {
        return this.f108417b.i();
    }

    public int i() {
        return this.f108417b.j();
    }

    public H j() {
        return this.f108417b;
    }

    public z(int i10, int i11, C14549x c14549x) {
        this.f108418c = i10;
        this.f108419d = i11;
        this.f108417b = new H(l(i10, i11), c14549x);
        this.f108416a = C15126d.c(e(), g(), i(), c(), a(), i11);
    }
}
