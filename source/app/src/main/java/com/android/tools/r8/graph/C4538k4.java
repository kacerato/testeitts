package com.android.tools.r8.graph;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC6055Uw;
import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.AbstractC9247rO;
import com.android.tools.r8.internal.B50;
import com.android.tools.r8.internal.C50;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5533Lw;
import com.android.tools.r8.internal.C5766Pw0;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9612tc0;
import com.android.tools.r8.internal.C9666tu0;
import com.android.tools.r8.internal.D50;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Objects;
import org.objectweb.asm.Opcodes;

public final class C4538k4 extends AbstractC6055Uw {

    public static final boolean f37424j = true;

    public final C4519j4 f37425c;

    public final int f37426d;

    public final String f37427e;

    public final String f37428f;

    public final Object f37429g;

    public final H3.e f37430h;

    public ArrayList f37431i;

    public C4538k4(C4519j4 c4519j4, int i10, String str, String str2, String str3, Object obj) {
        super(Opcodes.ASM9, null);
        this.f37431i = null;
        this.f37425c = c4519j4;
        this.f37426d = i10;
        this.f37427e = str;
        this.f37428f = str2;
        this.f37429g = obj;
        c4519j4.f37369e.f37267a.getClass();
        Origin origin = c4519j4.f37367c;
        C8570nJ c8570nJ = c4519j4.f37369e.f37267a;
        this.f37430h = H3.b(str, str3, origin, c8570nJ.f50660a, c8570nJ.f50691j);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(String str, boolean z10) {
        C4519j4 c4519j4 = this.f37425c;
        if (c4519j4.f37369e.f37267a.f50599F1.f50858a && c4519j4.f37368d == V.f36877c && !z10 && AbstractC9247rO.a(str)) {
            String D02 = this.f37425c.f37374j.D0();
            B50 b50 = new B50(new D50(new C50(D02), this.f37427e, this.f37428f), str);
            C4482h4 c4482h4 = this.f37425c.f37369e;
            return AbstractC9247rO.a(str, z10, c4482h4.f37267a.f50599F1.f50858a, D02, this.f37427e, this.f37428f, b50, new C4586me(c4482h4));
        }
        C4519j4 c4519j42 = this.f37425c;
        boolean z11 = c4519j42.f37365D;
        Objects.requireNonNull(c4519j42.f37369e.f37267a.f50660a);
        c4519j42.f37365D = z11 | "Ldalvik/annotation/optimization/ReachabilitySensitive;".equals(str);
        if (this.f37431i == null) {
            this.f37431i = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37431i, this.f37425c.f37369e, new C4605ne());
    }

    @Override
    public final void a() {
        boolean b10;
        int i10 = this.f37426d;
        byte[] bArr = C4614o4.f37540d;
        C4537k3 e10 = C4537k3.e(i10 & (-393217));
        C4519j4 c4519j4 = this.f37425c;
        C4482h4 c4482h4 = c4519j4.f37369e;
        C4554l1 a10 = c4482h4.f37267a.f50660a.a(c4519j4.f37374j, c4482h4.e(this.f37428f), c4482h4.d(this.f37427e));
        C4519j4 c4519j42 = this.f37425c;
        C4482h4 c4482h42 = c4519j42.f37369e;
        V<H2> v10 = c4519j42.f37368d;
        if (AbstractC8737oJ.a(c4482h42.f37267a.k())) {
            C4724u1 c4724u1 = c4482h42.f37267a.f50660a;
            if (!C9612tc0.f52638g && C9612tc0.a(c4724u1, a10.f38297f)) {
                throw new AssertionError((Object) "The java.lang.Record class has no fields.");
            }
            if (C9612tc0.a(c4724u1, a10.f37449i)) {
                M2 s02 = a10.s0();
                if (v10 == V.f36877c) {
                    C4799y0 c4799y0 = c4482h42.f37272f;
                    synchronized (c4799y0.f38436c) {
                        c4799y0.f38436c.a(s02);
                    }
                }
            }
        }
        C4519j4 c4519j43 = this.f37425c;
        C4482h4 c4482h43 = c4519j43.f37369e;
        V v11 = c4519j43.f37368d;
        if (c4482h43.f37267a.d0()) {
            C4724u1 c4724u12 = c4482h43.f37267a.f50660a;
            if (C5766Pw0.a(c4724u12, a10.f38297f) ? true : C5766Pw0.a(c4724u12, a10.f37449i)) {
                c4482h43.a(a10.s0(), v11);
            }
        }
        C4519j4 c4519j44 = this.f37425c;
        C4482h4 c4482h44 = c4519j44.f37369e;
        V v12 = c4519j44.f37368d;
        if (c4482h44.f37267a.d0()) {
            C4724u1 c4724u13 = c4482h44.f37267a.f50660a;
            if (C5766Pw0.b(c4724u13, a10.f38297f)) {
                if (!C5766Pw0.f43411d) {
                    throw new AssertionError((Object) "The VarHandle class has no fields.");
                }
                b10 = true;
            } else {
                b10 = C5766Pw0.b(c4724u13, a10.f37449i);
            }
            if (b10) {
                c4482h44.b(a10.s0(), v12);
            }
        }
        if (this.f37425c.f37390z.add(new C7333fv(C5533Lw.f42102a, a10))) {
            C4723u0 a11 = C4614o4.a(this.f37431i, this.f37425c.f37369e.f37267a);
            R2 a12 = e10.n() ? a(a10.f37449i, this.f37429g) : null;
            C4460g1[] c4460g1Arr = C4460g1.f37200o;
            C4460g1.a a13 = new C4460g1.a(false).a(a10);
            a13.f37213c = e10;
            a13.f37214d = this.f37430h;
            a13.f37212b = a11;
            a13.f37216f = a12;
            a13.f37220j = (this.f37426d & 131072) == 131072;
            C4460g1 a14 = a13.c().a();
            if (e10.n()) {
                this.f37425c.f37388x.add(a14);
                return;
            } else {
                this.f37425c.f37389y.add(a14);
                return;
            }
        }
        this.f37425c.f37369e.f37267a.f50691j.warning(new StringDiagnostic("Field `" + a10.j0() + "` has multiple definitions"));
    }

    public final R2 a(M2 m22, Object obj) {
        if (obj == null) {
            return null;
        }
        C4724u1 c4724u1 = this.f37425c.f37369e.f37267a.f50660a;
        if (m22 == c4724u1.f37849E1) {
            int intValue = ((Integer) obj).intValue();
            if (f37424j || (intValue >= 0 && intValue <= 1)) {
                return intValue == 1 ? R2.c.f36741e : R2.c.f36742f;
            }
            throw new AssertionError();
        }
        if (m22 == c4724u1.f37856F1) {
            return R2.d.a(((Integer) obj).byteValue());
        }
        if (m22 == c4724u1.f37898L1) {
            short shortValue = ((Integer) obj).shortValue();
            return shortValue == 0 ? R2.j.f36757e : new R2.j(shortValue);
        }
        if (m22 == c4724u1.f37863G1) {
            char intValue2 = (char) ((Integer) obj).intValue();
            return intValue2 == 0 ? R2.e.f36747e : new R2.e(intValue2);
        }
        if (m22 == c4724u1.f37884J1) {
            return R2.h.j(((Integer) obj).intValue());
        }
        if (m22 == c4724u1.f37877I1) {
            return R2.g.a(((Float) obj).floatValue());
        }
        if (m22 == c4724u1.f37891K1) {
            return R2.i.a(((Long) obj).longValue());
        }
        if (m22 == c4724u1.f37870H1) {
            return R2.f.a(((Double) obj).doubleValue());
        }
        if (m22 == c4724u1.f38052g2) {
            return new R2.k(c4724u1.b((String) obj));
        }
        throw new C5417Jv0("Unexpected static-value type " + ((Object) m22));
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f37431i == null) {
            this.f37431i = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37431i, this.f37425c.f37369e, i10, c9666tu0);
    }
}
