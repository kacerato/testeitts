package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class O90 extends AbstractC5885Ry {

    public int f42798e;

    public int f42799f = 6;

    public int f42800g;

    public List f42801h;

    public M90 f42802i;

    public int f42803j;

    public M90 f42804k;

    public int f42805l;

    public List f42806m;

    public List f42807n;

    public O90() {
        List list = Collections.EMPTY_LIST;
        this.f42801h = list;
        M90 m90 = M90.f42196u;
        this.f42802i = m90;
        this.f42804k = m90;
        this.f42806m = list;
        this.f42807n = list;
    }

    @Override
    public final O90 a(P90 p90) {
        M90 m90;
        M90 m902;
        if (p90 == P90.f43135p) {
            return this;
        }
        int i10 = p90.f43138d;
        if ((i10 & 1) == 1) {
            int i11 = p90.f43139e;
            this.f42798e = 1 | this.f42798e;
            this.f42799f = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = p90.f43140f;
            this.f42798e = 2 | this.f42798e;
            this.f42800g = i12;
        }
        if (!p90.f43141g.isEmpty()) {
            if (this.f42801h.isEmpty()) {
                this.f42801h = p90.f43141g;
                this.f42798e &= -5;
            } else {
                if ((this.f42798e & 4) != 4) {
                    this.f42801h = new ArrayList(this.f42801h);
                    this.f42798e |= 4;
                }
                this.f42801h.addAll(p90.f43141g);
            }
        }
        if ((p90.f43138d & 4) == 4) {
            M90 m903 = p90.f43142h;
            if ((this.f42798e & 8) == 8 && (m902 = this.f42802i) != M90.f42196u) {
                this.f42802i = M90.a(m902).a(m903).d();
            } else {
                this.f42802i = m903;
            }
            this.f42798e |= 8;
        }
        int i13 = p90.f43138d;
        if ((i13 & 8) == 8) {
            int i14 = p90.f43143i;
            this.f42798e |= 16;
            this.f42803j = i14;
        }
        if ((i13 & 16) == 16) {
            M90 m904 = p90.f43144j;
            if ((this.f42798e & 32) == 32 && (m90 = this.f42804k) != M90.f42196u) {
                this.f42804k = M90.a(m90).a(m904).d();
            } else {
                this.f42804k = m904;
            }
            this.f42798e |= 32;
        }
        if ((p90.f43138d & 32) == 32) {
            int i15 = p90.f43145k;
            this.f42798e |= 64;
            this.f42805l = i15;
        }
        if (!p90.f43146l.isEmpty()) {
            if (this.f42806m.isEmpty()) {
                this.f42806m = p90.f43146l;
                this.f42798e &= -129;
            } else {
                if ((this.f42798e & 128) != 128) {
                    this.f42806m = new ArrayList(this.f42806m);
                    this.f42798e |= 128;
                }
                this.f42806m.addAll(p90.f43146l);
            }
        }
        if (!p90.f43147m.isEmpty()) {
            if (this.f42807n.isEmpty()) {
                this.f42807n = p90.f43147m;
                this.f42798e &= -257;
            } else {
                if ((this.f42798e & 256) != 256) {
                    this.f42807n = new ArrayList(this.f42807n);
                    this.f42798e |= 256;
                }
                this.f42807n.addAll(p90.f43147m);
            }
        }
        a((AbstractC6001Ty) p90);
        this.f43766b = this.f43766b.a(p90.f43137c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return P90.f43135p;
    }

    public final P90 c() {
        P90 p90 = new P90(this);
        int i10 = this.f42798e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        p90.f43139e = this.f42799f;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        p90.f43140f = this.f42800g;
        if ((i10 & 4) == 4) {
            this.f42801h = Collections.unmodifiableList(this.f42801h);
            this.f42798e &= -5;
        }
        p90.f43141g = this.f42801h;
        if ((i10 & 8) == 8) {
            i11 |= 4;
        }
        p90.f43142h = this.f42802i;
        if ((i10 & 16) == 16) {
            i11 |= 8;
        }
        p90.f43143i = this.f42803j;
        if ((i10 & 32) == 32) {
            i11 |= 16;
        }
        p90.f43144j = this.f42804k;
        if ((i10 & 64) == 64) {
            i11 |= 32;
        }
        p90.f43145k = this.f42805l;
        if ((this.f42798e & 128) == 128) {
            this.f42806m = Collections.unmodifiableList(this.f42806m);
            this.f42798e &= -129;
        }
        p90.f43146l = this.f42806m;
        if ((this.f42798e & 256) == 256) {
            this.f42807n = Collections.unmodifiableList(this.f42807n);
            this.f42798e &= -257;
        }
        p90.f43147m = this.f42807n;
        p90.f43138d = i11;
        return p90;
    }

    public final Object clone() {
        return new O90().a(c());
    }

    @Override
    public final O0 a() {
        P90 c10 = c();
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
        P90 p90 = null;
        try {
            try {
                P90.f43136q.getClass();
                a(new P90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                P90 p902 = (P90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    p90 = p902;
                    if (p90 != null) {
                        a(p90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (p90 != null) {
            }
            throw th;
        }
    }
}
