package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class L90 extends AbstractC5885Ry {

    public int f41896e;

    public List f41897f = Collections.EMPTY_LIST;

    public boolean f41898g;

    public int f41899h;

    public M90 f41900i;

    public int f41901j;

    public int f41902k;

    public int f41903l;

    public int f41904m;

    public int f41905n;

    public M90 f41906o;

    public int f41907p;

    public M90 f41908q;

    public int f41909r;

    public int f41910s;

    public L90() {
        M90 m90 = M90.f42196u;
        this.f41900i = m90;
        this.f41906o = m90;
        this.f41908q = m90;
    }

    @Override
    public final L90 a(M90 m90) {
        M90 m902;
        M90 m903;
        M90 m904;
        M90 m905 = M90.f42196u;
        if (m90 == m905) {
            return this;
        }
        if (!m90.f42200e.isEmpty()) {
            if (this.f41897f.isEmpty()) {
                this.f41897f = m90.f42200e;
                this.f41896e &= -2;
            } else {
                if ((this.f41896e & 1) != 1) {
                    this.f41897f = new ArrayList(this.f41897f);
                    this.f41896e |= 1;
                }
                this.f41897f.addAll(m90.f42200e);
            }
        }
        int i10 = m90.f42199d;
        if ((i10 & 1) == 1) {
            boolean z10 = m90.f42201f;
            this.f41896e |= 2;
            this.f41898g = z10;
        }
        if ((i10 & 2) == 2) {
            int i11 = m90.f42202g;
            this.f41896e |= 4;
            this.f41899h = i11;
        }
        if ((i10 & 4) == 4) {
            M90 m906 = m90.f42203h;
            if ((this.f41896e & 8) == 8 && (m904 = this.f41900i) != m905) {
                this.f41900i = M90.a(m904).a(m906).d();
            } else {
                this.f41900i = m906;
            }
            this.f41896e |= 8;
        }
        int i12 = m90.f42199d;
        if ((i12 & 8) == 8) {
            int i13 = m90.f42204i;
            this.f41896e |= 16;
            this.f41901j = i13;
        }
        if ((i12 & 16) == 16) {
            int i14 = m90.f42205j;
            this.f41896e |= 32;
            this.f41902k = i14;
        }
        if ((i12 & 32) == 32) {
            int i15 = m90.f42206k;
            this.f41896e |= 64;
            this.f41903l = i15;
        }
        if ((i12 & 64) == 64) {
            int i16 = m90.f42207l;
            this.f41896e |= 128;
            this.f41904m = i16;
        }
        if ((i12 & 128) == 128) {
            int i17 = m90.f42208m;
            this.f41896e |= 256;
            this.f41905n = i17;
        }
        if ((i12 & 256) == 256) {
            M90 m907 = m90.f42209n;
            if ((this.f41896e & 512) == 512 && (m903 = this.f41906o) != m905) {
                this.f41906o = M90.a(m903).a(m907).d();
            } else {
                this.f41906o = m907;
            }
            this.f41896e |= 512;
        }
        int i18 = m90.f42199d;
        if ((i18 & 512) == 512) {
            int i19 = m90.f42210o;
            this.f41896e |= 1024;
            this.f41907p = i19;
        }
        if ((i18 & 1024) == 1024) {
            M90 m908 = m90.f42211p;
            if ((this.f41896e & 2048) == 2048 && (m902 = this.f41908q) != m905) {
                this.f41908q = M90.a(m902).a(m908).d();
            } else {
                this.f41908q = m908;
            }
            this.f41896e |= 2048;
        }
        int i20 = m90.f42199d;
        if ((i20 & 2048) == 2048) {
            int i21 = m90.f42212q;
            this.f41896e |= 4096;
            this.f41909r = i21;
        }
        if ((i20 & 4096) == 4096) {
            int i22 = m90.f42213r;
            this.f41896e |= 8192;
            this.f41910s = i22;
        }
        a((AbstractC6001Ty) m90);
        this.f43766b = this.f43766b.a(m90.f42198c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return M90.f42196u;
    }

    @Override
    public final M90 a() {
        M90 d10 = d();
        if (d10.isInitialized()) {
            return d10;
        }
        throw new C6834cv0();
    }

    public final Object clone() {
        return new L90().a(d());
    }

    public final M90 d() {
        M90 m90 = new M90(this);
        int i10 = this.f41896e;
        if ((i10 & 1) == 1) {
            this.f41897f = Collections.unmodifiableList(this.f41897f);
            this.f41896e &= -2;
        }
        m90.f42200e = this.f41897f;
        int i11 = (i10 & 2) != 2 ? 0 : 1;
        m90.f42201f = this.f41898g;
        if ((i10 & 4) == 4) {
            i11 |= 2;
        }
        m90.f42202g = this.f41899h;
        if ((i10 & 8) == 8) {
            i11 |= 4;
        }
        m90.f42203h = this.f41900i;
        if ((i10 & 16) == 16) {
            i11 |= 8;
        }
        m90.f42204i = this.f41901j;
        if ((i10 & 32) == 32) {
            i11 |= 16;
        }
        m90.f42205j = this.f41902k;
        if ((i10 & 64) == 64) {
            i11 |= 32;
        }
        m90.f42206k = this.f41903l;
        if ((i10 & 128) == 128) {
            i11 |= 64;
        }
        m90.f42207l = this.f41904m;
        if ((i10 & 256) == 256) {
            i11 |= 128;
        }
        m90.f42208m = this.f41905n;
        if ((i10 & 512) == 512) {
            i11 |= 256;
        }
        m90.f42209n = this.f41906o;
        if ((i10 & 1024) == 1024) {
            i11 |= 512;
        }
        m90.f42210o = this.f41907p;
        if ((i10 & 2048) == 2048) {
            i11 |= 1024;
        }
        m90.f42211p = this.f41908q;
        if ((i10 & 4096) == 4096) {
            i11 |= 2048;
        }
        m90.f42212q = this.f41909r;
        if ((i10 & 8192) == 8192) {
            i11 |= 4096;
        }
        m90.f42213r = this.f41910s;
        m90.f42199d = i11;
        return m90;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        M90 m90 = null;
        try {
            try {
                M90.f42197v.getClass();
                a(new M90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                M90 m902 = (M90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    m90 = m902;
                    if (m90 != null) {
                        a(m90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (m90 != null) {
            }
            throw th;
        }
    }
}
