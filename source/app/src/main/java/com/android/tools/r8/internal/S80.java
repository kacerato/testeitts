package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import w2.C15883c;

public final class S80 extends AbstractC6001Ty {

    public static final S80 f44099K;

    public static final P80 f44100L = new P80();

    public List f44101A;

    public int f44102B;

    public List f44103C;

    public List f44104D;

    public int f44105E;

    public W90 f44106F;

    public List f44107G;

    public C7605ha0 f44108H;

    public byte f44109I;

    public int f44110J;

    public final AbstractC8206l8 f44111c;

    public int f44112d;

    public int f44113e;

    public int f44114f;

    public int f44115g;

    public List f44116h;

    public List f44117i;

    public List f44118j;

    public int f44119k;

    public List f44120l;

    public int f44121m;

    public List f44122n;

    public List f44123o;

    public int f44124p;

    public List f44125q;

    public List f44126r;

    public List f44127s;

    public List f44128t;

    public List f44129u;

    public List f44130v;

    public int f44131w;

    public int f44132x;

    public M90 f44133y;

    public int f44134z;

    static {
        S80 s80 = new S80();
        f44099K = s80;
        s80.f();
    }

    public S80(Q80 q80) {
        super(q80);
        this.f44119k = -1;
        this.f44121m = -1;
        this.f44124p = -1;
        this.f44131w = -1;
        this.f44102B = -1;
        this.f44105E = -1;
        this.f44109I = (byte) -1;
        this.f44110J = -1;
        this.f44111c = q80.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f44112d & 1) == 1) {
            int i10 = this.f44113e;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if (this.f44118j.size() > 0) {
            c5264He.g(18);
            c5264He.g(this.f44119k);
        }
        for (int i11 = 0; i11 < this.f44118j.size(); i11++) {
            c5264He.d(((Integer) this.f44118j.get(i11)).intValue());
        }
        if ((this.f44112d & 2) == 2) {
            int i12 = this.f44114f;
            c5264He.b(3, 0);
            c5264He.d(i12);
        }
        if ((this.f44112d & 4) == 4) {
            int i13 = this.f44115g;
            c5264He.b(4, 0);
            c5264He.d(i13);
        }
        for (int i14 = 0; i14 < this.f44116h.size(); i14++) {
            c5264He.b(5, (O0) this.f44116h.get(i14));
        }
        for (int i15 = 0; i15 < this.f44117i.size(); i15++) {
            c5264He.b(6, (O0) this.f44117i.get(i15));
        }
        if (this.f44120l.size() > 0) {
            c5264He.g(58);
            c5264He.g(this.f44121m);
        }
        for (int i16 = 0; i16 < this.f44120l.size(); i16++) {
            c5264He.d(((Integer) this.f44120l.get(i16)).intValue());
        }
        for (int i17 = 0; i17 < this.f44125q.size(); i17++) {
            c5264He.b(8, (O0) this.f44125q.get(i17));
        }
        for (int i18 = 0; i18 < this.f44126r.size(); i18++) {
            c5264He.b(9, (O0) this.f44126r.get(i18));
        }
        for (int i19 = 0; i19 < this.f44127s.size(); i19++) {
            c5264He.b(10, (O0) this.f44127s.get(i19));
        }
        for (int i20 = 0; i20 < this.f44128t.size(); i20++) {
            c5264He.b(11, (O0) this.f44128t.get(i20));
        }
        for (int i21 = 0; i21 < this.f44129u.size(); i21++) {
            c5264He.b(13, (O0) this.f44129u.get(i21));
        }
        if (this.f44130v.size() > 0) {
            c5264He.g(130);
            c5264He.g(this.f44131w);
        }
        for (int i22 = 0; i22 < this.f44130v.size(); i22++) {
            c5264He.d(((Integer) this.f44130v.get(i22)).intValue());
        }
        if ((this.f44112d & 8) == 8) {
            int i23 = this.f44132x;
            c5264He.b(17, 0);
            c5264He.d(i23);
        }
        if ((this.f44112d & 16) == 16) {
            c5264He.b(18, this.f44133y);
        }
        if ((this.f44112d & 32) == 32) {
            int i24 = this.f44134z;
            c5264He.b(19, 0);
            c5264He.d(i24);
        }
        for (int i25 = 0; i25 < this.f44122n.size(); i25++) {
            c5264He.b(20, (O0) this.f44122n.get(i25));
        }
        if (this.f44123o.size() > 0) {
            c5264He.g(170);
            c5264He.g(this.f44124p);
        }
        for (int i26 = 0; i26 < this.f44123o.size(); i26++) {
            c5264He.d(((Integer) this.f44123o.get(i26)).intValue());
        }
        if (this.f44101A.size() > 0) {
            c5264He.g(178);
            c5264He.g(this.f44102B);
        }
        for (int i27 = 0; i27 < this.f44101A.size(); i27++) {
            c5264He.d(((Integer) this.f44101A.get(i27)).intValue());
        }
        for (int i28 = 0; i28 < this.f44103C.size(); i28++) {
            c5264He.b(23, (O0) this.f44103C.get(i28));
        }
        if (this.f44104D.size() > 0) {
            c5264He.g(194);
            c5264He.g(this.f44105E);
        }
        for (int i29 = 0; i29 < this.f44104D.size(); i29++) {
            c5264He.d(((Integer) this.f44104D.get(i29)).intValue());
        }
        if ((this.f44112d & 64) == 64) {
            c5264He.b(30, this.f44106F);
        }
        for (int i30 = 0; i30 < this.f44107G.size(); i30++) {
            int intValue = ((Integer) this.f44107G.get(i30)).intValue();
            c5264He.b(31, 0);
            c5264He.d(intValue);
        }
        if ((this.f44112d & 128) == 128) {
            c5264He.b(32, this.f44108H);
        }
        c5943Sy.a(19000, c5264He);
        c5264He.a(this.f44111c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new Q80();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new Q80().a(this);
    }

    public final void f() {
        this.f44113e = 6;
        this.f44114f = 0;
        this.f44115g = 0;
        List list = Collections.EMPTY_LIST;
        this.f44116h = list;
        this.f44117i = list;
        this.f44118j = list;
        this.f44120l = list;
        this.f44122n = list;
        this.f44123o = list;
        this.f44125q = list;
        this.f44126r = list;
        this.f44127s = list;
        this.f44128t = list;
        this.f44129u = list;
        this.f44130v = list;
        this.f44132x = 0;
        this.f44133y = M90.f42196u;
        this.f44134z = 0;
        this.f44101A = list;
        this.f44103C = list;
        this.f44104D = list;
        this.f44106F = W90.f45318h;
        this.f44107G = list;
        this.f44108H = C7605ha0.f48584f;
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f44099K;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44109I;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f44112d & 2) != 2) {
            this.f44109I = (byte) 0;
            return false;
        }
        for (int i10 = 0; i10 < this.f44116h.size(); i10++) {
            if (!((T90) this.f44116h.get(i10)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f44117i.size(); i11++) {
            if (!((M90) this.f44117i.get(i11)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i12 = 0; i12 < this.f44122n.size(); i12++) {
            if (!((M90) this.f44122n.get(i12)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i13 = 0; i13 < this.f44125q.size(); i13++) {
            if (!((V80) this.f44125q.get(i13)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i14 = 0; i14 < this.f44126r.size(); i14++) {
            if (!((C8544n90) this.f44126r.get(i14)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i15 = 0; i15 < this.f44127s.size(); i15++) {
            if (!((C9879v90) this.f44127s.get(i15)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i16 = 0; i16 < this.f44128t.size(); i16++) {
            if (!((P90) this.f44128t.get(i16)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        for (int i17 = 0; i17 < this.f44129u.size(); i17++) {
            if (!((C7377g90) this.f44129u.get(i17)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        if ((this.f44112d & 16) == 16 && !this.f44133y.isInitialized()) {
            this.f44109I = (byte) 0;
            return false;
        }
        for (int i18 = 0; i18 < this.f44103C.size(); i18++) {
            if (!((M90) this.f44103C.get(i18)).isInitialized()) {
                this.f44109I = (byte) 0;
                return false;
            }
        }
        if ((this.f44112d & 64) == 64 && !this.f44106F.isInitialized()) {
            this.f44109I = (byte) 0;
            return false;
        }
        if (d()) {
            this.f44109I = (byte) 1;
            return true;
        }
        this.f44109I = (byte) 0;
        return false;
    }

    public S80() {
        this.f44119k = -1;
        this.f44121m = -1;
        this.f44124p = -1;
        this.f44131w = -1;
        this.f44102B = -1;
        this.f44105E = -1;
        this.f44109I = (byte) -1;
        this.f44110J = -1;
        this.f44111c = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x003d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v35 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v43 */
    /* JADX WARN: Type inference failed for: r7v45 */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean] */
    public S80(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f44119k = -1;
        this.f44121m = -1;
        this.f44124p = -1;
        this.f44131w = -1;
        this.f44102B = -1;
        this.f44105E = -1;
        this.f44109I = (byte) -1;
        this.f44110J = -1;
        f();
        C7872j8 d10 = AbstractC8206l8.d();
        C5264He a10 = C5264He.a(d10);
        boolean z10 = false;
        char c10 = 0;
        while (true) {
            ?? r82 = 64;
            if (!z10) {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        switch (i10) {
                            case 0:
                                z10 = true;
                            case 8:
                                this.f44112d |= 1;
                                this.f44113e = c4858Ae.c();
                            case 16:
                                int i11 = (c10 == true ? 1 : 0) & 32;
                                c10 = c10;
                                if (i11 != 32) {
                                    this.f44118j = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                }
                                this.f44118j.add(Integer.valueOf(c4858Ae.c()));
                            case 18:
                                int b10 = c4858Ae.b(c4858Ae.f());
                                int i12 = (c10 == true ? 1 : 0) & 32;
                                c10 = c10;
                                if (i12 != 32) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44118j = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44118j.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b10);
                            case 24:
                                this.f44112d |= 2;
                                this.f44114f = c4858Ae.c();
                            case 32:
                                this.f44112d |= 4;
                                this.f44115g = c4858Ae.c();
                            case 42:
                                int i13 = (c10 == true ? 1 : 0) & 8;
                                c10 = c10;
                                if (i13 != 8) {
                                    this.f44116h = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\b';
                                }
                                this.f44116h.add(c4858Ae.a(T90.f44401o, c10503yv));
                            case 50:
                                int i14 = (c10 == true ? 1 : 0) & 16;
                                c10 = c10;
                                if (i14 != 16) {
                                    this.f44117i = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 16;
                                }
                                this.f44117i.add(c4858Ae.a(M90.f42197v, c10503yv));
                            case 56:
                                int i15 = (c10 == true ? 1 : 0) & 64;
                                c10 = c10;
                                if (i15 != 64) {
                                    this.f44120l = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '@';
                                }
                                this.f44120l.add(Integer.valueOf(c4858Ae.c()));
                            case 58:
                                int b11 = c4858Ae.b(c4858Ae.f());
                                int i16 = (c10 == true ? 1 : 0) & 64;
                                c10 = c10;
                                if (i16 != 64) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44120l = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '@';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44120l.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b11);
                            case 66:
                                int i17 = (c10 == true ? 1 : 0) & 512;
                                c10 = c10;
                                if (i17 != 512) {
                                    this.f44125q = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0200';
                                }
                                this.f44125q.add(c4858Ae.a(V80.f44974k, c10503yv));
                            case 74:
                                int i18 = (c10 == true ? 1 : 0) & 1024;
                                c10 = c10;
                                if (i18 != 1024) {
                                    this.f44126r = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0400';
                                }
                                this.f44126r.add(c4858Ae.a(C8544n90.f50523w, c10503yv));
                            case 82:
                                int i19 = (c10 == true ? 1 : 0) & 2048;
                                c10 = c10;
                                if (i19 != 2048) {
                                    this.f44127s = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0800';
                                }
                                this.f44127s.add(c4858Ae.a(C9879v90.f53026w, c10503yv));
                            case 90:
                                int i20 = (c10 == true ? 1 : 0) & 4096;
                                c10 = c10;
                                if (i20 != 4096) {
                                    this.f44128t = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u1000';
                                }
                                this.f44128t.add(c4858Ae.a(P90.f43136q, c10503yv));
                            case 106:
                                int i21 = (c10 == true ? 1 : 0) & 8192;
                                c10 = c10;
                                if (i21 != 8192) {
                                    this.f44129u = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u2000';
                                }
                                this.f44129u.add(c4858Ae.a(C7377g90.f48197i, c10503yv));
                            case 128:
                                int i22 = (c10 == true ? 1 : 0) & 16384;
                                c10 = c10;
                                if (i22 != 16384) {
                                    this.f44130v = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u4000';
                                }
                                this.f44130v.add(Integer.valueOf(c4858Ae.c()));
                            case 130:
                                int b12 = c4858Ae.b(c4858Ae.f());
                                int i23 = (c10 == true ? 1 : 0) & 16384;
                                c10 = c10;
                                if (i23 != 16384) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44130v = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '\u4000';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44130v.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b12);
                            case 136:
                                this.f44112d |= 8;
                                this.f44132x = c4858Ae.c();
                            case 146:
                                L90 c11 = (this.f44112d & 16) == 16 ? this.f44133y.c() : null;
                                M90 m90 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f44133y = m90;
                                if (c11 != null) {
                                    c11.a(m90);
                                    this.f44133y = c11.d();
                                }
                                this.f44112d |= 16;
                            case 152:
                                this.f44112d |= 32;
                                this.f44134z = c4858Ae.c();
                            case 162:
                                int i24 = (c10 == true ? 1 : 0) & 128;
                                c10 = c10;
                                if (i24 != 128) {
                                    this.f44122n = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0080';
                                }
                                this.f44122n.add(c4858Ae.a(M90.f42197v, c10503yv));
                            case 168:
                                int i25 = (c10 == true ? 1 : 0) & 256;
                                c10 = c10;
                                if (i25 != 256) {
                                    this.f44123o = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0100';
                                }
                                this.f44123o.add(Integer.valueOf(c4858Ae.c()));
                            case 170:
                                int b13 = c4858Ae.b(c4858Ae.f());
                                int i26 = (c10 == true ? 1 : 0) & 256;
                                c10 = c10;
                                if (i26 != 256) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44123o = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '\u0100';
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44123o.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b13);
                            case 176:
                                int i27 = (c10 == true ? 1 : 0) & 262144;
                                c10 = c10;
                                if (i27 != 262144) {
                                    this.f44101A = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 0;
                                }
                                this.f44101A.add(Integer.valueOf(c4858Ae.c()));
                            case 178:
                                int b14 = c4858Ae.b(c4858Ae.f());
                                int i28 = (c10 == true ? 1 : 0) & 262144;
                                c10 = c10;
                                if (i28 != 262144) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44101A = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | 0;
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44101A.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b14);
                            case 186:
                                int i29 = (c10 == true ? 1 : 0) & 524288;
                                c10 = c10;
                                if (i29 != 524288) {
                                    this.f44103C = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 0;
                                }
                                this.f44103C.add(c4858Ae.a(M90.f42197v, c10503yv));
                            case 192:
                                int i30 = (c10 == true ? 1 : 0) & 1048576;
                                c10 = c10;
                                if (i30 != 1048576) {
                                    this.f44104D = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 0;
                                }
                                this.f44104D.add(Integer.valueOf(c4858Ae.c()));
                            case 194:
                                int b15 = c4858Ae.b(c4858Ae.f());
                                int i31 = (c10 == true ? 1 : 0) & 1048576;
                                c10 = c10;
                                if (i31 != 1048576) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44104D = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | 0;
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44104D.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b15);
                            case 242:
                                V90 d11 = (this.f44112d & 64) == 64 ? this.f44106F.d() : null;
                                W90 w90 = (W90) c4858Ae.a(W90.f45319i, c10503yv);
                                this.f44106F = w90;
                                if (d11 != null) {
                                    d11.a(w90);
                                    this.f44106F = d11.c();
                                }
                                this.f44112d |= 64;
                            case 248:
                                int i32 = (c10 == true ? 1 : 0) & 4194304;
                                c10 = c10;
                                if (i32 != 4194304) {
                                    this.f44107G = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 0;
                                }
                                this.f44107G.add(Integer.valueOf(c4858Ae.c()));
                            case 250:
                                int b16 = c4858Ae.b(c4858Ae.f());
                                int i33 = (c10 == true ? 1 : 0) & 4194304;
                                c10 = c10;
                                if (i33 != 4194304) {
                                    c10 = c10;
                                    if (c4858Ae.a() > 0) {
                                        this.f44107G = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | 0;
                                    }
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44107G.add(Integer.valueOf(c4858Ae.c()));
                                }
                                c4858Ae.a(b16);
                            case 258:
                                C7438ga0 d12 = (this.f44112d & 128) == 128 ? this.f44108H.d() : null;
                                C7605ha0 c7605ha0 = (C7605ha0) c4858Ae.a(C7605ha0.f48585g, c10503yv);
                                this.f44108H = c7605ha0;
                                if (d12 != null) {
                                    d12.a(c7605ha0);
                                    this.f44108H = d12.c();
                                }
                                this.f44112d |= 128;
                            default:
                                r82 = a(c4858Ae, a10, c10503yv, i10);
                                if (r82 == 0) {
                                    z10 = true;
                                }
                        }
                    } catch (LJ e10) {
                        e10.f41938b = this;
                        throw e10;
                    } catch (IOException e11) {
                        LJ lj2 = new LJ(e11.getMessage());
                        lj2.f41938b = this;
                        throw lj2;
                    }
                } catch (Throwable th2) {
                    if (((c10 == true ? 1 : 0) & 32) == 32) {
                        this.f44118j = Collections.unmodifiableList(this.f44118j);
                    }
                    if (((c10 == true ? 1 : 0) & 8) == 8) {
                        this.f44116h = Collections.unmodifiableList(this.f44116h);
                    }
                    if (((c10 == true ? 1 : 0) & 16) == 16) {
                        this.f44117i = Collections.unmodifiableList(this.f44117i);
                    }
                    if (((c10 == true ? 1 : 0) & 64) == r82) {
                        this.f44120l = Collections.unmodifiableList(this.f44120l);
                    }
                    if (((c10 == true ? 1 : 0) & 512) == 512) {
                        this.f44125q = Collections.unmodifiableList(this.f44125q);
                    }
                    if (((c10 == true ? 1 : 0) & 1024) == 1024) {
                        this.f44126r = Collections.unmodifiableList(this.f44126r);
                    }
                    if (((c10 == true ? 1 : 0) & 2048) == 2048) {
                        this.f44127s = Collections.unmodifiableList(this.f44127s);
                    }
                    if (((c10 == true ? 1 : 0) & 4096) == 4096) {
                        this.f44128t = Collections.unmodifiableList(this.f44128t);
                    }
                    if (((c10 == true ? 1 : 0) & 8192) == 8192) {
                        this.f44129u = Collections.unmodifiableList(this.f44129u);
                    }
                    if (((c10 == true ? 1 : 0) & 16384) == 16384) {
                        this.f44130v = Collections.unmodifiableList(this.f44130v);
                    }
                    if (((c10 == true ? 1 : 0) & 128) == 128) {
                        this.f44122n = Collections.unmodifiableList(this.f44122n);
                    }
                    if (((c10 == true ? 1 : 0) & 256) == 256) {
                        this.f44123o = Collections.unmodifiableList(this.f44123o);
                    }
                    if (((c10 == true ? 1 : 0) & 262144) == 262144) {
                        this.f44101A = Collections.unmodifiableList(this.f44101A);
                    }
                    if (((c10 == true ? 1 : 0) & 524288) == 524288) {
                        this.f44103C = Collections.unmodifiableList(this.f44103C);
                    }
                    if (((c10 == true ? 1 : 0) & 1048576) == 1048576) {
                        this.f44104D = Collections.unmodifiableList(this.f44104D);
                    }
                    if (((c10 == true ? 1 : 0) & 4194304) == 4194304) {
                        this.f44107G = Collections.unmodifiableList(this.f44107G);
                    }
                    try {
                        if (a10.f40814d != null) {
                            a10.a();
                        }
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f44111c = d10.c();
                        throw th3;
                    }
                    this.f44111c = d10.c();
                    this.f44631b.a();
                    throw th2;
                }
            } else {
                if (((c10 == true ? 1 : 0) & 32) == 32) {
                    this.f44118j = Collections.unmodifiableList(this.f44118j);
                }
                if (((c10 == true ? 1 : 0) & 8) == 8) {
                    this.f44116h = Collections.unmodifiableList(this.f44116h);
                }
                if (((c10 == true ? 1 : 0) & 16) == 16) {
                    this.f44117i = Collections.unmodifiableList(this.f44117i);
                }
                if (((c10 == true ? 1 : 0) & 64) == 64) {
                    this.f44120l = Collections.unmodifiableList(this.f44120l);
                }
                if (((c10 == true ? 1 : 0) & 512) == 512) {
                    this.f44125q = Collections.unmodifiableList(this.f44125q);
                }
                if (((c10 == true ? 1 : 0) & 1024) == 1024) {
                    this.f44126r = Collections.unmodifiableList(this.f44126r);
                }
                if (((c10 == true ? 1 : 0) & 2048) == 2048) {
                    this.f44127s = Collections.unmodifiableList(this.f44127s);
                }
                if (((c10 == true ? 1 : 0) & 4096) == 4096) {
                    this.f44128t = Collections.unmodifiableList(this.f44128t);
                }
                if (((c10 == true ? 1 : 0) & 8192) == 8192) {
                    this.f44129u = Collections.unmodifiableList(this.f44129u);
                }
                if (((c10 == true ? 1 : 0) & 16384) == 16384) {
                    this.f44130v = Collections.unmodifiableList(this.f44130v);
                }
                if (((c10 == true ? 1 : 0) & 128) == 128) {
                    this.f44122n = Collections.unmodifiableList(this.f44122n);
                }
                if (((c10 == true ? 1 : 0) & 256) == 256) {
                    this.f44123o = Collections.unmodifiableList(this.f44123o);
                }
                if (((c10 == true ? 1 : 0) & 262144) == 262144) {
                    this.f44101A = Collections.unmodifiableList(this.f44101A);
                }
                if (((c10 == true ? 1 : 0) & 524288) == 524288) {
                    this.f44103C = Collections.unmodifiableList(this.f44103C);
                }
                if (((c10 == true ? 1 : 0) & 1048576) == 1048576) {
                    this.f44104D = Collections.unmodifiableList(this.f44104D);
                }
                if (((c10 == true ? 1 : 0) & 4194304) == 4194304) {
                    this.f44107G = Collections.unmodifiableList(this.f44107G);
                }
                try {
                    if (a10.f40814d != null) {
                        a10.a();
                    }
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f44111c = d10.c();
                    throw th4;
                }
                this.f44111c = d10.c();
                this.f44631b.a();
                return;
            }
        }
    }

    @Override
    public final int a() {
        int i10 = this.f44110J;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f44112d & 1) == 1 ? C5264He.a(1, this.f44113e) : 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = 10;
            if (i11 >= this.f44118j.size()) {
                break;
            }
            int intValue = ((Integer) this.f44118j.get(i11)).intValue();
            if (intValue >= 0) {
                i13 = C5264He.b(intValue);
            }
            i12 += i13;
            i11++;
        }
        int i14 = a10 + i12;
        if (!this.f44118j.isEmpty()) {
            i14 = i14 + 1 + (i12 >= 0 ? C5264He.b(i12) : 10);
        }
        this.f44119k = i12;
        if ((this.f44112d & 2) == 2) {
            i14 += C5264He.a(3, this.f44114f);
        }
        if ((this.f44112d & 4) == 4) {
            i14 += C5264He.a(4, this.f44115g);
        }
        for (int i15 = 0; i15 < this.f44116h.size(); i15++) {
            i14 += C5264He.a(5, (O0) this.f44116h.get(i15));
        }
        for (int i16 = 0; i16 < this.f44117i.size(); i16++) {
            i14 += C5264He.a(6, (O0) this.f44117i.get(i16));
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.f44120l.size(); i18++) {
            int intValue2 = ((Integer) this.f44120l.get(i18)).intValue();
            i17 += intValue2 >= 0 ? C5264He.b(intValue2) : 10;
        }
        int i19 = i14 + i17;
        if (!this.f44120l.isEmpty()) {
            i19 = i19 + 1 + (i17 >= 0 ? C5264He.b(i17) : 10);
        }
        this.f44121m = i17;
        for (int i20 = 0; i20 < this.f44125q.size(); i20++) {
            i19 += C5264He.a(8, (O0) this.f44125q.get(i20));
        }
        for (int i21 = 0; i21 < this.f44126r.size(); i21++) {
            i19 += C5264He.a(9, (O0) this.f44126r.get(i21));
        }
        for (int i22 = 0; i22 < this.f44127s.size(); i22++) {
            i19 += C5264He.a(10, (O0) this.f44127s.get(i22));
        }
        for (int i23 = 0; i23 < this.f44128t.size(); i23++) {
            i19 += C5264He.a(11, (O0) this.f44128t.get(i23));
        }
        for (int i24 = 0; i24 < this.f44129u.size(); i24++) {
            i19 += C5264He.a(13, (O0) this.f44129u.get(i24));
        }
        int i25 = 0;
        for (int i26 = 0; i26 < this.f44130v.size(); i26++) {
            int intValue3 = ((Integer) this.f44130v.get(i26)).intValue();
            i25 += intValue3 >= 0 ? C5264He.b(intValue3) : 10;
        }
        int i27 = i19 + i25;
        if (!this.f44130v.isEmpty()) {
            i27 = i27 + 2 + (i25 >= 0 ? C5264He.b(i25) : 10);
        }
        this.f44131w = i25;
        if ((this.f44112d & 8) == 8) {
            i27 += C5264He.a(17, this.f44132x);
        }
        if ((this.f44112d & 16) == 16) {
            i27 += C5264He.a(18, this.f44133y);
        }
        if ((this.f44112d & 32) == 32) {
            i27 += C5264He.a(19, this.f44134z);
        }
        for (int i28 = 0; i28 < this.f44122n.size(); i28++) {
            i27 += C5264He.a(20, (O0) this.f44122n.get(i28));
        }
        int i29 = 0;
        for (int i30 = 0; i30 < this.f44123o.size(); i30++) {
            int intValue4 = ((Integer) this.f44123o.get(i30)).intValue();
            i29 += intValue4 >= 0 ? C5264He.b(intValue4) : 10;
        }
        int i31 = i27 + i29;
        if (!this.f44123o.isEmpty()) {
            i31 = i31 + 2 + (i29 >= 0 ? C5264He.b(i29) : 10);
        }
        this.f44124p = i29;
        int i32 = 0;
        for (int i33 = 0; i33 < this.f44101A.size(); i33++) {
            int intValue5 = ((Integer) this.f44101A.get(i33)).intValue();
            i32 += intValue5 >= 0 ? C5264He.b(intValue5) : 10;
        }
        int i34 = i31 + i32;
        if (!this.f44101A.isEmpty()) {
            i34 = i34 + 2 + (i32 >= 0 ? C5264He.b(i32) : 10);
        }
        this.f44102B = i32;
        for (int i35 = 0; i35 < this.f44103C.size(); i35++) {
            i34 += C5264He.a(23, (O0) this.f44103C.get(i35));
        }
        int i36 = 0;
        for (int i37 = 0; i37 < this.f44104D.size(); i37++) {
            int intValue6 = ((Integer) this.f44104D.get(i37)).intValue();
            i36 += intValue6 >= 0 ? C5264He.b(intValue6) : 10;
        }
        int i38 = i34 + i36;
        if (!this.f44104D.isEmpty()) {
            i38 = i38 + 2 + (i36 >= 0 ? C5264He.b(i36) : 10);
        }
        this.f44105E = i36;
        if ((this.f44112d & 64) == 64) {
            i38 += C5264He.a(30, this.f44106F);
        }
        int i39 = 0;
        for (int i40 = 0; i40 < this.f44107G.size(); i40++) {
            int intValue7 = ((Integer) this.f44107G.get(i40)).intValue();
            i39 += intValue7 >= 0 ? C5264He.b(intValue7) : 10;
        }
        int size = (this.f44107G.size() * 2) + i38 + i39;
        if ((this.f44112d & 128) == 128) {
            size += C5264He.a(32, this.f44108H);
        }
        int size2 = this.f44111c.size() + e() + size;
        this.f44110J = size2;
        return size2;
    }
}
