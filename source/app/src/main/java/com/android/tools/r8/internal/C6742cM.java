package com.android.tools.r8.internal;

public final class C6742cM extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f47023c;

    public int f47024d;

    public int f47025e;

    @Override
    public final C6742cM a(C6909dM c6909dM) {
        if (c6909dM == C6909dM.f47376h) {
            return this;
        }
        int i10 = c6909dM.f47379c;
        if ((i10 & 1) == 1) {
            int i11 = c6909dM.f47380d;
            this.f47023c = 1 | this.f47023c;
            this.f47024d = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c6909dM.f47381e;
            this.f47023c = 2 | this.f47023c;
            this.f47025e = i12;
        }
        this.f43766b = this.f43766b.a(c6909dM.f47378b);
        return this;
    }

    public final C6909dM c() {
        C6909dM c6909dM = new C6909dM(this);
        int i10 = this.f47023c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c6909dM.f47380d = this.f47024d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c6909dM.f47381e = this.f47025e;
        c6909dM.f47379c = i11;
        return c6909dM;
    }

    public final Object clone() {
        return new C6742cM().a(c());
    }

    @Override
    public final O0 a() {
        C6909dM c10 = c();
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
        C6909dM c6909dM = null;
        try {
            try {
                C6909dM.f47377i.getClass();
                a(new C6909dM(c4858Ae));
                return this;
            } catch (LJ e10) {
                C6909dM c6909dM2 = (C6909dM) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c6909dM = c6909dM2;
                    if (c6909dM != null) {
                        a(c6909dM);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6909dM != null) {
            }
            throw th;
        }
    }
}
