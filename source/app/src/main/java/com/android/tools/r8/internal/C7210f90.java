package com.android.tools.r8.internal;

public final class C7210f90 extends AbstractC5885Ry {

    public int f47886e;

    public int f47887f;

    @Override
    public final C7210f90 a(C7377g90 c7377g90) {
        if (c7377g90 == C7377g90.f48196h) {
            return this;
        }
        if ((c7377g90.f48199d & 1) == 1) {
            int i10 = c7377g90.f48200e;
            this.f47886e = 1 | this.f47886e;
            this.f47887f = i10;
        }
        a((AbstractC6001Ty) c7377g90);
        this.f43766b = this.f43766b.a(c7377g90.f48198c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return C7377g90.f48196h;
    }

    public final Object clone() {
        C7210f90 c7210f90 = new C7210f90();
        C7377g90 c7377g90 = new C7377g90(this);
        int i10 = (this.f47886e & 1) != 1 ? 0 : 1;
        c7377g90.f48200e = this.f47887f;
        c7377g90.f48199d = i10;
        return c7210f90.a(c7377g90);
    }

    @Override
    public final O0 a() {
        C7377g90 c7377g90 = new C7377g90(this);
        int i10 = (this.f47886e & 1) != 1 ? 0 : 1;
        c7377g90.f48200e = this.f47887f;
        c7377g90.f48199d = i10;
        if (c7377g90.isInitialized()) {
            return c7377g90;
        }
        throw new C6834cv0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        C7377g90 c7377g90 = null;
        try {
            try {
                C7377g90.f48197i.getClass();
                a(new C7377g90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C7377g90 c7377g902 = (C7377g90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c7377g90 = c7377g902;
                    if (c7377g90 != null) {
                        a(c7377g90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7377g90 != null) {
            }
            throw th;
        }
    }
}
