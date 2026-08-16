package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;

public final class C4990Cl extends AbstractC5801Ql {

    public final C7634hk f39339b;

    public final String f39340c;

    public final C5743Pl f39341d;

    public final C4990Cl[] f39342e;

    public final C5280Hl[] f39343f;

    public final C5685Ol[] f39344g;

    public final C5685Ol[] f39345h;

    public final C5685Ol[] f39346i;

    public final C5917Sl[] f39347j;

    public final int[] f39348k;

    public final int[] f39349l;

    public C4990Cl(String str) {
        String str2;
        String str3;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            str3 = str.substring(lastIndexOf + 1);
            str2 = str.substring(0, lastIndexOf);
        } else {
            str2 = "";
            str3 = str;
        }
        C6467ak builder = C7634hk.f48689n.toBuilder();
        str3.getClass();
        builder.f46596b |= 1;
        builder.f46597c = str3;
        builder.onChanged();
        C6800ck builder2 = C6967dk.f47484g.toBuilder();
        builder2.f47145b |= 1;
        builder2.f47146c = 1;
        builder2.onChanged();
        builder2.f47145b |= 2;
        builder2.f47147d = 536870912;
        builder2.onChanged();
        C6967dk m1181buildPartial = builder2.m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            C4862Af0 c4862Af0 = builder.f46607m;
            if (c4862Af0 == null) {
                if ((builder.f46596b & 32) == 0) {
                    builder.f46606l = new ArrayList(builder.f46606l);
                    builder.f46596b |= 32;
                }
                builder.f46606l.add(m1181buildPartial);
                builder.onChanged();
            } else {
                c4862Af0.a((K0) m1181buildPartial);
            }
            C7634hk m1181buildPartial2 = builder.m1181buildPartial();
            if (m1181buildPartial2.isInitialized()) {
                this.f39339b = m1181buildPartial2;
                this.f39340c = str;
                this.f39342e = AbstractC6033Ul.f44857c;
                this.f39343f = AbstractC6033Ul.f44859e;
                C5685Ol[] c5685OlArr = AbstractC6033Ul.f44858d;
                this.f39344g = c5685OlArr;
                this.f39345h = c5685OlArr;
                this.f39346i = c5685OlArr;
                this.f39347j = AbstractC6033Ul.f44861g;
                this.f39341d = new C5743Pl(str2, this);
                this.f39348k = new int[]{1};
                this.f39349l = new int[]{536870912};
                return;
            }
            throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial2);
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final C5743Pl a() {
        return this.f39341d;
    }

    @Override
    public final String b() {
        return this.f39340c;
    }

    @Override
    public final String c() {
        return this.f39339b.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f39339b;
    }

    public final void e() {
        for (C4990Cl c4990Cl : this.f39342e) {
            c4990Cl.e();
        }
        for (C5685Ol c5685Ol : this.f39344g) {
            C5685Ol.a(c5685Ol);
        }
        Arrays.sort(this.f39345h);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            C5685Ol[] c5685OlArr = this.f39345h;
            if (i11 >= c5685OlArr.length) {
                for (C5685Ol c5685Ol2 : this.f39346i) {
                    C5685Ol.a(c5685Ol2);
                }
                return;
            }
            C5685Ol c5685Ol3 = c5685OlArr[i10];
            C5685Ol c5685Ol4 = c5685OlArr[i11];
            if (c5685Ol3.f43017c.f39995d == c5685Ol4.f43017c.f39995d) {
                throw new C5164Fl(c5685Ol4, "Field number " + c5685Ol4.f43017c.f39995d + " has already been used in \"" + c5685Ol4.f43023i.f39340c + "\" by field \"" + c5685Ol3.f43017c.getName() + "\".");
            }
            i10 = i11;
        }
    }

    public final C5973Tk f() {
        C5973Tk c5973Tk = this.f39339b.f48699j;
        return c5973Tk == null ? C5973Tk.f44563j : c5973Tk;
    }

    public C4990Cl(C7634hk c7634hk, C5743Pl c5743Pl, C4990Cl c4990Cl) {
        C5917Sl[] c5917SlArr;
        C4990Cl[] c4990ClArr;
        C5280Hl[] c5280HlArr;
        C5685Ol[] c5685OlArr;
        C5685Ol[] c5685OlArr2;
        C5685Ol[] c5685OlArr3;
        this.f39339b = c7634hk;
        this.f39340c = AbstractC6033Ul.a(c5743Pl, c4990Cl, c7634hk.getName());
        this.f39341d = c5743Pl;
        if (c7634hk.f48698i.size() > 0) {
            c5917SlArr = new C5917Sl[c7634hk.f48698i.size()];
        } else {
            c5917SlArr = AbstractC6033Ul.f44861g;
        }
        this.f39347j = c5917SlArr;
        int i10 = 0;
        for (int i11 = 0; i11 < c7634hk.f48698i.size(); i11++) {
            this.f39347j[i11] = new C5917Sl((C6970dl) c7634hk.f48698i.get(i11), c5743Pl, this, i11);
        }
        if (c7634hk.f48695f.size() > 0) {
            c4990ClArr = new C4990Cl[c7634hk.f48695f.size()];
        } else {
            c4990ClArr = AbstractC6033Ul.f44857c;
        }
        this.f39342e = c4990ClArr;
        for (int i12 = 0; i12 < c7634hk.f48695f.size(); i12++) {
            this.f39342e[i12] = new C4990Cl((C7634hk) c7634hk.f48695f.get(i12), c5743Pl, this);
        }
        if (c7634hk.f48696g.size() > 0) {
            c5280HlArr = new C5280Hl[c7634hk.f48696g.size()];
        } else {
            c5280HlArr = AbstractC6033Ul.f44859e;
        }
        this.f39343f = c5280HlArr;
        for (int i13 = 0; i13 < c7634hk.f48696g.size(); i13++) {
            this.f39343f[i13] = new C5280Hl((C8634nk) c7634hk.f48696g.get(i13), c5743Pl, this);
        }
        if (c7634hk.f48693d.size() > 0) {
            c5685OlArr = new C5685Ol[c7634hk.f48693d.size()];
        } else {
            c5685OlArr = AbstractC6033Ul.f44858d;
        }
        this.f39344g = c5685OlArr;
        for (int i14 = 0; i14 < c7634hk.f48693d.size(); i14++) {
            this.f39344g[i14] = new C5685Ol((C5104Ek) c7634hk.f48693d.get(i14), c5743Pl, this, i14, false);
        }
        if (c7634hk.f48693d.size() > 0) {
            c5685OlArr2 = (C5685Ol[]) this.f39344g.clone();
        } else {
            c5685OlArr2 = AbstractC6033Ul.f44858d;
        }
        this.f39345h = c5685OlArr2;
        if (c7634hk.f48694e.size() > 0) {
            c5685OlArr3 = new C5685Ol[c7634hk.f48694e.size()];
        } else {
            c5685OlArr3 = AbstractC6033Ul.f44858d;
        }
        this.f39346i = c5685OlArr3;
        for (int i15 = 0; i15 < c7634hk.f48694e.size(); i15++) {
            this.f39346i[i15] = new C5685Ol((C5104Ek) c7634hk.f48694e.get(i15), c5743Pl, this, i15, true);
        }
        for (int i16 = 0; i16 < c7634hk.f48698i.size(); i16++) {
            C5917Sl c5917Sl = this.f39347j[i16];
            c5917Sl.f44308h = new C5685Ol[c5917Sl.f44307g];
            c5917Sl.f44307g = 0;
        }
        for (int i17 = 0; i17 < c7634hk.f48693d.size(); i17++) {
            C5685Ol c5685Ol = this.f39344g[i17];
            C5917Sl c5917Sl2 = c5685Ol.f43025k;
            if (c5917Sl2 != null) {
                C5685Ol[] c5685OlArr4 = c5917Sl2.f44308h;
                int i18 = c5917Sl2.f44307g;
                c5917Sl2.f44307g = i18 + 1;
                c5685OlArr4[i18] = c5685Ol;
            }
        }
        int i19 = 0;
        for (C5917Sl c5917Sl3 : this.f39347j) {
            C5685Ol[] c5685OlArr5 = c5917Sl3.f44308h;
            if (c5685OlArr5.length == 1 && c5685OlArr5[0].f43021g) {
                i19++;
            } else if (i19 > 0) {
                throw new C5164Fl(this, "Synthetic oneofs must come last.");
            }
        }
        int length = this.f39347j.length;
        c5743Pl.f43363h.a(this);
        if (c7634hk.f48697h.size() > 0) {
            this.f39348k = new int[c7634hk.f48697h.size()];
            this.f39349l = new int[c7634hk.f48697h.size()];
            for (C6967dk c6967dk : c7634hk.f48697h) {
                this.f39348k[i10] = c6967dk.f47487c;
                this.f39349l[i10] = c6967dk.f47488d;
                i10++;
            }
            Arrays.sort(this.f39348k);
            Arrays.sort(this.f39349l);
            return;
        }
        int[] iArr = AbstractC6033Ul.f44856b;
        this.f39348k = iArr;
        this.f39349l = iArr;
    }
}
