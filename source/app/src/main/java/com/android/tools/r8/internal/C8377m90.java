package com.android.tools.r8.internal;

import android.util.Half;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8377m90 extends AbstractC5885Ry {

    public int f50213e;

    public int f50214f = 6;

    public int f50215g = 6;

    public int f50216h;

    public M90 f50217i;

    public int f50218j;

    public List f50219k;

    public M90 f50220l;

    public int f50221m;

    public List f50222n;

    public List f50223o;

    public List f50224p;

    public W90 f50225q;

    public List f50226r;

    public Y80 f50227s;

    public C8377m90() {
        M90 m90 = M90.f42196u;
        this.f50217i = m90;
        List list = Collections.EMPTY_LIST;
        this.f50219k = list;
        this.f50220l = m90;
        this.f50222n = list;
        this.f50223o = list;
        this.f50224p = list;
        this.f50225q = W90.f45318h;
        this.f50226r = list;
        this.f50227s = Y80.f45937f;
    }

    @Override
    public final C8377m90 a(C8544n90 c8544n90) {
        Y80 y80;
        W90 w90;
        M90 m90;
        M90 m902;
        if (c8544n90 == C8544n90.f50522v) {
            return this;
        }
        int i10 = c8544n90.f50525d;
        if ((i10 & 1) == 1) {
            int i11 = c8544n90.f50526e;
            this.f50213e = 1 | this.f50213e;
            this.f50214f = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c8544n90.f50527f;
            this.f50213e = 2 | this.f50213e;
            this.f50215g = i12;
        }
        if ((i10 & 4) == 4) {
            int i13 = c8544n90.f50528g;
            this.f50213e = 4 | this.f50213e;
            this.f50216h = i13;
        }
        if ((i10 & 8) == 8) {
            M90 m903 = c8544n90.f50529h;
            if ((this.f50213e & 8) == 8 && (m902 = this.f50217i) != M90.f42196u) {
                this.f50217i = M90.a(m902).a(m903).d();
            } else {
                this.f50217i = m903;
            }
            this.f50213e |= 8;
        }
        if ((c8544n90.f50525d & 16) == 16) {
            int i14 = c8544n90.f50530i;
            this.f50213e = 16 | this.f50213e;
            this.f50218j = i14;
        }
        if (!c8544n90.f50531j.isEmpty()) {
            if (this.f50219k.isEmpty()) {
                this.f50219k = c8544n90.f50531j;
                this.f50213e &= -33;
            } else {
                if ((this.f50213e & 32) != 32) {
                    this.f50219k = new ArrayList(this.f50219k);
                    this.f50213e |= 32;
                }
                this.f50219k.addAll(c8544n90.f50531j);
            }
        }
        if ((c8544n90.f50525d & 32) == 32) {
            M90 m904 = c8544n90.f50532k;
            if ((this.f50213e & 64) == 64 && (m90 = this.f50220l) != M90.f42196u) {
                this.f50220l = M90.a(m90).a(m904).d();
            } else {
                this.f50220l = m904;
            }
            this.f50213e |= 64;
        }
        if ((c8544n90.f50525d & 64) == 64) {
            int i15 = c8544n90.f50533l;
            this.f50213e |= 128;
            this.f50221m = i15;
        }
        if (!c8544n90.f50534m.isEmpty()) {
            if (this.f50222n.isEmpty()) {
                this.f50222n = c8544n90.f50534m;
                this.f50213e &= -257;
            } else {
                if ((this.f50213e & 256) != 256) {
                    this.f50222n = new ArrayList(this.f50222n);
                    this.f50213e |= 256;
                }
                this.f50222n.addAll(c8544n90.f50534m);
            }
        }
        if (!c8544n90.f50535n.isEmpty()) {
            if (this.f50223o.isEmpty()) {
                this.f50223o = c8544n90.f50535n;
                this.f50213e &= -513;
            } else {
                if ((this.f50213e & 512) != 512) {
                    this.f50223o = new ArrayList(this.f50223o);
                    this.f50213e |= 512;
                }
                this.f50223o.addAll(c8544n90.f50535n);
            }
        }
        if (!c8544n90.f50537p.isEmpty()) {
            if (this.f50224p.isEmpty()) {
                this.f50224p = c8544n90.f50537p;
                this.f50213e &= Half.LOWEST_VALUE;
            } else {
                if ((this.f50213e & 1024) != 1024) {
                    this.f50224p = new ArrayList(this.f50224p);
                    this.f50213e |= 1024;
                }
                this.f50224p.addAll(c8544n90.f50537p);
            }
        }
        if ((c8544n90.f50525d & 128) == 128) {
            W90 w902 = c8544n90.f50538q;
            if ((this.f50213e & 2048) == 2048 && (w90 = this.f50225q) != W90.f45318h) {
                this.f50225q = W90.a(w90).a(w902).c();
            } else {
                this.f50225q = w902;
            }
            this.f50213e |= 2048;
        }
        if (!c8544n90.f50539r.isEmpty()) {
            if (this.f50226r.isEmpty()) {
                this.f50226r = c8544n90.f50539r;
                this.f50213e &= -4097;
            } else {
                if ((this.f50213e & 4096) != 4096) {
                    this.f50226r = new ArrayList(this.f50226r);
                    this.f50213e |= 4096;
                }
                this.f50226r.addAll(c8544n90.f50539r);
            }
        }
        if ((c8544n90.f50525d & 256) == 256) {
            Y80 y802 = c8544n90.f50540s;
            if ((this.f50213e & 8192) == 8192 && (y80 = this.f50227s) != Y80.f45937f) {
                this.f50227s = new X80().a(y80).a(y802).c();
            } else {
                this.f50227s = y802;
            }
            this.f50213e |= 8192;
        }
        a((AbstractC6001Ty) c8544n90);
        this.f43766b = this.f43766b.a(c8544n90.f50524c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return C8544n90.f50522v;
    }

    public final C8544n90 c() {
        C8544n90 c8544n90 = new C8544n90(this);
        int i10 = this.f50213e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c8544n90.f50526e = this.f50214f;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c8544n90.f50527f = this.f50215g;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        c8544n90.f50528g = this.f50216h;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        c8544n90.f50529h = this.f50217i;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        c8544n90.f50530i = this.f50218j;
        if ((i10 & 32) == 32) {
            this.f50219k = Collections.unmodifiableList(this.f50219k);
            this.f50213e &= -33;
        }
        c8544n90.f50531j = this.f50219k;
        if ((i10 & 64) == 64) {
            i11 |= 32;
        }
        c8544n90.f50532k = this.f50220l;
        if ((i10 & 128) == 128) {
            i11 |= 64;
        }
        c8544n90.f50533l = this.f50221m;
        if ((this.f50213e & 256) == 256) {
            this.f50222n = Collections.unmodifiableList(this.f50222n);
            this.f50213e &= -257;
        }
        c8544n90.f50534m = this.f50222n;
        if ((this.f50213e & 512) == 512) {
            this.f50223o = Collections.unmodifiableList(this.f50223o);
            this.f50213e &= -513;
        }
        c8544n90.f50535n = this.f50223o;
        if ((this.f50213e & 1024) == 1024) {
            this.f50224p = Collections.unmodifiableList(this.f50224p);
            this.f50213e &= Half.LOWEST_VALUE;
        }
        c8544n90.f50537p = this.f50224p;
        if ((i10 & 2048) == 2048) {
            i11 |= 128;
        }
        c8544n90.f50538q = this.f50225q;
        if ((this.f50213e & 4096) == 4096) {
            this.f50226r = Collections.unmodifiableList(this.f50226r);
            this.f50213e &= -4097;
        }
        c8544n90.f50539r = this.f50226r;
        if ((i10 & 8192) == 8192) {
            i11 |= 256;
        }
        c8544n90.f50540s = this.f50227s;
        c8544n90.f50525d = i11;
        return c8544n90;
    }

    public final Object clone() {
        return new C8377m90().a(c());
    }

    @Override
    public final O0 a() {
        C8544n90 c10 = c();
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
        C8544n90 c8544n90 = null;
        try {
            try {
                C8544n90.f50523w.getClass();
                a(new C8544n90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C8544n90 c8544n902 = (C8544n90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c8544n90 = c8544n902;
                    if (c8544n90 != null) {
                        a(c8544n90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8544n90 != null) {
            }
            throw th;
        }
    }
}
