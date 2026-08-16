package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C9712u90 extends AbstractC5885Ry {

    public int f52799e;

    public int f52800f = 518;

    public int f52801g = 2054;

    public int f52802h;

    public M90 f52803i;

    public int f52804j;

    public List f52805k;

    public M90 f52806l;

    public int f52807m;

    public List f52808n;

    public List f52809o;

    public Z90 f52810p;

    public int f52811q;

    public int f52812r;

    public List f52813s;

    public C9712u90() {
        M90 m90 = M90.f42196u;
        this.f52803i = m90;
        List list = Collections.EMPTY_LIST;
        this.f52805k = list;
        this.f52806l = m90;
        this.f52808n = list;
        this.f52809o = list;
        this.f52810p = Z90.f46173m;
        this.f52813s = list;
    }

    @Override
    public final C9712u90 a(C9879v90 c9879v90) {
        Z90 z90;
        M90 m90;
        M90 m902;
        if (c9879v90 == C9879v90.f53025v) {
            return this;
        }
        int i10 = c9879v90.f53028d;
        if ((i10 & 1) == 1) {
            int i11 = c9879v90.f53029e;
            this.f52799e = 1 | this.f52799e;
            this.f52800f = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c9879v90.f53030f;
            this.f52799e = 2 | this.f52799e;
            this.f52801g = i12;
        }
        if ((i10 & 4) == 4) {
            int i13 = c9879v90.f53031g;
            this.f52799e = 4 | this.f52799e;
            this.f52802h = i13;
        }
        if ((i10 & 8) == 8) {
            M90 m903 = c9879v90.f53032h;
            if ((this.f52799e & 8) == 8 && (m902 = this.f52803i) != M90.f42196u) {
                this.f52803i = M90.a(m902).a(m903).d();
            } else {
                this.f52803i = m903;
            }
            this.f52799e |= 8;
        }
        if ((c9879v90.f53028d & 16) == 16) {
            int i14 = c9879v90.f53033i;
            this.f52799e = 16 | this.f52799e;
            this.f52804j = i14;
        }
        if (!c9879v90.f53034j.isEmpty()) {
            if (this.f52805k.isEmpty()) {
                this.f52805k = c9879v90.f53034j;
                this.f52799e &= -33;
            } else {
                if ((this.f52799e & 32) != 32) {
                    this.f52805k = new ArrayList(this.f52805k);
                    this.f52799e |= 32;
                }
                this.f52805k.addAll(c9879v90.f53034j);
            }
        }
        if ((c9879v90.f53028d & 32) == 32) {
            M90 m904 = c9879v90.f53035k;
            if ((this.f52799e & 64) == 64 && (m90 = this.f52806l) != M90.f42196u) {
                this.f52806l = M90.a(m90).a(m904).d();
            } else {
                this.f52806l = m904;
            }
            this.f52799e |= 64;
        }
        if ((c9879v90.f53028d & 64) == 64) {
            int i15 = c9879v90.f53036l;
            this.f52799e |= 128;
            this.f52807m = i15;
        }
        if (!c9879v90.f53037m.isEmpty()) {
            if (this.f52808n.isEmpty()) {
                this.f52808n = c9879v90.f53037m;
                this.f52799e &= -257;
            } else {
                if ((this.f52799e & 256) != 256) {
                    this.f52808n = new ArrayList(this.f52808n);
                    this.f52799e |= 256;
                }
                this.f52808n.addAll(c9879v90.f53037m);
            }
        }
        if (!c9879v90.f53038n.isEmpty()) {
            if (this.f52809o.isEmpty()) {
                this.f52809o = c9879v90.f53038n;
                this.f52799e &= -513;
            } else {
                if ((this.f52799e & 512) != 512) {
                    this.f52809o = new ArrayList(this.f52809o);
                    this.f52799e |= 512;
                }
                this.f52809o.addAll(c9879v90.f53038n);
            }
        }
        if ((c9879v90.f53028d & 128) == 128) {
            Z90 z902 = c9879v90.f53040p;
            if ((this.f52799e & 1024) == 1024 && (z90 = this.f52810p) != Z90.f46173m) {
                this.f52810p = new Y90().a(z90).a(z902).c();
            } else {
                this.f52810p = z902;
            }
            this.f52799e |= 1024;
        }
        int i16 = c9879v90.f53028d;
        if ((i16 & 256) == 256) {
            int i17 = c9879v90.f53041q;
            this.f52799e |= 2048;
            this.f52811q = i17;
        }
        if ((i16 & 512) == 512) {
            int i18 = c9879v90.f53042r;
            this.f52799e |= 4096;
            this.f52812r = i18;
        }
        if (!c9879v90.f53043s.isEmpty()) {
            if (this.f52813s.isEmpty()) {
                this.f52813s = c9879v90.f53043s;
                this.f52799e &= -8193;
            } else {
                if ((this.f52799e & 8192) != 8192) {
                    this.f52813s = new ArrayList(this.f52813s);
                    this.f52799e |= 8192;
                }
                this.f52813s.addAll(c9879v90.f53043s);
            }
        }
        a((AbstractC6001Ty) c9879v90);
        this.f43766b = this.f43766b.a(c9879v90.f53027c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return C9879v90.f53025v;
    }

    public final C9879v90 c() {
        C9879v90 c9879v90 = new C9879v90(this);
        int i10 = this.f52799e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c9879v90.f53029e = this.f52800f;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c9879v90.f53030f = this.f52801g;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        c9879v90.f53031g = this.f52802h;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        c9879v90.f53032h = this.f52803i;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        c9879v90.f53033i = this.f52804j;
        if ((i10 & 32) == 32) {
            this.f52805k = Collections.unmodifiableList(this.f52805k);
            this.f52799e &= -33;
        }
        c9879v90.f53034j = this.f52805k;
        if ((i10 & 64) == 64) {
            i11 |= 32;
        }
        c9879v90.f53035k = this.f52806l;
        if ((i10 & 128) == 128) {
            i11 |= 64;
        }
        c9879v90.f53036l = this.f52807m;
        if ((this.f52799e & 256) == 256) {
            this.f52808n = Collections.unmodifiableList(this.f52808n);
            this.f52799e &= -257;
        }
        c9879v90.f53037m = this.f52808n;
        if ((this.f52799e & 512) == 512) {
            this.f52809o = Collections.unmodifiableList(this.f52809o);
            this.f52799e &= -513;
        }
        c9879v90.f53038n = this.f52809o;
        if ((i10 & 1024) == 1024) {
            i11 |= 128;
        }
        c9879v90.f53040p = this.f52810p;
        if ((i10 & 2048) == 2048) {
            i11 |= 256;
        }
        c9879v90.f53041q = this.f52811q;
        if ((i10 & 4096) == 4096) {
            i11 |= 512;
        }
        c9879v90.f53042r = this.f52812r;
        if ((this.f52799e & 8192) == 8192) {
            this.f52813s = Collections.unmodifiableList(this.f52813s);
            this.f52799e &= -8193;
        }
        c9879v90.f53043s = this.f52813s;
        c9879v90.f53028d = i11;
        return c9879v90;
    }

    public final Object clone() {
        return new C9712u90().a(c());
    }

    @Override
    public final O0 a() {
        C9879v90 c10 = c();
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
        C9879v90 c9879v90 = null;
        try {
            try {
                C9879v90.f53026w.getClass();
                a(new C9879v90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C9879v90 c9879v902 = (C9879v90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c9879v90 = c9879v902;
                    if (c9879v90 != null) {
                        a(c9879v90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9879v90 != null) {
            }
            throw th;
        }
    }
}
