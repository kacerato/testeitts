package com.android.tools.r8.internal;

public final class C10480yn0 extends AbstractC4995Cn0 {

    public final C10647zn0 f54161i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10480yn0(C10647zn0 c10647zn0, C5111En0 c5111En0, String str) {
        super(c5111En0, str);
        this.f54161i = c10647zn0;
    }

    @Override
    public final int a(int i10) {
        return i10 + 1;
    }

    @Override
    public final int b(int i10) {
        C5776Qb c5776Qb = this.f54161i.f54539a;
        String str = this.f39360d;
        int length = str.length();
        U60.b(i10, length);
        while (i10 < length) {
            if (c5776Qb.b(str.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }
}
