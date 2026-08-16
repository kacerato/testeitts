package com.android.tools.r8.internal;

public final class ZL extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f46225c;

    public int f46226d;

    public int f46227e;

    @Override
    public final ZL a(C6409aM c6409aM) {
        if (c6409aM == C6409aM.f46493h) {
            return this;
        }
        int i10 = c6409aM.f46496c;
        if ((i10 & 1) == 1) {
            int i11 = c6409aM.f46497d;
            this.f46225c = 1 | this.f46225c;
            this.f46226d = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c6409aM.f46498e;
            this.f46225c = 2 | this.f46225c;
            this.f46227e = i12;
        }
        this.f43766b = this.f43766b.a(c6409aM.f46495b);
        return this;
    }

    public final C6409aM c() {
        C6409aM c6409aM = new C6409aM(this);
        int i10 = this.f46225c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c6409aM.f46497d = this.f46226d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c6409aM.f46498e = this.f46227e;
        c6409aM.f46496c = i11;
        return c6409aM;
    }

    public final Object clone() {
        return new ZL().a(c());
    }

    @Override
    public final O0 a() {
        C6409aM c10 = c();
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
        C6409aM c6409aM = null;
        try {
            try {
                C6409aM.f46494i.getClass();
                a(new C6409aM(c4858Ae));
                return this;
            } catch (LJ e10) {
                C6409aM c6409aM2 = (C6409aM) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c6409aM = c6409aM2;
                    if (c6409aM != null) {
                        a(c6409aM);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6409aM != null) {
            }
            throw th;
        }
    }
}
