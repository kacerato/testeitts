package com.android.tools.r8.internal;

public final class C4896Aw extends AbstractC4954Bw {

    public static final boolean f38736e = true;

    public final W5 f38737c;

    public final AbstractC5012Cw f38738d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4896Aw(AbstractC5012Cw abstractC5012Cw, W5 w52) {
        super(abstractC5012Cw);
        this.f38738d = abstractC5012Cw;
        this.f38737c = w52;
    }

    @Override
    public final AbstractC6333Zs0 b() {
        if (this.f38737c.z()) {
            return AbstractC6333Zs0.a(AbstractC10506yw.a(a()));
        }
        AbstractC5012Cw abstractC5012Cw = this.f38738d;
        boolean add = abstractC5012Cw.f39689d.add(this.f38737c);
        if (!AbstractC5070Dw.f39685f && !add) {
            throw new AssertionError();
        }
        a(this.f38737c);
        int a10 = a(this.f38737c.f45293f.a());
        if (f38736e || AbstractC10506yw.a(a10) || a10 == 2) {
            return AbstractC6333Zs0.a(AbstractC10506yw.a(a10));
        }
        throw new AssertionError();
    }
}
