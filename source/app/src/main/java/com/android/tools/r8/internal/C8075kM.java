package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8075kM extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f49594c;

    public int f49596e;

    public List f49599h;

    public List f49600i;

    public int f49595d = 1;

    public Object f49597f = "";

    public EnumC8242lM f49598g = EnumC8242lM.f49954c;

    public C8075kM() {
        List list = Collections.EMPTY_LIST;
        this.f49599h = list;
        this.f49600i = list;
    }

    @Override
    public final C8075kM a(C8409mM c8409mM) {
        if (c8409mM == C8409mM.f50264n) {
            return this;
        }
        int i10 = c8409mM.f50267c;
        if ((i10 & 1) == 1) {
            int i11 = c8409mM.f50268d;
            this.f49594c = 1 | this.f49594c;
            this.f49595d = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c8409mM.f50269e;
            this.f49594c = 2 | this.f49594c;
            this.f49596e = i12;
        }
        if ((i10 & 4) == 4) {
            this.f49594c |= 4;
            this.f49597f = c8409mM.f50270f;
        }
        if ((i10 & 8) == 8) {
            EnumC8242lM enumC8242lM = c8409mM.f50271g;
            enumC8242lM.getClass();
            this.f49594c = 8 | this.f49594c;
            this.f49598g = enumC8242lM;
        }
        if (!c8409mM.f50272h.isEmpty()) {
            if (this.f49599h.isEmpty()) {
                this.f49599h = c8409mM.f50272h;
                this.f49594c &= -17;
            } else {
                if ((this.f49594c & 16) != 16) {
                    this.f49599h = new ArrayList(this.f49599h);
                    this.f49594c |= 16;
                }
                this.f49599h.addAll(c8409mM.f50272h);
            }
        }
        if (!c8409mM.f50274j.isEmpty()) {
            if (this.f49600i.isEmpty()) {
                this.f49600i = c8409mM.f50274j;
                this.f49594c &= -33;
            } else {
                if ((this.f49594c & 32) != 32) {
                    this.f49600i = new ArrayList(this.f49600i);
                    this.f49594c |= 32;
                }
                this.f49600i.addAll(c8409mM.f50274j);
            }
        }
        this.f43766b = this.f43766b.a(c8409mM.f50266b);
        return this;
    }

    public final C8409mM c() {
        C8409mM c8409mM = new C8409mM(this);
        int i10 = this.f49594c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c8409mM.f50268d = this.f49595d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c8409mM.f50269e = this.f49596e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        c8409mM.f50270f = this.f49597f;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        c8409mM.f50271g = this.f49598g;
        if ((i10 & 16) == 16) {
            this.f49599h = Collections.unmodifiableList(this.f49599h);
            this.f49594c &= -17;
        }
        c8409mM.f50272h = this.f49599h;
        if ((this.f49594c & 32) == 32) {
            this.f49600i = Collections.unmodifiableList(this.f49600i);
            this.f49594c &= -33;
        }
        c8409mM.f50274j = this.f49600i;
        c8409mM.f50267c = i11;
        return c8409mM;
    }

    public final Object clone() {
        return new C8075kM().a(c());
    }

    @Override
    public final O0 a() {
        C8409mM c10 = c();
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
        C8409mM c8409mM = null;
        try {
            try {
                C8409mM.f50265o.getClass();
                a(new C8409mM(c4858Ae));
                return this;
            } catch (LJ e10) {
                C8409mM c8409mM2 = (C8409mM) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c8409mM = c8409mM2;
                    if (c8409mM != null) {
                        a(c8409mM);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8409mM != null) {
            }
            throw th;
        }
    }
}
