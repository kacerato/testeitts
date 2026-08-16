package Pm;

import Um.A;

public class e {

    public final A f21758a;

    public final int f21759b;

    public final boolean f21760c;

    public final e f21761d;

    public final f f21762e;

    public boolean f21763f = true;

    public boolean f21764g = false;

    public e(A a10, int i10, e eVar, f fVar, boolean z10) {
        this.f21758a = a10;
        this.f21759b = i10;
        this.f21760c = z10;
        this.f21761d = eVar;
        this.f21762e = fVar;
    }

    public static e a(A a10, int i10, e eVar, f fVar) {
        return new e(a10, i10, eVar, fVar, true);
    }

    public static e b(A a10, int i10, e eVar, f fVar) {
        return new e(a10, i10, eVar, fVar, false);
    }
}
