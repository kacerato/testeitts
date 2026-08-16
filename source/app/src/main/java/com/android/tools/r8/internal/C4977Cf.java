package com.android.tools.r8.internal;

public final class C4977Cf extends AbstractC5151Ff {

    public static final boolean f39304d = true;

    public final Thread f39305c;

    public C4977Cf(C5093Ef c5093Ef, Thread thread) {
        super(c5093Ef);
        this.f39305c = thread;
    }

    @Override
    public final StringBuilder a(StringBuilder sb2) {
        C5093Ef c5093Ef = this.f40266a;
        c5093Ef.getClass();
        sb2.append('$');
        sb2.append(c5093Ef.f39966b);
        sb2.append(T5.b.f24045b);
        return sb2;
    }

    @Override
    public final StringBuilder b(StringBuilder sb2) {
        C5093Ef c5093Ef = this.f40266a;
        c5093Ef.getClass();
        sb2.append('$');
        sb2.append(c5093Ef.f39966b);
        sb2.append(T5.b.f24045b);
        return sb2;
    }

    public final C5209Gf a(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f39304d;
        if (!z10 && this.f39305c != Thread.currentThread()) {
            throw new AssertionError((Object) "Invoked on another thread than main");
        }
        int i10 = this.f40267b;
        this.f40267b = i10 + 1;
        C5209Gf c5209Gf = new C5209Gf(this, h22, i10);
        if (!z10) {
            this.f40266a.a(c5209Gf);
        }
        return c5209Gf;
    }
}
