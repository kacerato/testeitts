package com.android.tools.r8.internal;

public final class C7242fM extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f47943c;

    public C6409aM f47944d = C6409aM.f46493h;

    public C6909dM f47945e;

    public C6909dM f47946f;

    public C6909dM f47947g;

    public C6909dM f47948h;

    public C7242fM() {
        C6909dM c6909dM = C6909dM.f47376h;
        this.f47945e = c6909dM;
        this.f47946f = c6909dM;
        this.f47947g = c6909dM;
        this.f47948h = c6909dM;
    }

    @Override
    public final C7242fM a(C7409gM c7409gM) {
        C6909dM c6909dM;
        C6909dM c6909dM2;
        C6909dM c6909dM3;
        C6909dM c6909dM4;
        C6409aM c6409aM;
        if (c7409gM == C7409gM.f48236k) {
            return this;
        }
        if ((c7409gM.f48239c & 1) == 1) {
            C6409aM c6409aM2 = c7409gM.f48240d;
            if ((this.f47943c & 1) == 1 && (c6409aM = this.f47944d) != C6409aM.f46493h) {
                this.f47944d = new ZL().a(c6409aM).a(c6409aM2).c();
            } else {
                this.f47944d = c6409aM2;
            }
            this.f47943c |= 1;
        }
        if ((c7409gM.f48239c & 2) == 2) {
            C6909dM c6909dM5 = c7409gM.f48241e;
            if ((this.f47943c & 2) == 2 && (c6909dM4 = this.f47945e) != C6909dM.f47376h) {
                this.f47945e = C6909dM.a(c6909dM4).a(c6909dM5).c();
            } else {
                this.f47945e = c6909dM5;
            }
            this.f47943c |= 2;
        }
        if ((c7409gM.f48239c & 4) == 4) {
            C6909dM c6909dM6 = c7409gM.f48242f;
            if ((this.f47943c & 4) == 4 && (c6909dM3 = this.f47946f) != C6909dM.f47376h) {
                this.f47946f = C6909dM.a(c6909dM3).a(c6909dM6).c();
            } else {
                this.f47946f = c6909dM6;
            }
            this.f47943c |= 4;
        }
        if ((c7409gM.f48239c & 8) == 8) {
            C6909dM c6909dM7 = c7409gM.f48243g;
            if ((this.f47943c & 8) == 8 && (c6909dM2 = this.f47947g) != C6909dM.f47376h) {
                this.f47947g = C6909dM.a(c6909dM2).a(c6909dM7).c();
            } else {
                this.f47947g = c6909dM7;
            }
            this.f47943c |= 8;
        }
        if ((c7409gM.f48239c & 16) == 16) {
            C6909dM c6909dM8 = c7409gM.f48244h;
            if ((this.f47943c & 16) == 16 && (c6909dM = this.f47948h) != C6909dM.f47376h) {
                this.f47948h = C6909dM.a(c6909dM).a(c6909dM8).c();
            } else {
                this.f47948h = c6909dM8;
            }
            this.f47943c |= 16;
        }
        this.f43766b = this.f43766b.a(c7409gM.f48238b);
        return this;
    }

    public final C7409gM c() {
        C7409gM c7409gM = new C7409gM(this);
        int i10 = this.f47943c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c7409gM.f48240d = this.f47944d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c7409gM.f48241e = this.f47945e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        c7409gM.f48242f = this.f47946f;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        c7409gM.f48243g = this.f47947g;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        c7409gM.f48244h = this.f47948h;
        c7409gM.f48239c = i11;
        return c7409gM;
    }

    public final Object clone() {
        return new C7242fM().a(c());
    }

    @Override
    public final O0 a() {
        C7409gM c10 = c();
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
        C7409gM c7409gM = null;
        try {
            try {
                C7409gM.f48237l.getClass();
                a(new C7409gM(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C7409gM c7409gM2 = (C7409gM) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c7409gM = c7409gM2;
                    if (c7409gM != null) {
                        a(c7409gM);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7409gM != null) {
            }
            throw th;
        }
    }
}
