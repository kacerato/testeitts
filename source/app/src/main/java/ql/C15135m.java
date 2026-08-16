package ql;

import Bi.InterfaceC2392y;
import oh.C14549x;

public final class C15135m {

    public final G f108374a;

    public final int f108375b;

    public final int f108376c;

    public final int f108377d;

    public final int f108378e;

    public final int f108379f;

    public final C14549x f108380g;

    public C15135m(C14549x c14549x) {
        if (c14549x == null) {
            throw new NullPointerException("treeDigest == null");
        }
        this.f108380g = c14549x;
        InterfaceC2392y a10 = C15128f.a(c14549x);
        int j10 = O.j(a10);
        this.f108375b = j10;
        this.f108376c = 16;
        int ceil = (int) Math.ceil((j10 * 8) / O.q(16));
        this.f108378e = ceil;
        int floor = ((int) Math.floor(O.q((16 - 1) * ceil) / O.q(16))) + 1;
        this.f108379f = floor;
        int i10 = ceil + floor;
        this.f108377d = i10;
        C15134l c10 = C15134l.c(a10.b(), j10, 16, i10);
        this.f108374a = c10;
        if (c10 != null) {
            return;
        }
        throw new IllegalArgumentException("cannot find OID for digest algorithm: " + a10.b());
    }

    public int a() {
        return this.f108377d;
    }

    public int b() {
        return this.f108378e;
    }

    public int c() {
        return this.f108379f;
    }

    public G d() {
        return this.f108374a;
    }

    public C14549x e() {
        return this.f108380g;
    }

    public int f() {
        return this.f108375b;
    }

    public int g() {
        return this.f108376c;
    }
}
