package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class QL extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f43547c;

    public List f43548d;

    public List f43549e;

    public InterfaceC10422yR f43550f;

    public F90 f43551g;

    public C90 f43552h;

    public List f43553i;

    public List f43554j;

    public QL() {
        List list = Collections.EMPTY_LIST;
        this.f43548d = list;
        this.f43549e = list;
        this.f43550f = C10088wR.f53502c;
        this.f43551g = F90.f40120f;
        this.f43552h = C90.f39140f;
        this.f43553i = list;
        this.f43554j = list;
    }

    @Override
    public final QL a(RL rl2) {
        C90 c90;
        F90 f90;
        if (rl2 == RL.f43865m) {
            return this;
        }
        if (!rl2.f43869d.isEmpty()) {
            if (this.f43548d.isEmpty()) {
                this.f43548d = rl2.f43869d;
                this.f43547c &= -2;
            } else {
                if ((this.f43547c & 1) != 1) {
                    this.f43548d = new ArrayList(this.f43548d);
                    this.f43547c |= 1;
                }
                this.f43548d.addAll(rl2.f43869d);
            }
        }
        if (!rl2.f43870e.isEmpty()) {
            if (this.f43549e.isEmpty()) {
                this.f43549e = rl2.f43870e;
                this.f43547c &= -3;
            } else {
                if ((this.f43547c & 2) != 2) {
                    this.f43549e = new ArrayList(this.f43549e);
                    this.f43547c |= 2;
                }
                this.f43549e.addAll(rl2.f43870e);
            }
        }
        if (!rl2.f43871f.isEmpty()) {
            if (this.f43550f.isEmpty()) {
                this.f43550f = rl2.f43871f;
                this.f43547c &= -5;
            } else {
                if ((this.f43547c & 4) != 4) {
                    this.f43550f = new C10088wR(this.f43550f);
                    this.f43547c |= 4;
                }
                this.f43550f.addAll(rl2.f43871f);
            }
        }
        if ((rl2.f43868c & 1) == 1) {
            F90 f902 = rl2.f43872g;
            if ((this.f43547c & 8) == 8 && (f90 = this.f43551g) != F90.f40120f) {
                this.f43551g = new E90().a(f90).a(f902).c();
            } else {
                this.f43551g = f902;
            }
            this.f43547c |= 8;
        }
        if ((rl2.f43868c & 2) == 2) {
            C90 c902 = rl2.f43873h;
            if ((this.f43547c & 16) == 16 && (c90 = this.f43552h) != C90.f39140f) {
                this.f43552h = new C10213x90().a(c90).a(c902).c();
            } else {
                this.f43552h = c902;
            }
            this.f43547c |= 16;
        }
        if (!rl2.f43874i.isEmpty()) {
            if (this.f43553i.isEmpty()) {
                this.f43553i = rl2.f43874i;
                this.f43547c &= -33;
            } else {
                if ((this.f43547c & 32) != 32) {
                    this.f43553i = new ArrayList(this.f43553i);
                    this.f43547c |= 32;
                }
                this.f43553i.addAll(rl2.f43874i);
            }
        }
        if (!rl2.f43875j.isEmpty()) {
            if (this.f43554j.isEmpty()) {
                this.f43554j = rl2.f43875j;
                this.f43547c &= -65;
            } else {
                if ((this.f43547c & 64) != 64) {
                    this.f43554j = new ArrayList(this.f43554j);
                    this.f43547c |= 64;
                }
                this.f43554j.addAll(rl2.f43875j);
            }
        }
        this.f43766b = this.f43766b.a(rl2.f43867b);
        return this;
    }

    public final RL c() {
        RL rl2 = new RL(this);
        int i10 = this.f43547c;
        if ((i10 & 1) == 1) {
            this.f43548d = Collections.unmodifiableList(this.f43548d);
            this.f43547c &= -2;
        }
        rl2.f43869d = this.f43548d;
        if ((this.f43547c & 2) == 2) {
            this.f43549e = Collections.unmodifiableList(this.f43549e);
            this.f43547c &= -3;
        }
        rl2.f43870e = this.f43549e;
        if ((this.f43547c & 4) == 4) {
            this.f43550f = this.f43550f.e();
            this.f43547c &= -5;
        }
        rl2.f43871f = this.f43550f;
        int i11 = (i10 & 8) != 8 ? 0 : 1;
        rl2.f43872g = this.f43551g;
        if ((i10 & 16) == 16) {
            i11 |= 2;
        }
        rl2.f43873h = this.f43552h;
        if ((this.f43547c & 32) == 32) {
            this.f43553i = Collections.unmodifiableList(this.f43553i);
            this.f43547c &= -33;
        }
        rl2.f43874i = this.f43553i;
        if ((this.f43547c & 64) == 64) {
            this.f43554j = Collections.unmodifiableList(this.f43554j);
            this.f43547c &= -65;
        }
        rl2.f43875j = this.f43554j;
        rl2.f43868c = i11;
        return rl2;
    }

    public final Object clone() {
        return new QL().a(c());
    }

    @Override
    public final O0 a() {
        RL c10 = c();
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
        RL rl2 = null;
        try {
            try {
                RL.f43866n.getClass();
                a(new RL(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                RL rl3 = (RL) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    rl2 = rl3;
                    if (rl2 != null) {
                        a(rl2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (rl2 != null) {
            }
            throw th;
        }
    }
}
