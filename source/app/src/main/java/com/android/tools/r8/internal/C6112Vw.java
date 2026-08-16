package com.android.tools.r8.internal;

import org.objectweb.asm.Opcodes;

public final class C6112Vw extends AbstractC6055Uw {

    public final C7988jr0 f45213c;

    public final int f45214d;

    public final int f45215e;

    public final int f45216f;

    public final int f45217g;

    public final int f45218h;

    public S2 f45219i;

    public S2 f45220j;

    public S2 f45221k;

    public S2 f45222l;

    public K4 f45223m;

    public C6112Vw(C7988jr0 c7988jr0, int i10, String str, String str2, String str3, Object obj) {
        super(Opcodes.ASM9, null);
        this.f45213c = c7988jr0;
        this.f45214d = i10;
        this.f45215e = c7988jr0.a(str);
        this.f45216f = c7988jr0.a(str2);
        if (str3 != null) {
            this.f45217g = c7988jr0.a(str3);
        }
        if (obj != null) {
            this.f45218h = c7988jr0.a(obj).f48722a;
        }
    }

    @Override
    public final void a() {
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f45213c, str, this.f45219i);
            this.f45219i = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f45213c, str, this.f45220j);
        this.f45220j = a11;
        return a11;
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f45213c, i10, c9666tu0, str, this.f45221k);
            this.f45221k = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f45213c, i10, c9666tu0, str, this.f45222l);
        this.f45222l = a11;
        return a11;
    }

    @Override
    public final void a(K4 k42) {
        k42.f41568c = this.f45223m;
        this.f45223m = k42;
    }
}
