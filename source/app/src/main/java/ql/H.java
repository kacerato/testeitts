package ql;

import Bi.InterfaceC2392y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;

public final class H {

    public static final Map<Integer, H> f108259i;

    public final G f108260a;

    public final int f108261b;

    public final int f108262c;

    public final C14549x f108263d;

    public final int f108264e;

    public final String f108265f;

    public final int f108266g;

    public final C15135m f108267h;

    static {
        HashMap hashMap = new HashMap();
        Integer j10 = org.bouncycastle.util.k.j(1);
        C14549x c14549x = Sh.d.f23337c;
        hashMap.put(j10, new H(10, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(2), new H(16, c14549x));
        hashMap.put(org.bouncycastle.util.k.j(3), new H(20, c14549x));
        Integer j11 = org.bouncycastle.util.k.j(4);
        C14549x c14549x2 = Sh.d.f23341e;
        hashMap.put(j11, new H(10, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(5), new H(16, c14549x2));
        hashMap.put(org.bouncycastle.util.k.j(6), new H(20, c14549x2));
        Integer j12 = org.bouncycastle.util.k.j(7);
        C14549x c14549x3 = Sh.d.f23357m;
        hashMap.put(j12, new H(10, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(8), new H(16, c14549x3));
        hashMap.put(org.bouncycastle.util.k.j(9), new H(20, c14549x3));
        Integer j13 = org.bouncycastle.util.k.j(10);
        C14549x c14549x4 = Sh.d.f23359n;
        hashMap.put(j13, new H(10, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(11), new H(16, c14549x4));
        hashMap.put(org.bouncycastle.util.k.j(12), new H(20, c14549x4));
        f108259i = Collections.unmodifiableMap(hashMap);
    }

    public H(int i10, InterfaceC2392y interfaceC2392y) {
        this(i10, C15128f.c(interfaceC2392y.b()));
    }

    public static H k(int i10) {
        return f108259i.get(org.bouncycastle.util.k.j(i10));
    }

    public final int a() {
        int i10 = 2;
        while (true) {
            int i11 = this.f108261b;
            if (i10 > i11) {
                throw new IllegalStateException("should never happen...");
            }
            if ((i11 - i10) % 2 == 0) {
                return i10;
            }
            i10++;
        }
    }

    public int b() {
        return this.f108261b;
    }

    public int c() {
        return this.f108262c;
    }

    public int d() {
        return this.f108267h.a();
    }

    public G e() {
        return this.f108260a;
    }

    public String f() {
        return this.f108265f;
    }

    public C14549x g() {
        return this.f108263d;
    }

    public int h() {
        return this.f108266g;
    }

    public C15133k i() {
        return new C15133k(this.f108267h);
    }

    public int j() {
        return this.f108264e;
    }

    public H(int i10, C14549x c14549x) {
        if (i10 < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        }
        if (c14549x == null) {
            throw new NullPointerException("digest == null");
        }
        this.f108261b = i10;
        this.f108262c = a();
        String b10 = C15128f.b(c14549x);
        this.f108265f = b10;
        this.f108263d = c14549x;
        C15135m c15135m = new C15135m(c14549x);
        this.f108267h = c15135m;
        int f10 = c15135m.f();
        this.f108266g = f10;
        int g10 = c15135m.g();
        this.f108264e = g10;
        this.f108260a = C15127e.c(b10, f10, g10, c15135m.a(), i10);
    }
}
