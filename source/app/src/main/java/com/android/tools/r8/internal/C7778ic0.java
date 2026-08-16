package com.android.tools.r8.internal;

import org.objectweb.asm.Opcodes;

public final class C7778ic0 extends AbstractC7611hc0 {

    public final C7988jr0 f48984b;

    public final int f48985c;

    public final int f48986d;

    public final int f48987e;

    public S2 f48988f;

    public S2 f48989g;

    public S2 f48990h;

    public S2 f48991i;

    public K4 f48992j;

    public C7778ic0(C7988jr0 c7988jr0, String str, String str2, String str3) {
        super(Opcodes.ASM9, null);
        this.f48984b = c7988jr0;
        this.f48985c = c7988jr0.a(str);
        this.f48986d = c7988jr0.a(str2);
        if (str3 != null) {
            this.f48987e = c7988jr0.a(str3);
        }
    }

    @Override
    public final void a() {
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f48984b, str, this.f48988f);
            this.f48988f = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f48984b, str, this.f48989g);
        this.f48989g = a11;
        return a11;
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f48984b, i10, c9666tu0, str, this.f48990h);
            this.f48990h = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f48984b, i10, c9666tu0, str, this.f48991i);
        this.f48991i = a11;
        return a11;
    }

    @Override
    public final void a(K4 k42) {
        k42.f41568c = this.f48992j;
        this.f48992j = k42;
    }

    public final void a(C8874p8 c8874p8) {
        c8874p8.d(this.f48985c).d(this.f48986d);
        int i10 = this.f48987e != 0 ? 1 : 0;
        if (this.f48988f != null) {
            i10++;
        }
        if (this.f48989g != null) {
            i10++;
        }
        if (this.f48990h != null) {
            i10++;
        }
        if (this.f48991i != null) {
            i10++;
        }
        K4 k42 = this.f48992j;
        if (k42 != null) {
            int i11 = 0;
            while (k42 != null) {
                i11++;
                k42 = k42.f41568c;
            }
            i10 += i11;
        }
        c8874p8.d(i10);
        K4.a(this.f48984b, 0, this.f48987e, c8874p8);
        S2.a(this.f48984b, this.f48988f, this.f48989g, this.f48990h, this.f48991i, c8874p8);
        K4 k43 = this.f48992j;
        if (k43 != null) {
            C7988jr0 c7988jr0 = this.f48984b;
            C7616he c7616he = c7988jr0.f49370a;
            while (k43 != null) {
                if (k43.f41567b == null) {
                    k43.f41567b = k43.a();
                }
                C8874p8 c8874p82 = k43.f41567b;
                c8874p8.d(c7988jr0.a(k43.f41566a)).c(c8874p82.f51447b);
                c8874p8.a(c8874p82.f51446a, 0, c8874p82.f51447b);
                k43 = k43.f41568c;
            }
        }
    }
}
