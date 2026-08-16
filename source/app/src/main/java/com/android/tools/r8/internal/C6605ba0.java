package com.android.tools.r8.internal;

public final class C6605ba0 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f46790c;

    public int f46791d;

    public int f46792e;

    public int f46794g;

    public int f46795h;

    public EnumC6771ca0 f46793f = EnumC6771ca0.f47090d;

    public EnumC6938da0 f46796i = EnumC6938da0.LANGUAGE_VERSION;

    @Override
    public final C6605ba0 a(C7104ea0 c7104ea0) {
        if (c7104ea0 == C7104ea0.f47709l) {
            return this;
        }
        int i10 = c7104ea0.f47712c;
        if ((i10 & 1) == 1) {
            int i11 = c7104ea0.f47713d;
            this.f46790c = 1 | this.f46790c;
            this.f46791d = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c7104ea0.f47714e;
            this.f46790c = 2 | this.f46790c;
            this.f46792e = i12;
        }
        if ((i10 & 4) == 4) {
            EnumC6771ca0 enumC6771ca0 = c7104ea0.f47715f;
            enumC6771ca0.getClass();
            this.f46790c = 4 | this.f46790c;
            this.f46793f = enumC6771ca0;
        }
        int i13 = c7104ea0.f47712c;
        if ((i13 & 8) == 8) {
            int i14 = c7104ea0.f47716g;
            this.f46790c = 8 | this.f46790c;
            this.f46794g = i14;
        }
        if ((i13 & 16) == 16) {
            int i15 = c7104ea0.f47717h;
            this.f46790c = 16 | this.f46790c;
            this.f46795h = i15;
        }
        if ((i13 & 32) == 32) {
            EnumC6938da0 enumC6938da0 = c7104ea0.f47718i;
            enumC6938da0.getClass();
            this.f46790c = 32 | this.f46790c;
            this.f46796i = enumC6938da0;
        }
        this.f43766b = this.f43766b.a(c7104ea0.f47711b);
        return this;
    }

    public final C7104ea0 c() {
        C7104ea0 c7104ea0 = new C7104ea0(this);
        int i10 = this.f46790c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c7104ea0.f47713d = this.f46791d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c7104ea0.f47714e = this.f46792e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        c7104ea0.f47715f = this.f46793f;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        c7104ea0.f47716g = this.f46794g;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        c7104ea0.f47717h = this.f46795h;
        if ((i10 & 32) == 32) {
            i11 |= 32;
        }
        c7104ea0.f47718i = this.f46796i;
        c7104ea0.f47712c = i11;
        return c7104ea0;
    }

    public final Object clone() {
        return new C6605ba0().a(c());
    }

    @Override
    public final O0 a() {
        C7104ea0 c10 = c();
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
        C7104ea0 c7104ea0 = null;
        try {
            try {
                C7104ea0.f47710m.getClass();
                a(new C7104ea0(c4858Ae));
                return this;
            } catch (LJ e10) {
                C7104ea0 c7104ea02 = (C7104ea0) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c7104ea0 = c7104ea02;
                    if (c7104ea0 != null) {
                        a(c7104ea0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7104ea0 != null) {
            }
            throw th;
        }
    }
}
