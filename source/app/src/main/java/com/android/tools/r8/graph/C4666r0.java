package com.android.tools.r8.graph;

import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class C4666r0 extends AbstractC4592n1 implements InterfaceC5580Mq0<C4666r0> {

    public static final C4666r0[] f37690d = new C4666r0[0];

    public static final boolean f37691e = true;

    public final int f37692b;

    public final C4422e1 f37693c;

    public C4666r0(int i10, C4422e1 c4422e1) {
        this.f37692b = i10;
        this.f37693c = c4422e1;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4422e1 c4422e1;
                c4422e1 = ((C4666r0) obj).f37693c;
                return c4422e1;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C4666r0) obj).f37692b;
                return i10;
            }
        });
    }

    public static boolean d(C4666r0 c4666r0, C4724u1 c4724u1) {
        return c4666r0.f37693c.f37142b == c4724u1.f37845D5;
    }

    public static boolean e(C4666r0 c4666r0, C4724u1 c4724u1) {
        return c4724u1.f37923O5.a(c4666r0.f37693c.f37142b);
    }

    @Override
    public final C4666r0 E() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4666r0) {
            C4666r0 c4666r0 = (C4666r0) obj;
            if (this.f37692b == c4666r0.f37692b && this.f37693c.equals(c4666r0.f37693c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f37693c.hashCode() * 3) + this.f37692b;
    }

    public N2 k0() {
        return null;
    }

    public M2 l0() {
        return this.f37693c.f37142b;
    }

    public InterfaceC5638Nq0 m() {
        return new E9();
    }

    public int m0() {
        return this.f37692b;
    }

    public boolean n0() {
        return false;
    }

    public String toString() {
        return this.f37692b + " " + ((Object) this.f37693c);
    }

    public static A2 b(C4666r0 c4666r0, C4724u1 c4724u1) {
        R2 a10 = a(c4724u1.f38207z5, c4666r0);
        if (a10 == null) {
            return null;
        }
        return (A2) a10.y0().f36759d;
    }

    public static ArrayList c(C4666r0 c4666r0, C4724u1 c4724u1) {
        R2 a10 = a(c4724u1.f37829B5, c4666r0);
        if (a10 == null) {
            return null;
        }
        R2.b n02 = a10.n0();
        ArrayList arrayList = new ArrayList(n02.W0().length);
        for (R2 r22 : n02.W0()) {
            arrayList.add((M2) r22.E0().f36759d);
        }
        return arrayList;
    }

    public void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        this.f37693c.a(c4798y, m10);
    }

    @Override
    public void a(com.android.tools.r8.dex.X x10) {
        x10.a(this);
    }

    public static boolean a(C8570nJ c8570nJ, M2 m22) {
        if (c8570nJ.f50601G0) {
            return true;
        }
        C4724u1 c4724u1 = c8570nJ.f50660a;
        if (m22.a(c4724u1.f37930P5)) {
            return true;
        }
        L2 v02 = m22.v0();
        L2 l22 = c4724u1.f38147s1;
        v02.getClass();
        if (!v02.b(l22.f36562f)) {
            return false;
        }
        if (v02.b(c4724u1.f38155t1.f36562f)) {
            if (c8570nJ.f50637S0) {
                return true;
            }
            C5094Ef0 c5094Ef0 = c8570nJ.f50691j;
            c5094Ef0.a(null, new StringDiagnostic("Unexpected @CovariantReturnType annotation in non-platform build"));
            throw c5094Ef0.f39969c;
        }
        return v02.b(c4724u1.f38163u1.f36562f);
    }

    public static ArrayList b(M2 m22, C4666r0 c4666r0) {
        R2 a10 = a(m22, c4666r0);
        if (a10 == null) {
            return null;
        }
        R2.b n02 = a10.n0();
        ArrayList arrayList = new ArrayList(n02.W0().length);
        for (R2 r22 : n02.W0()) {
            arrayList.add((M2) r22.E0().f36759d);
        }
        return arrayList;
    }

    public static M2 a(C4666r0 c4666r0, C4724u1 c4724u1) {
        R2 a10 = a(c4724u1.f38199y5, c4666r0);
        if (a10 == null) {
            return null;
        }
        return (M2) a10.E0().f36759d;
    }

    public static C4666r0 a(R2[] r2Arr, R2[] r2Arr2, C4724u1 c4724u1) {
        if (f37691e || r2Arr.length == r2Arr2.length) {
            return new C4666r0(2, new C4422e1(c4724u1.f37837C5, new C4704t0[]{new C4704t0(c4724u1.b("names"), new R2.b(r2Arr)), new C4704t0(c4724u1.b("accessFlags"), new R2.b(r2Arr2))}));
        }
        throw new AssertionError();
    }

    public static C4666r0 a(String str, C4724u1 c4724u1) {
        M2 m22 = c4724u1.f37845D5;
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            if (str.charAt(i10) == 'L') {
                while (i11 < length) {
                    char charAt = str.charAt(i11);
                    if (charAt == ';' || charAt == '<') {
                        i11++;
                        break;
                    }
                    i11++;
                }
            } else {
                while (i11 < length && str.charAt(i11) != 'L') {
                    i11++;
                }
            }
            arrayList.add(new R2.k(c4724u1.b(str.substring(i10, i11))));
            i10 = i11;
        }
        return a(m22, c4724u1, new R2.b((R2[]) arrayList.toArray(R2.f36737b)));
    }

    public static String a(C4666r0 c4666r0) {
        return a(c4666r0.f37693c);
    }

    public static String a(C4422e1 c4422e1) {
        R2.b n02 = c4422e1.f37143c[0].f37739c.n0();
        StringBuilder sb2 = new StringBuilder();
        for (R2 r22 : n02.W0()) {
            sb2.append(((L2) r22.D0().f36759d).toString());
        }
        return sb2.toString();
    }

    public static C4666r0 a(M2 m22, C4724u1 c4724u1, R2 r22) {
        return new C4666r0(2, new C4422e1(m22, new C4704t0[]{new C4704t0(c4724u1.b("value"), r22)}));
    }

    public static R2 a(M2 m22, C4666r0 c4666r0) {
        boolean z10 = f37691e;
        if (!z10 && c4666r0.f37692b != 2) {
            throw new AssertionError();
        }
        if (!z10 && c4666r0.f37693c.f37142b != m22) {
            throw new AssertionError();
        }
        C4704t0[] c4704t0Arr = c4666r0.f37693c.f37143c;
        if (c4704t0Arr.length == 0) {
            return null;
        }
        return c4704t0Arr[0].f37739c;
    }

    public static R2 a(M2 m22, C4666r0 c4666r0, L2 l22) {
        boolean z10 = f37691e;
        if (!z10 && c4666r0.f37692b != 2) {
            throw new AssertionError();
        }
        if (!z10 && c4666r0.l0() != m22) {
            throw new AssertionError();
        }
        for (C4704t0 c4704t0 : c4666r0.f37693c.f37143c) {
            if (c4704t0.f37738b == l22) {
                return c4704t0.f37739c;
            }
        }
        return null;
    }

    public static C4648q0 a(C4723u0 c4723u0, C4724u1 c4724u1, com.android.tools.r8.synthesis.J j10, com.android.tools.r8.androidapi.a aVar) {
        com.android.tools.r8.androidapi.f a10;
        S.b bVar = null;
        if (c4723u0.size() != 1) {
            return null;
        }
        C4666r0 c4666r0 = c4723u0.f37806d[0];
        C4422e1 c4422e1 = c4666r0.f37693c;
        if (c4422e1.f37142b != c4724u1.f37930P5 || c4422e1.f37143c.length != 3) {
            return null;
        }
        boolean z10 = f37691e;
        if (!z10 && !c4724u1.f38123p1.b(c4724u1.f38131q1)) {
            throw new AssertionError();
        }
        C4704t0[] c4704t0Arr = c4666r0.f37693c.f37143c;
        C4704t0 c4704t0 = c4704t0Arr[0];
        C4704t0 c4704t02 = c4704t0Arr[1];
        C4704t0 c4704t03 = c4704t0Arr[2];
        if (c4704t02.f37738b != c4724u1.f38123p1 || !c4704t02.f37739c.N0() || c4704t03.f37738b != c4724u1.f38131q1 || !c4704t03.f37739c.R0() || c4704t0.f37738b != c4724u1.f38139r1 || !c4704t0.f37739c.N0() || !j10.f58085b.a().equals(((L2) c4704t03.f37739c.D0().W0()).toString())) {
            return null;
        }
        int W02 = c4704t0.f37739c.w0().W0();
        if (W02 == -2) {
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            a10 = com.android.tools.r8.androidapi.g.f35607b;
        } else if (W02 == -1) {
            int i11 = com.android.tools.r8.androidapi.f.f35602a;
            a10 = com.android.tools.r8.androidapi.h.f35609b;
        } else {
            a10 = aVar.a(com.android.tools.r8.internal.C2.a(W02));
        }
        com.android.tools.r8.synthesis.S s10 = j10.f58085b;
        int W03 = c4704t02.f37739c.w0().W0();
        if (W03 > 0) {
            if (W03 <= s10.f58172Y.size()) {
                bVar = (S.b) s10.f58172Y.get(W03 - 1);
            }
        } else {
            s10.getClass();
        }
        if (!z10 && bVar == j10.f58085b.f58168U && !a10.q()) {
            throw new AssertionError();
        }
        return new C4648q0(bVar, a10);
    }

    public final C4666r0 a(Function function) {
        C4422e1 c4422e1 = (C4422e1) function.apply(this.f37693c);
        if (c4422e1 == this.f37693c) {
            return this;
        }
        if (c4422e1 == null) {
            return null;
        }
        return new C4666r0(this.f37692b, c4422e1);
    }
}
