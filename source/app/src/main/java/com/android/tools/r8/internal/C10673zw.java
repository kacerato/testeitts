package com.android.tools.r8.internal;

public final class C10673zw extends AbstractC4954Bw {

    public final AbstractC5012Cw f54580c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10673zw(AbstractC5012Cw abstractC5012Cw) {
        super(abstractC5012Cw);
        this.f54580c = abstractC5012Cw;
    }

    @Override
    public final AbstractC6333Zs0 b() {
        AbstractC5012Cw abstractC5012Cw = this.f54580c;
        QJ a10 = AbstractC7716iB.a(abstractC5012Cw.f39386i, abstractC5012Cw.f39686a.d());
        if (a10 == null) {
            int a11 = a();
            if (AbstractC10506yw.f54196a || AbstractC10506yw.a(a11) || a11 == 2) {
                return AbstractC6333Zs0.a(AbstractC10506yw.a(a11));
            }
            throw new AssertionError();
        }
        W5 b10 = a10.b();
        if (b10.z()) {
            int a12 = a();
            if (AbstractC10506yw.f54196a || AbstractC10506yw.a(a12) || a12 == 2) {
                return AbstractC6333Zs0.a(AbstractC10506yw.a(a12));
            }
            throw new AssertionError();
        }
        boolean add = this.f54580c.f39689d.add(b10);
        boolean z10 = AbstractC5070Dw.f39685f;
        if (!z10 && !add) {
            throw new AssertionError();
        }
        AbstractC5012Cw abstractC5012Cw2 = this.f54580c;
        boolean add2 = abstractC5012Cw2.f39688c.add(abstractC5012Cw2.f39686a.d());
        if (!z10 && !add2) {
            throw new AssertionError();
        }
        int a13 = a((AbstractC10561zE) a10);
        if (AbstractC10506yw.f54196a || AbstractC10506yw.a(a13) || a13 == 2) {
            return AbstractC6333Zs0.a(AbstractC10506yw.a(a13));
        }
        throw new AssertionError();
    }
}
