package com.android.tools.r8.graph;

import com.android.tools.r8.C10895l2;
import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC6055Uw;
import com.android.tools.r8.internal.AbstractC7449ge;
import com.android.tools.r8.internal.AbstractC7611hc0;
import com.android.tools.r8.internal.AbstractC9247rO;
import com.android.tools.r8.internal.B50;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C50;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9666tu0;
import com.android.tools.r8.internal.DX;
import com.android.tools.r8.internal.EnumC5372Jb0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.zip.CRC32;

public final class C4519j4 extends AbstractC7449ge {

    public static final boolean f37361F = true;

    public final ArrayList f37362A;

    public final ArrayList f37363B;

    public final HashSet f37364C;

    public boolean f37365D;

    public com.android.tools.r8.synthesis.L f37366E;

    public final Origin f37367c;

    public final V f37368d;

    public final C4482h4 f37369e;

    public final Consumer f37370f;

    public final C4595n4 f37371g;

    public C5313Ib f37372h;

    public boolean f37373i;

    public M2 f37374j;

    public Q f37375k;

    public M2 f37376l;

    public O2 f37377m;

    public L2 f37378n;

    public C4615o5 f37379o;

    public final ArrayList f37380p;

    public final ArrayList f37381q;

    public final ArrayList f37382r;

    public C4500i3 f37383s;

    public final ArrayList f37384t;

    public H3.b f37385u;

    public ArrayList f37386v;

    public ArrayList f37387w;

    public final ArrayList f37388x;

    public final ArrayList f37389y;

    public final HashSet f37390z;

    public C4519j4(Origin origin, V v10, byte[] bArr, C4482h4 c4482h4, Consumer consumer) {
        super(null);
        C4595n4 c4595n4 = new C4595n4();
        this.f37371g = c4595n4;
        this.f37379o = null;
        this.f37380p = new ArrayList();
        this.f37381q = new ArrayList();
        this.f37382r = new ArrayList();
        this.f37383s = null;
        this.f37384t = new ArrayList();
        this.f37385u = H3.b.f();
        this.f37386v = null;
        this.f37387w = null;
        this.f37388x = new ArrayList();
        this.f37389y = new ArrayList();
        this.f37390z = new HashSet();
        this.f37362A = new ArrayList();
        this.f37363B = new ArrayList();
        this.f37364C = new HashSet();
        this.f37365D = false;
        this.f37366E = null;
        this.f37367c = origin;
        this.f37368d = v10;
        this.f37370f = consumer;
        c4595n4.f37508a = bArr;
        this.f37369e = c4482h4;
    }

    public static long a(long j10, H2 h22) {
        return j10;
    }

    @Override
    public final void b(String str) {
        if (!f37361F && this.f37379o != null) {
            throw new AssertionError();
        }
        this.f37380p.add(new C4634p5(this.f37369e.f(str)));
    }

    @Override
    public final void c(String str) {
        if (!f37361F && str == null) {
            throw new AssertionError();
        }
        this.f37381q.add(new A5(this.f37369e.f(str)));
    }

    public final void d(String str) {
        C8570nJ c8570nJ = this.f37369e.f37267a;
        if (c8570nJ.f50660a.f37846D6 || c8570nJ.c(com.android.tools.r8.internal.C2.R) || L2.a(this.f37369e.f37267a.z(), str)) {
            return;
        }
        throw new C5325If("Space characters in SimpleName '" + str + "' are not allowed prior to DEX version 040");
    }

    @Override
    public final void a(com.android.tools.r8.internal.K4 k42) {
        com.android.tools.r8.synthesis.L l10 = null;
        if (k42 instanceof com.android.tools.r8.synthesis.K) {
            com.android.tools.r8.synthesis.K k10 = (com.android.tools.r8.synthesis.K) k42;
            if (k10.f58095e.equals(k10.f58096f.a())) {
                l10 = new com.android.tools.r8.synthesis.L(k10.f58094d, null);
            }
        }
        if (l10 != null) {
            if (!f37361F && this.f37366E != null) {
                throw new AssertionError();
            }
            this.f37366E = l10;
        }
    }

    @Override
    public final AbstractC7611hc0 b(String str, String str2, String str3) {
        boolean z10 = f37361F;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && str2 == null) {
            throw new AssertionError();
        }
        return new C4576m4(this, str, str2, str3);
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        if (str2 != null && str3 != null && C4932Bl.a(str2, str, str3) == null && this.f37372h.b(C5313Ib.f41139j)) {
            C5094Ef0 c5094Ef0 = this.f37369e.f37267a.f50691j;
            StringDiagnostic stringDiagnostic = new StringDiagnostic(C10656zq0.b("Malformed inner-class attribute:", "\touterTypeInternal: " + str2, "\tinnerTypeInternal: " + str, "\tinnerName: " + str3), this.f37367c);
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
            }
        }
        this.f37384t.add(new C4425e4(i10, this.f37369e.f(str), str2 == null ? null : this.f37369e.f(str2), str3 != null ? this.f37369e.d(str3) : null));
    }

    @Override
    public final void a(String str, String str2, String str3) {
        C4500i3 c4500i3;
        if (!f37361F && this.f37383s != null) {
            throw new AssertionError();
        }
        M2 f10 = this.f37369e.f(str);
        if (str2 != null && !str2.equals(ConstantDescs.CLASS_INIT_NAME)) {
            c4500i3 = new C4500i3(this.f37369e.a(f10, str2, str3));
        } else {
            c4500i3 = new C4500i3(f10);
        }
        this.f37383s = c4500i3;
    }

    @Override
    public final void a(String str) {
        if (!f37361F && (this.f37379o != null || !this.f37380p.isEmpty())) {
            throw new AssertionError();
        }
        this.f37379o = new C4615o5(this.f37369e.f(str));
    }

    public static String a(Q q10, String str) {
        return "Illegal class file: " + (q10.J() ? "Interface" : "Class") + " " + str;
    }

    public static String a(C5313Ib c5313Ib) {
        return "Class file version " + ((Object) c5313Ib);
    }

    public static String a(Q q10, String str, C5313Ib c5313Ib, String str2) {
        return a(q10, str) + " " + str2 + ". " + a(c5313Ib) + ".";
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        O2 o22;
        C5313Ib a10 = C5313Ib.a(i10);
        this.f37372h = a10;
        if (!C8570nJ.f50579f2.b(a10)) {
            this.f37373i = (i11 & 131072) == 131072;
            byte[] bArr = C4614o4.f37540d;
            this.f37375k = Q.e((-393217) & i11);
            this.f37374j = this.f37369e.f(str);
            if (this.f37375k.a(this.f37372h, str.endsWith("/package-info"))) {
                if (str3 == null && !str.equals("java/lang/Object")) {
                    throw new C5325If(this.f37367c, a(this.f37375k, str, this.f37372h, "is missing a super type"), null);
                }
                if (this.f37375k.J() && !Objects.equals(str3, "java/lang/Object")) {
                    throw new C5325If(this.f37367c, a(this.f37375k, str, this.f37372h, "must extend class java.lang.Object. Found: " + str3), null);
                }
                d(str);
                if (!f37361F && str3 == null && !str.equals("java/lang/Object")) {
                    throw new AssertionError();
                }
                this.f37376l = str3 != null ? this.f37369e.f(str3) : null;
                C4482h4 c4482h4 = this.f37369e;
                c4482h4.getClass();
                if (strArr.length == 0) {
                    o22 = O2.k0();
                } else {
                    M2[] m2Arr = new M2[strArr.length];
                    for (int i12 = 0; i12 < strArr.length; i12++) {
                        m2Arr[i12] = c4482h4.f(strArr[i12]);
                    }
                    o22 = new O2(m2Arr);
                }
                this.f37377m = o22;
                this.f37369e.f37267a.getClass();
                Origin origin = this.f37367c;
                C8570nJ c8570nJ = this.f37369e.f37267a;
                this.f37385u = H3.a(str, str2, origin, c8570nJ.f50660a, c8570nJ.f50691j);
                return;
            }
            Q q10 = this.f37375k;
            throw new C5325If(this.f37367c, a(q10, str, this.f37372h, "has invalid access flags. Found: " + q10.a(false)), null);
        }
        throw new C5325If(this.f37367c, "Unsupported class file version: " + ((Object) this.f37372h), null);
    }

    @Override
    public final void a(String str, String str2) {
        if (str != null) {
            this.f37378n = this.f37369e.d(str);
        }
        if (str2 != null) {
            if (this.f37386v == null) {
                this.f37386v = new ArrayList();
            }
            ArrayList arrayList = this.f37386v;
            R2.k kVar = new R2.k(this.f37369e.d(str2));
            C4724u1 c4724u1 = this.f37369e.f37267a.f50660a;
            arrayList.add(new C4666r0(2, new C4422e1(c4724u1.f37916N5, new C4704t0[]{new C4704t0(c4724u1.b("value"), kVar)})));
        }
    }

    @Override
    public final AbstractC6055Uw a(int i10, String str, String str2, String str3, Object obj) {
        V v10 = this.f37368d;
        V v11 = V.f36879e;
        if (v10 == v11) {
            byte[] bArr = C4614o4.f37540d;
            if (C4537k3.e((-393217) & i10).h()) {
                return null;
            }
        }
        d(str);
        return new C4538k4(this, i10, str, str2, str3, this.f37368d == v11 ? null : obj);
    }

    @Override
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        if (this.f37368d == V.f36879e) {
            L4 a10 = C4614o4.a(i10, str);
            if ((a10.n() && AbstractC4458g.d(a10.f37197c, 65536)) || a10.h()) {
                return null;
            }
        }
        d(str);
        return new C4557l4(i10, str, str2, str3, strArr, this);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(String str, boolean z10) {
        if (this.f37369e.f37267a.f50599F1.f50858a && this.f37368d == V.f36877c && !z10 && AbstractC9247rO.a(str)) {
            String D02 = this.f37374j.D0();
            boolean z11 = this.f37369e.f37267a.f50599F1.f50858a;
            B50 b50 = new B50(new C50(D02), str);
            C4482h4 c4482h4 = this.f37369e;
            Objects.requireNonNull(c4482h4);
            return AbstractC9247rO.a(str, z10, z11, D02, b50, new C4586me(c4482h4));
        }
        if (this.f37386v == null) {
            this.f37386v = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37386v, this.f37369e, new C4605ne());
    }

    @Override
    public final void a() {
        ArrayList arrayList = this.f37387w;
        if (arrayList != null) {
            M2 m22 = this.f37374j;
            C4724u1 c4724u1 = this.f37369e.f37267a.f50660a;
            C4666r0[] c4666r0Arr = C4666r0.f37690d;
            C4666r0 a10 = C4666r0.a(c4724u1.f38191x5, c4724u1, new R2.a(new C4422e1(m22, (C4704t0[]) arrayList.toArray(C4704t0.f37736d))));
            if (this.f37386v == null) {
                this.f37386v = new ArrayList();
            }
            this.f37386v.add(a10);
        }
        if (AbstractC4458g.d(this.f37375k.f37197c, 65536)) {
            C4482h4 c4482h4 = this.f37369e;
            M2 m23 = this.f37374j;
            V<H2> v10 = this.f37368d;
            c4482h4.getClass();
            if (v10 == V.f36877c) {
                C4799y0 c4799y0 = c4482h4.f37272f;
                synchronized (c4799y0.f38436c) {
                    c4799y0.f38436c.a(m23);
                }
            }
            if (this.f37368d == V.f36877c && this.f37382r.size() != this.f37389y.size()) {
                throw new C5325If(this.f37367c, "Records are expected to have one record component per instance field.", null);
            }
        }
        V v11 = this.f37368d;
        M2 m24 = this.f37374j;
        ProgramResource.Kind kind = ProgramResource.Kind.CF;
        Origin origin = this.f37367c;
        Q q10 = this.f37375k;
        M2 m25 = this.f37376l;
        O2 o22 = this.f37377m;
        L2 l22 = this.f37378n;
        C4615o5 c4615o5 = this.f37379o;
        ArrayList arrayList2 = this.f37380p;
        ArrayList arrayList3 = this.f37381q;
        ArrayList arrayList4 = this.f37382r;
        C4500i3 c4500i3 = this.f37383s;
        ArrayList arrayList5 = this.f37384t;
        H3.b bVar = this.f37385u;
        C4723u0 a11 = C4614o4.a(this.f37386v, this.f37369e.f37267a);
        ArrayList arrayList6 = this.f37388x;
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1[] c4460g1Arr2 = (C4460g1[]) arrayList6.toArray(c4460g1Arr);
        C4460g1[] c4460g1Arr3 = (C4460g1[]) this.f37389y.toArray(c4460g1Arr);
        ArrayList arrayList7 = this.f37362A;
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        E0 a12 = v11.f36880a.a(m24, kind, origin, q10, m25, o22, l22, c4615o5, arrayList2, arrayList3, arrayList4, c4500i3, arrayList5, bVar, a11, c4460g1Arr2, c4460g1Arr3, (C4516j1[]) arrayList7.toArray(c4516j1Arr), (C4516j1[]) this.f37363B.toArray(c4516j1Arr), this.f37369e.f37267a.f50660a.f37846D6, a(this.f37368d), this.f37366E, this.f37365D ? EnumC5372Jb0.f41430c : EnumC5372Jb0.f41429b);
        this.f37369e.a(a12, this.f37368d);
        C4425e4 P02 = a12.P0();
        if (P02 != null && P02.d() != null) {
            if (P02.f37149d == null) {
                if (!f37361F && P02.c() != null) {
                    throw new AssertionError();
                }
                C4425e4 c4425e4 = new C4425e4(P02.a(), P02.b(), null, null);
                ListIterator<C4425e4> listIterator = a12.Q0().listIterator();
                while (listIterator.hasNext()) {
                    if (a12.f36245e == listIterator.next().b()) {
                        listIterator.set(c4425e4);
                    }
                }
                throw new C5417Jv0();
            }
            if (this.f37383s != null) {
                if (!f37361F && !P02.e()) {
                    throw new AssertionError();
                }
                throw new C5325If(this.f37367c, C10656zq0.b("A member class cannot also be a (non-member) local class at the same time.", "This is likely due to invalid EnclosingMethod and InnerClasses attributes:", this.f37383s.toString(), P02.toString()), null);
            }
        }
        if (this.f37383s == null && ((a12.r1() || a12.m1()) && C5313Ib.f41136g.b(this.f37372h))) {
            this.f37369e.f37267a.a(a12.f36245e, a12.f36244d, this.f37372h);
        }
        if (!a12.f0()) {
            this.f37371g.f37509b = a12;
        }
        if (a12.e0()) {
            H2 d02 = a12.d0();
            C5313Ib c5313Ib = this.f37372h;
            d02.getClass();
            boolean z10 = H2.f36364C;
            if (!z10 && d02.f36367v != null) {
                throw new AssertionError();
            }
            if (!z10 && c5313Ib == null) {
                throw new AssertionError();
            }
            d02.f36367v = c5313Ib;
            if (this.f37373i) {
                d02.f36368w = true;
            }
        }
        this.f37370f.accept(a12);
    }

    public final H2.a a(V v10) {
        if (this.f37369e.f37267a.f50639T && v10 == V.f36877c) {
            CRC32 crc32 = new CRC32();
            byte[] bArr = this.f37371g.f37508a;
            crc32.update(bArr, 0, bArr.length);
            final long value = crc32.getValue();
            return new H2.a() {
                @Override
                public final long a(H2 h22) {
                    return C4519j4.a(value, h22);
                }
            };
        }
        return new C10895l2();
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f37386v == null) {
            this.f37386v = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37386v, this.f37369e, i10, c9666tu0);
    }
}
