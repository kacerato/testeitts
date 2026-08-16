package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C5743Pl extends AbstractC5801Ql {

    public final C5567Mk f43357b;

    public final C4990Cl[] f43358c;

    public final C5280Hl[] f43359d;

    public final C5975Tl[] f43360e;

    public final C5685Ol[] f43361f;

    public final C5743Pl[] f43362g;

    public final C5106El f43363h;

    public C5743Pl(C5567Mk c5567Mk, C5743Pl[] c5743PlArr, C5106El c5106El) {
        C4990Cl[] c4990ClArr;
        C5280Hl[] c5280HlArr;
        C5975Tl[] c5975TlArr;
        C5685Ol[] c5685OlArr;
        this.f43363h = c5106El;
        this.f43357b = c5567Mk;
        HashMap hashMap = new HashMap();
        for (C5743Pl c5743Pl : c5743PlArr) {
            hashMap.put(c5743Pl.f43357b.getName(), c5743Pl);
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            DH dh2 = (DH) c5567Mk.f42366f;
            if (i10 < dh2.f39486d) {
                dh2.k(i10);
                int i11 = dh2.f39485c[i10];
                if (i11 < 0 || i11 >= c5567Mk.f42365e.size()) {
                    break;
                }
                C5743Pl c5743Pl2 = (C5743Pl) hashMap.get((String) c5567Mk.f42365e.get(i11));
                if (c5743Pl2 != null) {
                    arrayList.add(c5743Pl2);
                }
                i10++;
            } else {
                C5743Pl[] c5743PlArr2 = new C5743Pl[arrayList.size()];
                this.f43362g = c5743PlArr2;
                arrayList.toArray(c5743PlArr2);
                c5106El.a(this, this.f43357b.a());
                if (c5567Mk.f42368h.size() > 0) {
                    c4990ClArr = new C4990Cl[c5567Mk.f42368h.size()];
                } else {
                    c4990ClArr = AbstractC6033Ul.f44857c;
                }
                this.f43358c = c4990ClArr;
                for (int i12 = 0; i12 < c5567Mk.f42368h.size(); i12++) {
                    this.f43358c[i12] = new C4990Cl((C7634hk) c5567Mk.f42368h.get(i12), this, null);
                }
                if (c5567Mk.f42369i.size() > 0) {
                    c5280HlArr = new C5280Hl[c5567Mk.f42369i.size()];
                } else {
                    c5280HlArr = AbstractC6033Ul.f44859e;
                }
                this.f43359d = c5280HlArr;
                for (int i13 = 0; i13 < c5567Mk.f42369i.size(); i13++) {
                    this.f43359d[i13] = new C5280Hl((C8634nk) c5567Mk.f42369i.get(i13), this, null);
                }
                if (c5567Mk.f42370j.size() > 0) {
                    c5975TlArr = new C5975Tl[c5567Mk.f42370j.size()];
                } else {
                    c5975TlArr = AbstractC6033Ul.f44860f;
                }
                this.f43360e = c5975TlArr;
                for (int i14 = 0; i14 < c5567Mk.f42370j.size(); i14++) {
                    this.f43360e[i14] = new C5975Tl((C7969jl) c5567Mk.f42370j.get(i14), this);
                }
                if (c5567Mk.f42371k.size() > 0) {
                    c5685OlArr = new C5685Ol[c5567Mk.f42371k.size()];
                } else {
                    c5685OlArr = AbstractC6033Ul.f44858d;
                }
                this.f43361f = c5685OlArr;
                for (int i15 = 0; i15 < c5567Mk.f42371k.size(); i15++) {
                    this.f43361f[i15] = new C5685Ol((C5104Ek) c5567Mk.f42371k.get(i15), this, null, i15, true);
                }
                return;
            }
        }
        throw new C5164Fl(this, "Invalid public dependency index.");
    }

    @Override
    public final C5743Pl a() {
        return this;
    }

    @Override
    public final String b() {
        return this.f43357b.getName();
    }

    @Override
    public final String c() {
        return this.f43357b.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f43357b;
    }

    public final int e() {
        String str;
        C5567Mk c5567Mk = this.f43357b;
        Serializable serializable = c5567Mk.f42374n;
        if (serializable instanceof String) {
            str = (String) serializable;
        } else {
            AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
            String c10 = abstractC8373m8.c();
            if (abstractC8373m8.a()) {
                c5567Mk.f42374n = c10;
            }
            str = c10;
        }
        return "proto3".equals(str) ? 3 : 2;
    }

    public static C5743Pl a(C5567Mk c5567Mk, C5743Pl[] c5743PlArr) {
        C5743Pl c5743Pl = new C5743Pl(c5567Mk, c5743PlArr, new C5106El(c5743PlArr));
        for (C4990Cl c4990Cl : c5743Pl.f43358c) {
            c4990Cl.e();
        }
        for (C5975Tl c5975Tl : c5743Pl.f43360e) {
            for (C5859Rl c5859Rl : c5975Tl.f44577e) {
                if (c5859Rl.f43985d.f43363h.a(c5859Rl, c5859Rl.f43983b.a()) instanceof C4990Cl) {
                    if (!(c5859Rl.f43985d.f43363h.a(c5859Rl, c5859Rl.f43983b.b()) instanceof C4990Cl)) {
                        throw new C5164Fl(c5859Rl, JavadocConstants.ANCHOR_PREFIX_END + c5859Rl.f43983b.b() + "\" is not a message type.");
                    }
                } else {
                    throw new C5164Fl(c5859Rl, JavadocConstants.ANCHOR_PREFIX_END + c5859Rl.f43983b.a() + "\" is not a message type.");
                }
            }
        }
        for (C5685Ol c5685Ol : c5743Pl.f43361f) {
            C5685Ol.a(c5685Ol);
        }
        return c5743Pl;
    }

    public static C5743Pl a(String[] strArr, C5743Pl[] c5743PlArr) {
        byte[] bytes;
        if (strArr.length == 1) {
            bytes = strArr[0].getBytes(YI.f45966c);
        } else {
            StringBuilder sb2 = new StringBuilder();
            for (String str : strArr) {
                sb2.append(str);
            }
            bytes = sb2.toString().getBytes(YI.f45966c);
        }
        try {
            C5567Mk c5567Mk = (C5567Mk) C5567Mk.f42361q.parseFrom(bytes);
            try {
                return a(c5567Mk, c5743PlArr);
            } catch (C5164Fl e10) {
                throw new IllegalArgumentException("Invalid embedded descriptor for \"" + c5567Mk.getName() + "\".", e10);
            }
        } catch (MJ e11) {
            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e11);
        }
    }

    public C5743Pl(String str, C4990Cl c4990Cl) {
        C5106El c5106El = new C5106El(new C5743Pl[0]);
        this.f43363h = c5106El;
        C5510Lk builder = C5567Mk.f42360p.toBuilder();
        String str2 = c4990Cl.f39340c + ".placeholder.proto";
        str2.getClass();
        builder.f42057b |= 1;
        builder.f42058c = str2;
        builder.onChanged();
        str.getClass();
        builder.f42057b |= 2;
        builder.f42059d = str;
        builder.onChanged();
        C7634hk c7634hk = c4990Cl.f39339b;
        C4862Af0 c4862Af0 = builder.f42064i;
        if (c4862Af0 == null) {
            c7634hk.getClass();
            if ((builder.f42057b & 32) == 0) {
                builder.f42063h = new ArrayList(builder.f42063h);
                builder.f42057b |= 32;
            }
            builder.f42063h.add(c7634hk);
            builder.onChanged();
        } else {
            c4862Af0.a((K0) c7634hk);
        }
        C5567Mk m1181buildPartial = builder.m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            this.f43357b = m1181buildPartial;
            this.f43362g = new C5743Pl[0];
            this.f43358c = new C4990Cl[]{c4990Cl};
            this.f43359d = AbstractC6033Ul.f44859e;
            this.f43360e = AbstractC6033Ul.f44860f;
            this.f43361f = AbstractC6033Ul.f44858d;
            c5106El.a(this, str);
            c5106El.a(c4990Cl);
            return;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }
}
