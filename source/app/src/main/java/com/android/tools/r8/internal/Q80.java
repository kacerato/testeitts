package com.android.tools.r8.internal;

import android.util.Half;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Q80 extends AbstractC5885Ry {

    public W90 f43463A;

    public List f43464B;

    public C7605ha0 f43465C;

    public int f43466e;

    public int f43467f = 6;

    public int f43468g;

    public int f43469h;

    public List f43470i;

    public List f43471j;

    public List f43472k;

    public List f43473l;

    public List f43474m;

    public List f43475n;

    public List f43476o;

    public List f43477p;

    public List f43478q;

    public List f43479r;

    public List f43480s;

    public List f43481t;

    public int f43482u;

    public M90 f43483v;

    public int f43484w;

    public List f43485x;

    public List f43486y;

    public List f43487z;

    public Q80() {
        List list = Collections.EMPTY_LIST;
        this.f43470i = list;
        this.f43471j = list;
        this.f43472k = list;
        this.f43473l = list;
        this.f43474m = list;
        this.f43475n = list;
        this.f43476o = list;
        this.f43477p = list;
        this.f43478q = list;
        this.f43479r = list;
        this.f43480s = list;
        this.f43481t = list;
        this.f43483v = M90.f42196u;
        this.f43485x = list;
        this.f43486y = list;
        this.f43487z = list;
        this.f43463A = W90.f45318h;
        this.f43464B = list;
        this.f43465C = C7605ha0.f48584f;
    }

    @Override
    public final Q80 a(S80 s80) {
        C7605ha0 c7605ha0;
        W90 w90;
        M90 m90;
        if (s80 == S80.f44099K) {
            return this;
        }
        int i10 = s80.f44112d;
        if ((i10 & 1) == 1) {
            int i11 = s80.f44113e;
            this.f43466e = 1 | this.f43466e;
            this.f43467f = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = s80.f44114f;
            this.f43466e = 2 | this.f43466e;
            this.f43468g = i12;
        }
        if ((i10 & 4) == 4) {
            int i13 = s80.f44115g;
            this.f43466e = 4 | this.f43466e;
            this.f43469h = i13;
        }
        if (!s80.f44116h.isEmpty()) {
            if (this.f43470i.isEmpty()) {
                this.f43470i = s80.f44116h;
                this.f43466e &= -9;
            } else {
                if ((this.f43466e & 8) != 8) {
                    this.f43470i = new ArrayList(this.f43470i);
                    this.f43466e |= 8;
                }
                this.f43470i.addAll(s80.f44116h);
            }
        }
        if (!s80.f44117i.isEmpty()) {
            if (this.f43471j.isEmpty()) {
                this.f43471j = s80.f44117i;
                this.f43466e &= -17;
            } else {
                if ((this.f43466e & 16) != 16) {
                    this.f43471j = new ArrayList(this.f43471j);
                    this.f43466e |= 16;
                }
                this.f43471j.addAll(s80.f44117i);
            }
        }
        if (!s80.f44118j.isEmpty()) {
            if (this.f43472k.isEmpty()) {
                this.f43472k = s80.f44118j;
                this.f43466e &= -33;
            } else {
                if ((this.f43466e & 32) != 32) {
                    this.f43472k = new ArrayList(this.f43472k);
                    this.f43466e |= 32;
                }
                this.f43472k.addAll(s80.f44118j);
            }
        }
        if (!s80.f44120l.isEmpty()) {
            if (this.f43473l.isEmpty()) {
                this.f43473l = s80.f44120l;
                this.f43466e &= -65;
            } else {
                if ((this.f43466e & 64) != 64) {
                    this.f43473l = new ArrayList(this.f43473l);
                    this.f43466e |= 64;
                }
                this.f43473l.addAll(s80.f44120l);
            }
        }
        if (!s80.f44122n.isEmpty()) {
            if (this.f43474m.isEmpty()) {
                this.f43474m = s80.f44122n;
                this.f43466e &= -129;
            } else {
                if ((this.f43466e & 128) != 128) {
                    this.f43474m = new ArrayList(this.f43474m);
                    this.f43466e |= 128;
                }
                this.f43474m.addAll(s80.f44122n);
            }
        }
        if (!s80.f44123o.isEmpty()) {
            if (this.f43475n.isEmpty()) {
                this.f43475n = s80.f44123o;
                this.f43466e &= -257;
            } else {
                if ((this.f43466e & 256) != 256) {
                    this.f43475n = new ArrayList(this.f43475n);
                    this.f43466e |= 256;
                }
                this.f43475n.addAll(s80.f44123o);
            }
        }
        if (!s80.f44125q.isEmpty()) {
            if (this.f43476o.isEmpty()) {
                this.f43476o = s80.f44125q;
                this.f43466e &= -513;
            } else {
                if ((this.f43466e & 512) != 512) {
                    this.f43476o = new ArrayList(this.f43476o);
                    this.f43466e |= 512;
                }
                this.f43476o.addAll(s80.f44125q);
            }
        }
        if (!s80.f44126r.isEmpty()) {
            if (this.f43477p.isEmpty()) {
                this.f43477p = s80.f44126r;
                this.f43466e &= Half.LOWEST_VALUE;
            } else {
                if ((this.f43466e & 1024) != 1024) {
                    this.f43477p = new ArrayList(this.f43477p);
                    this.f43466e |= 1024;
                }
                this.f43477p.addAll(s80.f44126r);
            }
        }
        if (!s80.f44127s.isEmpty()) {
            if (this.f43478q.isEmpty()) {
                this.f43478q = s80.f44127s;
                this.f43466e &= -2049;
            } else {
                if ((this.f43466e & 2048) != 2048) {
                    this.f43478q = new ArrayList(this.f43478q);
                    this.f43466e |= 2048;
                }
                this.f43478q.addAll(s80.f44127s);
            }
        }
        if (!s80.f44128t.isEmpty()) {
            if (this.f43479r.isEmpty()) {
                this.f43479r = s80.f44128t;
                this.f43466e &= -4097;
            } else {
                if ((this.f43466e & 4096) != 4096) {
                    this.f43479r = new ArrayList(this.f43479r);
                    this.f43466e |= 4096;
                }
                this.f43479r.addAll(s80.f44128t);
            }
        }
        if (!s80.f44129u.isEmpty()) {
            if (this.f43480s.isEmpty()) {
                this.f43480s = s80.f44129u;
                this.f43466e &= -8193;
            } else {
                if ((this.f43466e & 8192) != 8192) {
                    this.f43480s = new ArrayList(this.f43480s);
                    this.f43466e |= 8192;
                }
                this.f43480s.addAll(s80.f44129u);
            }
        }
        if (!s80.f44130v.isEmpty()) {
            if (this.f43481t.isEmpty()) {
                this.f43481t = s80.f44130v;
                this.f43466e &= -16385;
            } else {
                if ((this.f43466e & 16384) != 16384) {
                    this.f43481t = new ArrayList(this.f43481t);
                    this.f43466e |= 16384;
                }
                this.f43481t.addAll(s80.f44130v);
            }
        }
        int i14 = s80.f44112d;
        if ((i14 & 8) == 8) {
            int i15 = s80.f44132x;
            this.f43466e |= 32768;
            this.f43482u = i15;
        }
        if ((i14 & 16) == 16) {
            M90 m902 = s80.f44133y;
            if ((this.f43466e & 65536) == 65536 && (m90 = this.f43483v) != M90.f42196u) {
                this.f43483v = M90.a(m90).a(m902).d();
            } else {
                this.f43483v = m902;
            }
            this.f43466e |= 65536;
        }
        if ((s80.f44112d & 32) == 32) {
            int i16 = s80.f44134z;
            this.f43466e |= 131072;
            this.f43484w = i16;
        }
        if (!s80.f44101A.isEmpty()) {
            if (this.f43485x.isEmpty()) {
                this.f43485x = s80.f44101A;
                this.f43466e &= -262145;
            } else {
                if ((this.f43466e & 262144) != 262144) {
                    this.f43485x = new ArrayList(this.f43485x);
                    this.f43466e |= 262144;
                }
                this.f43485x.addAll(s80.f44101A);
            }
        }
        if (!s80.f44103C.isEmpty()) {
            if (this.f43486y.isEmpty()) {
                this.f43486y = s80.f44103C;
                this.f43466e &= -524289;
            } else {
                if ((this.f43466e & 524288) != 524288) {
                    this.f43486y = new ArrayList(this.f43486y);
                    this.f43466e |= 524288;
                }
                this.f43486y.addAll(s80.f44103C);
            }
        }
        if (!s80.f44104D.isEmpty()) {
            if (this.f43487z.isEmpty()) {
                this.f43487z = s80.f44104D;
                this.f43466e &= -1048577;
            } else {
                if ((this.f43466e & 1048576) != 1048576) {
                    this.f43487z = new ArrayList(this.f43487z);
                    this.f43466e |= 1048576;
                }
                this.f43487z.addAll(s80.f44104D);
            }
        }
        if ((s80.f44112d & 64) == 64) {
            W90 w902 = s80.f44106F;
            if ((this.f43466e & 2097152) == 2097152 && (w90 = this.f43463A) != W90.f45318h) {
                this.f43463A = W90.a(w90).a(w902).c();
            } else {
                this.f43463A = w902;
            }
            this.f43466e |= 2097152;
        }
        if (!s80.f44107G.isEmpty()) {
            if (this.f43464B.isEmpty()) {
                this.f43464B = s80.f44107G;
                this.f43466e &= -4194305;
            } else {
                if ((this.f43466e & 4194304) != 4194304) {
                    this.f43464B = new ArrayList(this.f43464B);
                    this.f43466e |= 4194304;
                }
                this.f43464B.addAll(s80.f44107G);
            }
        }
        if ((s80.f44112d & 128) == 128) {
            C7605ha0 c7605ha02 = s80.f44108H;
            if ((this.f43466e & 8388608) == 8388608 && (c7605ha0 = this.f43465C) != C7605ha0.f48584f) {
                this.f43465C = new C7438ga0().a(c7605ha0).a(c7605ha02).c();
            } else {
                this.f43465C = c7605ha02;
            }
            this.f43466e |= 8388608;
        }
        a((AbstractC6001Ty) s80);
        this.f43766b = this.f43766b.a(s80.f44111c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return S80.f44099K;
    }

    public final S80 c() {
        S80 s80 = new S80(this);
        int i10 = this.f43466e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        s80.f44113e = this.f43467f;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        s80.f44114f = this.f43468g;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        s80.f44115g = this.f43469h;
        if ((i10 & 8) == 8) {
            this.f43470i = Collections.unmodifiableList(this.f43470i);
            this.f43466e &= -9;
        }
        s80.f44116h = this.f43470i;
        if ((this.f43466e & 16) == 16) {
            this.f43471j = Collections.unmodifiableList(this.f43471j);
            this.f43466e &= -17;
        }
        s80.f44117i = this.f43471j;
        if ((this.f43466e & 32) == 32) {
            this.f43472k = Collections.unmodifiableList(this.f43472k);
            this.f43466e &= -33;
        }
        s80.f44118j = this.f43472k;
        if ((this.f43466e & 64) == 64) {
            this.f43473l = Collections.unmodifiableList(this.f43473l);
            this.f43466e &= -65;
        }
        s80.f44120l = this.f43473l;
        if ((this.f43466e & 128) == 128) {
            this.f43474m = Collections.unmodifiableList(this.f43474m);
            this.f43466e &= -129;
        }
        s80.f44122n = this.f43474m;
        if ((this.f43466e & 256) == 256) {
            this.f43475n = Collections.unmodifiableList(this.f43475n);
            this.f43466e &= -257;
        }
        s80.f44123o = this.f43475n;
        if ((this.f43466e & 512) == 512) {
            this.f43476o = Collections.unmodifiableList(this.f43476o);
            this.f43466e &= -513;
        }
        s80.f44125q = this.f43476o;
        if ((this.f43466e & 1024) == 1024) {
            this.f43477p = Collections.unmodifiableList(this.f43477p);
            this.f43466e &= Half.LOWEST_VALUE;
        }
        s80.f44126r = this.f43477p;
        if ((this.f43466e & 2048) == 2048) {
            this.f43478q = Collections.unmodifiableList(this.f43478q);
            this.f43466e &= -2049;
        }
        s80.f44127s = this.f43478q;
        if ((this.f43466e & 4096) == 4096) {
            this.f43479r = Collections.unmodifiableList(this.f43479r);
            this.f43466e &= -4097;
        }
        s80.f44128t = this.f43479r;
        if ((this.f43466e & 8192) == 8192) {
            this.f43480s = Collections.unmodifiableList(this.f43480s);
            this.f43466e &= -8193;
        }
        s80.f44129u = this.f43480s;
        if ((this.f43466e & 16384) == 16384) {
            this.f43481t = Collections.unmodifiableList(this.f43481t);
            this.f43466e &= -16385;
        }
        s80.f44130v = this.f43481t;
        if ((i10 & 32768) == 32768) {
            i11 |= 8;
        }
        s80.f44132x = this.f43482u;
        if ((i10 & 65536) == 65536) {
            i11 |= 16;
        }
        s80.f44133y = this.f43483v;
        if ((i10 & 131072) == 131072) {
            i11 |= 32;
        }
        s80.f44134z = this.f43484w;
        if ((this.f43466e & 262144) == 262144) {
            this.f43485x = Collections.unmodifiableList(this.f43485x);
            this.f43466e &= -262145;
        }
        s80.f44101A = this.f43485x;
        if ((this.f43466e & 524288) == 524288) {
            this.f43486y = Collections.unmodifiableList(this.f43486y);
            this.f43466e &= -524289;
        }
        s80.f44103C = this.f43486y;
        if ((this.f43466e & 1048576) == 1048576) {
            this.f43487z = Collections.unmodifiableList(this.f43487z);
            this.f43466e &= -1048577;
        }
        s80.f44104D = this.f43487z;
        if ((i10 & 2097152) == 2097152) {
            i11 |= 64;
        }
        s80.f44106F = this.f43463A;
        if ((this.f43466e & 4194304) == 4194304) {
            this.f43464B = Collections.unmodifiableList(this.f43464B);
            this.f43466e &= -4194305;
        }
        s80.f44107G = this.f43464B;
        if ((i10 & 8388608) == 8388608) {
            i11 |= 128;
        }
        s80.f44108H = this.f43465C;
        s80.f44112d = i11;
        return s80;
    }

    public final Object clone() {
        return new Q80().a(c());
    }

    @Override
    public final O0 a() {
        S80 c10 = c();
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
        S80 s80 = null;
        try {
            try {
                S80.f44100L.getClass();
                a(new S80(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                S80 s802 = (S80) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    s80 = s802;
                    if (s80 != null) {
                        a(s80);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (s80 != null) {
            }
            throw th;
        }
    }
}
