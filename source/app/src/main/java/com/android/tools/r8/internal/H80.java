package com.android.tools.r8.internal;

public final class H80 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f40692c;

    public int f40693d;

    public L80 f40694e = L80.f41876q;

    @Override
    public final H80 a(M80 m80) {
        L80 l80;
        if (m80 == M80.f42187h) {
            return this;
        }
        int i10 = m80.f42190c;
        if ((i10 & 1) == 1) {
            int i11 = m80.f42191d;
            this.f40692c = 1 | this.f40692c;
            this.f40693d = i11;
        }
        if ((i10 & 2) == 2) {
            L80 l802 = m80.f42192e;
            if ((this.f40692c & 2) == 2 && (l80 = this.f40694e) != L80.f41876q) {
                this.f40694e = new J80().a(l80).a(l802).c();
            } else {
                this.f40694e = l802;
            }
            this.f40692c |= 2;
        }
        this.f43766b = this.f43766b.a(m80.f42189b);
        return this;
    }

    public final M80 c() {
        M80 m80 = new M80(this);
        int i10 = this.f40692c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        m80.f42191d = this.f40693d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        m80.f42192e = this.f40694e;
        m80.f42190c = i11;
        return m80;
    }

    public final Object clone() {
        return new H80().a(c());
    }

    @Override
    public final O0 a() {
        M80 c10 = c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        M80 m80 = null;
        try {
            try {
                M80.f42188i.getClass();
                a(new M80(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                M80 m802 = (M80) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    m80 = m802;
                    if (m80 != null) {
                        a(m80);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (m80 != null) {
            }
            throw th;
        }
    }
}
