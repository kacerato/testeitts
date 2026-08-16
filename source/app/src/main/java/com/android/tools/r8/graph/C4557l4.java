package com.android.tools.r8.graph;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.AbstractC9247rO;
import com.android.tools.r8.internal.B50;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C50;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5766Pw0;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9612tc0;
import com.android.tools.r8.internal.C9666tu0;
import com.android.tools.r8.internal.C9933vX;
import com.android.tools.r8.internal.DX;
import com.android.tools.r8.internal.G50;
import com.android.tools.r8.internal.XQ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import org.objectweb.asm.Opcodes;

public final class C4557l4 extends DX {

    public static final boolean f37451r = true;

    public final String f37452c;

    public final String f37453d;

    public final C4519j4 f37454e;

    public final int f37455f;

    public ArrayList f37456g;

    public R2 f37457h;

    public int f37458i;

    public ArrayList f37459j;

    public ArrayList f37460k;

    public ArrayList f37461l;

    public final H3.g f37462m;

    public final A2 f37463n;

    public final L4 f37464o;

    public final boolean f37465p;

    public C4727u4 f37466q;

    public C4557l4(int i10, String str, String str2, String str3, String[] strArr, C4519j4 c4519j4) {
        super(Opcodes.ASM9, null);
        this.f37456g = null;
        this.f37457h = null;
        this.f37458i = -1;
        this.f37459j = null;
        this.f37460k = null;
        this.f37461l = null;
        this.f37466q = null;
        this.f37452c = str;
        this.f37453d = str2;
        this.f37454e = c4519j4;
        this.f37463n = c4519j4.f37369e.a(c4519j4.f37374j, str, str2);
        this.f37464o = C4614o4.a(i10, str);
        this.f37465p = (i10 & 131072) == 131072;
        this.f37455f = C4932Bl.d(str2);
        if (strArr != null && strArr.length > 0) {
            R2[] r2Arr = new R2[strArr.length];
            for (int i11 = 0; i11 < strArr.length; i11++) {
                r2Arr[i11] = new R2.l(c4519j4.f37369e.f(strArr[i11]));
            }
            C4724u1 c4724u1 = c4519j4.f37369e.f37267a.f50660a;
            C4666r0[] c4666r0Arr = C4666r0.f37690d;
            C4666r0 a10 = C4666r0.a(c4724u1.f37923O5, c4724u1, new R2.b(r2Arr));
            if (this.f37456g == null) {
                this.f37456g = new ArrayList();
            }
            this.f37456g.add(a10);
        }
        c4519j4.f37369e.f37267a.getClass();
        Origin origin = c4519j4.f37367c;
        C8570nJ c8570nJ = c4519j4.f37369e.f37267a;
        this.f37462m = H3.c(str, str3, origin, c8570nJ.f50660a, c8570nJ.f50691j);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        return null;
    }

    @Override
    public final com.android.tools.r8.internal.Q2 b(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ab, code lost:
    
        if (r0.f37379o != null) goto L40;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        C4823z5 a10;
        C4519j4 c4519j4 = this.f37454e;
        C4482h4 c4482h4 = c4519j4.f37369e;
        C8570nJ c8570nJ = c4482h4.f37267a;
        A2 a22 = this.f37463n;
        V<H2> v10 = c4519j4.f37368d;
        if (AbstractC8737oJ.a(c8570nJ.k()) && C9612tc0.a(c4482h4.f37267a.f50660a, a22)) {
            M2 s02 = a22.s0();
            if (v10 == V.f36877c) {
                C4799y0 c4799y0 = c4482h4.f37272f;
                synchronized (c4799y0.f38436c) {
                    c4799y0.f38436c.a(s02);
                }
            }
        }
        C4519j4 c4519j42 = this.f37454e;
        C4482h4 c4482h42 = c4519j42.f37369e;
        A2 a23 = this.f37463n;
        V v11 = c4519j42.f37368d;
        if (c4482h42.f37267a.d0() && C5766Pw0.a(c4482h42.f37267a.f50660a, a23)) {
            c4482h42.a(a23.s0(), v11);
        }
        C4519j4 c4519j43 = this.f37454e;
        C4482h4 c4482h43 = c4519j43.f37369e;
        A2 a24 = this.f37463n;
        V v12 = c4519j43.f37368d;
        if (c4482h43.f37267a.d0() && C5766Pw0.b(c4482h43.f37267a.f50660a, a24)) {
            c4482h43.b(a24.s0(), v12);
        }
        if (!this.f37464o.H() && !this.f37464o.J()) {
            C4519j4 c4519j44 = this.f37454e;
            if (c4519j44.f37368d != V.f36877c) {
                if (!c4519j44.f37369e.f37267a.i()) {
                    C4519j4 c4519j45 = this.f37454e;
                    if (c4519j45.f37368d == V.f36878d) {
                        if (c4519j45.f37380p.isEmpty()) {
                        }
                    }
                }
            }
            C4519j4 c4519j46 = this.f37454e;
            this.f37466q = new C4727u4(c4519j46.f37367c, c4519j46.f37371g, c4519j46.f37369e);
        }
        ArrayList arrayList = this.f37459j;
        if (arrayList == null) {
            a10 = C4823z5.f38465d;
        } else {
            C4723u0[] c4723u0Arr = new C4723u0[arrayList.size()];
            for (int i10 = 0; i10 < this.f37459j.size(); i10++) {
                c4723u0Arr[i10] = C4614o4.a((List) this.f37459j.get(i10), c8570nJ);
            }
            a10 = C4823z5.a(c4723u0Arr, 0);
        }
        ArrayList arrayList2 = this.f37460k;
        if (arrayList2 != null) {
            if (!f37451r && this.f37461l == null) {
                throw new AssertionError();
            }
            int size = arrayList2.size();
            int i11 = this.f37455f;
            if (size != i11) {
                c8570nJ.a(this.f37463n, this.f37454e.f37367c, i11, this.f37460k.size());
            }
            if (this.f37456g == null) {
                this.f37456g = new ArrayList();
            }
            ArrayList arrayList3 = this.f37456g;
            ArrayList arrayList4 = this.f37460k;
            R2[] r2Arr = R2.f36737b;
            arrayList3.add(C4666r0.a((R2[]) arrayList4.toArray(r2Arr), (R2[]) this.f37461l.toArray(r2Arr), this.f37454e.f37369e.f37267a.f50660a));
        }
        C4516j1.a a11 = C4516j1.K0().a(this.f37463n).a(this.f37464o);
        a11.f37332d = this.f37462m;
        a11.f37333e = C4614o4.a(this.f37456g, c8570nJ);
        a11.f37335g = a10;
        C4516j1.a a12 = a11.a(this.f37466q);
        a12.f37339k = this.f37454e.f37372h;
        a12.f37343o = this.f37465p;
        a12.f37346r = false;
        C4516j1 a13 = a12.b().a();
        if (this.f37454e.f37364C.add(new C7333fv(C9933vX.f53136a, this.f37463n))) {
            if (!this.f37464o.n() && !AbstractC4458g.d(this.f37464o.f37197c, 65536) && !this.f37464o.h()) {
                this.f37454e.f37363B.add(a13);
            } else {
                this.f37454e.f37362A.add(a13);
            }
        } else {
            c8570nJ.f50691j.warning(new StringDiagnostic("Ignoring an implementation of the method `" + this.f37463n.j0() + "` because it has multiple definitions"));
        }
        R2 r22 = this.f37457h;
        if (r22 != null) {
            C4519j4 c4519j47 = this.f37454e;
            String str = this.f37452c;
            if (c4519j47.f37387w == null) {
                c4519j47.f37387w = new ArrayList();
            }
            c4519j47.f37387w.add(new C4704t0(c4519j47.f37369e.d(str), r22));
        }
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(int i10, C9666tu0 c9666tu0, XQ[] xqArr, XQ[] xqArr2, int[] iArr, String str, boolean z10) {
        return null;
    }

    @Override
    public final void b(int i10, String str) {
        if (this.f37460k == null) {
            if (!f37451r && this.f37461l != null) {
                throw new AssertionError();
            }
            this.f37460k = new ArrayList(this.f37455f);
            this.f37461l = new ArrayList(this.f37455f);
        }
        if (str == null) {
            this.f37460k.add(Z2.f37013d);
        } else {
            this.f37460k.add(new R2.k(this.f37454e.f37369e.f37267a.f50660a.b(str)));
        }
        this.f37461l.add(R2.h.j(i10));
        super.b(i10, str);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(String str, boolean z10) {
        C4519j4 c4519j4 = this.f37454e;
        if (c4519j4.f37369e.f37267a.f50599F1.f50858a && c4519j4.f37368d == V.f36877c && !z10 && AbstractC9247rO.a(str)) {
            String D02 = this.f37454e.f37374j.D0();
            B50 b50 = new B50(new G50(new C50(D02), this.f37452c, this.f37453d), str);
            C4482h4 c4482h4 = this.f37454e.f37369e;
            return AbstractC9247rO.b(str, z10, c4482h4.f37267a.f50599F1.f50858a, D02, this.f37452c, this.f37453d, b50, new C4586me(c4482h4));
        }
        C4519j4 c4519j42 = this.f37454e;
        boolean z11 = c4519j42.f37365D;
        Objects.requireNonNull(c4519j42.f37369e.f37267a.f50660a);
        c4519j42.f37365D = z11 | "Ldalvik/annotation/optimization/ReachabilitySensitive;".equals(str);
        if (this.f37456g == null) {
            this.f37456g = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37456g, this.f37454e.f37369e, new C4605ne());
    }

    @Override
    public final void b() {
        throw new C5417Jv0("visitCode() should not be called when SKIP_CODE is set");
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a() {
        return new C4501i4(this.f37454e.f37369e, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4557l4.this.a((List) obj, (List) obj2);
            }
        });
    }

    public final void a(List list, List list2) {
        if (!f37451r && list2.size() != 1) {
            throw new AssertionError();
        }
        this.f37457h = (R2) list2.get(0);
    }

    @Override
    public final void a(int i10, boolean z10) {
        int i11 = this.f37458i;
        if (i11 != -1 && !f37451r && i11 != i10) {
            throw new AssertionError();
        }
        this.f37458i = i10;
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(int i10, String str, boolean z10) {
        if (this.f37459j == null) {
            if (this.f37458i == -1) {
                this.f37458i = this.f37455f;
            }
            this.f37459j = new ArrayList(this.f37458i);
            for (int i11 = 0; i11 < this.f37458i; i11++) {
                this.f37459j.add(new ArrayList());
            }
        }
        if (f37451r || this.f39547b == null) {
            return C4614o4.a(str, z10, (List) this.f37459j.get(i10), this.f37454e.f37369e, new C4605ne());
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.internal.Q2 c(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f37456g == null) {
            this.f37456g = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37456g, this.f37454e.f37369e, i10, c9666tu0);
    }
}
