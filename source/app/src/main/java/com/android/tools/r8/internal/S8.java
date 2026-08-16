package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.SourceFileEnvironment;
import com.android.tools.r8.SourceFileProvider;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4503i6;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.synthesis.AbstractC11547a0;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class S8 {

    public static final C5313Ib f44092f = C5313Ib.f41136g;

    public static final boolean f44093g = true;

    public final C4798y f44094a;

    public final com.android.tools.r8.graph.H2 f44095b;

    public final C4724u1 f44096c;

    public final AbstractC10992r0 f44097d;

    public final C8570nJ f44098e;

    public S8(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        this.f44094a = c4798y;
        this.f44095b = h22;
        this.f44096c = c4798y.b();
        this.f44097d = c4798y.a(h22) ? c4798y.s().c() : c4798y.s();
        this.f44098e = c4798y.E();
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return !(this.f44094a.f().c(m22) != null);
    }

    public final void b(C7616he c7616he, com.android.tools.r8.graph.F5 f52) {
        String v32;
        int D10 = f52.getAccessFlags().D();
        if (f52.d().f37205j) {
            D10 |= 131072;
        }
        int i10 = D10;
        String l22 = this.f44097d.a(f52.getReference()).toString();
        String l23 = this.f44097d.c(f52.getReference().f37449i).toString();
        H3.e A02 = f52.d().A0();
        AbstractC10992r0 abstractC10992r0 = this.f44097d;
        RV0 rv0 = new RV0(this);
        if (A02.a()) {
            v32 = null;
        } else {
            com.android.tools.r8.graph.V3 v33 = new com.android.tools.r8.graph.V3(abstractC10992r0, rv0);
            v33.a((H3.i) A02);
            v32 = v33.toString();
        }
        C4460g1 d10 = f52.d();
        final AbstractC6055Uw a10 = c7616he.a(i10, l22, l23, v32, (d10.f37202g.n() && d10.L0()) ? d10.K0().k0() : null);
        a(new P8() {
            @Override
            public final Q2 a(String str, boolean z10) {
                return AbstractC6055Uw.this.a(str, z10);
            }
        }, new R8() {
            @Override
            public final Q2 a(int i11, C9666tu0 c9666tu0, String str, boolean z10) {
                return AbstractC6055Uw.this.a(i11, c9666tu0, str, z10);
            }
        }, f52.f36318c.k0().m0());
    }

    public final void a(final EX ex, C4823z5 c4823z5) {
        ex.f39893C = c4823z5.size();
        ex.f39895E = c4823z5.size();
        for (final int i10 = 0; i10 < c4823z5.size(); i10++) {
            a(new P8() {
                @Override
                public final Q2 a(String str, boolean z10) {
                    Q2 a10;
                    a10 = DX.this.a(i10, str, z10);
                    return a10;
                }
            }, new R8() {
                @Override
                public final Q2 a(int i11, C9666tu0 c9666tu0, String str, boolean z10) {
                    return S8.a(i11, c9666tu0, str, z10);
                }
            }, c4823z5.j(i10).f37806d);
        }
    }

    public final com.android.tools.r8.graph.L2 b(com.android.tools.r8.graph.A2 a22) {
        return this.f44097d.c(a22.z0());
    }

    public final Q8 a(final RR rr, Optional optional, SourceFileEnvironment sourceFileEnvironment) {
        String str;
        C5313Ib c5313Ib;
        int i10;
        String v32;
        AbstractC8552nC b10;
        String v33;
        final C7616he c7616he = new C7616he();
        if (optional.isPresent()) {
            int i11 = c7616he.f48638d.a(optional.get()).f48722a;
            if (!f44093g && i11 != 2) {
                throw new AssertionError();
            }
        }
        SourceFileProvider sourceFileProvider = this.f44098e.f50667b2;
        if (sourceFileProvider == null) {
            com.android.tools.r8.graph.L2 l22 = this.f44095b.f36249i;
            str = l22 != null ? l22.toString() : null;
        } else {
            str = sourceFileProvider.get(sourceFileEnvironment);
        }
        com.android.tools.r8.graph.R2 a10 = a(this.f44095b.k0(), this.f44096c.f37916N5);
        c7616he.a(str, a10 == null ? null : ((com.android.tools.r8.graph.L2) a10.D0().W0()).toString());
        com.android.tools.r8.graph.H2 h22 = this.f44095b;
        if (h22.f36367v != null) {
            c5313Ib = h22.G1();
        } else {
            c5313Ib = f44092f;
        }
        Iterator<C4516j1> it = h22.H0().iterator();
        while (it.hasNext()) {
            c5313Ib = (C5313Ib) C40.d(c5313Ib, a(it.next()));
        }
        Iterator<C4516j1> it2 = h22.D1().iterator();
        while (it2.hasNext()) {
            c5313Ib = (C5313Ib) C40.d(c5313Ib, a(it2.next()));
        }
        if (c5313Ib.d(C5313Ib.f41138i)) {
            this.f44095b.f36246f.R();
        } else if (!this.f44095b.f36246f.J()) {
            this.f44095b.f36246f.a(32);
        }
        com.android.tools.r8.graph.L2 v02 = this.f44095b.getType().v0();
        com.android.tools.r8.graph.L2 b11 = this.f44096c.b("/package-info;");
        v02.getClass();
        if (!v02.a(b11.f36562f) && !this.f44098e.f50599F1.f50821H0) {
            i10 = this.f44095b.f36246f.D();
        } else {
            i10 = this.f44095b.f36246f.f37197c;
        }
        com.android.tools.r8.graph.H2 h23 = this.f44095b;
        if (h23.f36368w) {
            i10 |= 131072;
        }
        int i12 = i10;
        String l23 = this.f44097d.c(h23.f36245e).toString();
        String d10 = this.f44097d.d(this.f44095b.f36245e);
        H3.b N02 = this.f44095b.N0();
        AbstractC10992r0 abstractC10992r0 = this.f44097d;
        RV0 rv0 = new RV0(this);
        if (N02.a()) {
            v32 = null;
        } else {
            com.android.tools.r8.graph.V3 v34 = new com.android.tools.r8.graph.V3(abstractC10992r0, rv0);
            v34.a(N02);
            v32 = v34.toString();
        }
        String d11 = this.f44095b.i1() ? this.f44097d.d(this.f44095b.f36247g) : null;
        String[] strArr = new String[this.f44095b.f36248h.f36675b.length];
        int i13 = 0;
        while (true) {
            com.android.tools.r8.graph.M2[] m2Arr = this.f44095b.f36248h.f36675b;
            if (i13 >= m2Arr.length) {
                break;
            }
            strArr[i13] = this.f44097d.d(m2Arr[i13]);
            i13++;
        }
        if (!f44093g) {
            com.android.tools.r8.synthesis.S.a(d10);
        }
        c7616he.a(c5313Ib.d(), i12, d10, v32, d11, strArr);
        com.android.tools.r8.synthesis.J g10 = this.f44094a.f38408a.g();
        com.android.tools.r8.graph.H2 h24 = this.f44095b;
        C4798y c4798y = this.f44094a;
        g10.getClass();
        if (!c4798y.E().f50599F1.f50851W0 && c4798y.E().f50595E0 && (c4798y.E().f50697l instanceof ClassFileConsumer)) {
            GK gk2 = (GK) g10.f58086c.a(h24.getType()).iterator();
            if (gk2.hasNext()) {
                S.b bVar = ((AbstractC11547a0) gk2.next()).f58222a;
                if (!com.android.tools.r8.synthesis.J.f58083g && gk2.hasNext()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.synthesis.S s10 = c4798y.f38408a.g().f58085b;
                com.android.tools.r8.synthesis.K k10 = new com.android.tools.r8.synthesis.K(bVar, s10.a(), s10);
                k10.f41568c = c7616he.f48635G;
                c7616he.f48635G = k10;
            }
        }
        a(new P8() {
            @Override
            public final Q2 a(String str2, boolean z10) {
                return C7616he.this.a(str2, z10);
            }
        }, new R8() {
            @Override
            public final Q2 a(int i14, C9666tu0 c9666tu0, String str2, boolean z10) {
                return C7616he.this.a(i14, c9666tu0, str2, z10);
            }
        }, this.f44095b.k0().f37806d);
        com.android.tools.r8.graph.R2 a11 = a(this.f44095b.k0(), this.f44096c.f38191x5);
        if (a11 == null) {
            b10 = C6620bf0.f46817i;
        } else {
            C4422e1 c4422e1 = a11.m0().f36739d;
            C8051kC c8051kC = new C8051kC(4);
            for (C4704t0 c4704t0 : c4422e1.f37143c) {
                c8051kC.a(c4704t0.f37738b, c4704t0.f37739c);
            }
            b10 = c8051kC.b();
        }
        final AbstractC8552nC abstractC8552nC = b10;
        if (this.f44095b.O0() != null) {
            C4500i3 O02 = this.f44095b.O0();
            AbstractC10992r0 abstractC10992r02 = this.f44097d;
            com.android.tools.r8.graph.A2 a22 = O02.f37290b;
            if (a22 != null) {
                c7616he.a(abstractC10992r02.d(a22.f38297f), abstractC10992r02.a(O02.f37290b).toString(), O02.f37290b.f36127i.a(abstractC10992r02));
            } else {
                c7616he.a(abstractC10992r02.d(O02.f37289a), (String) null, (String) null);
            }
        }
        if (this.f44095b.U0() != null) {
            C4615o5 U02 = this.f44095b.U0();
            AbstractC10992r0 abstractC10992r03 = this.f44097d;
            if (!C4615o5.f37545c && U02.f37546b == null) {
                throw new AssertionError();
            }
            c7616he.a(abstractC10992r03.d(U02.f37546b));
        }
        for (C4634p5 c4634p5 : this.f44095b.V0()) {
            AbstractC10992r0 abstractC10992r04 = this.f44097d;
            if (!C4634p5.f37586c && c4634p5.f37587b == null) {
                throw new AssertionError();
            }
            c7616he.b(abstractC10992r04.d(c4634p5.f37587b));
            if (!f44093g && this.f44095b.U0() != null) {
                throw new AssertionError((Object) "A nest host cannot also be a nest member.");
            }
        }
        for (com.android.tools.r8.graph.A5 a52 : this.f44095b.W0()) {
            AbstractC10992r0 abstractC10992r05 = this.f44097d;
            if (!com.android.tools.r8.graph.A5.f36129c && a52.f36130b == null) {
                throw new AssertionError();
            }
            c7616he.c(abstractC10992r05.d(a52.f36130b));
        }
        if (this.f44095b.x1()) {
            for (com.android.tools.r8.graph.P5 p52 : this.f44095b.X0()) {
                AbstractC10992r0 abstractC10992r06 = this.f44097d;
                RV0 rv02 = new RV0(this);
                BiConsumer biConsumer = new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        S8.this.a((Q2) obj, (C4422e1) obj2);
                    }
                };
                String l24 = abstractC10992r06.a(p52.f36704b).toString();
                String l25 = abstractC10992r06.c(p52.d()).toString();
                H3.e eVar = p52.f36705c;
                if (eVar.a()) {
                    v33 = null;
                } else {
                    com.android.tools.r8.graph.V3 v35 = new com.android.tools.r8.graph.V3(abstractC10992r06, rv02);
                    v35.a((H3.i) eVar);
                    v33 = v35.toString();
                }
                AbstractC7611hc0 b12 = c7616he.b(l24, l25, v33);
                for (C4666r0 c4666r0 : p52.f36706d) {
                    if (c4666r0.f37692b != 2) {
                        Q2 a12 = b12.a(abstractC10992r06.c(c4666r0.l0()).toString(), c4666r0.f37692b == 1);
                        if (a12 != null) {
                            biConsumer.accept(a12, c4666r0.f37693c);
                            a12.a();
                        }
                    }
                }
            }
        }
        for (C4425e4 c4425e4 : this.f44095b.Q0()) {
            AbstractC10992r0 abstractC10992r07 = this.f44097d;
            C8570nJ c8570nJ = this.f44098e;
            String d12 = abstractC10992r07.d(c4425e4.f37147b);
            com.android.tools.r8.graph.M2 m22 = c4425e4.f37148c;
            c7616he.a(c4425e4.f37146a, d12, m22 == null ? null : abstractC10992r07.d(m22), c4425e4.f37149d == null ? null : abstractC10992r07.a(c4425e4, c8570nJ).toString());
        }
        this.f44095b.m(new Consumer() {
            @Override
            public final void accept(Object obj) {
                S8.this.a(c7616he, (com.android.tools.r8.graph.F5) obj);
            }
        });
        this.f44095b.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                S8.this.b(c7616he, (com.android.tools.r8.graph.F5) obj);
            }
        });
        if (this.f44098e.l().f50753a) {
            ArrayList arrayList = new ArrayList();
            this.f44095b.l(new LV0(arrayList));
            arrayList.sort(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return S8.this.a((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
                }
            });
            final C5313Ib c5313Ib2 = c5313Ib;
            arrayList.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    S8.this.a(c5313Ib2, rr, c7616he, abstractC8552nC, (com.android.tools.r8.graph.H5) obj);
                }
            });
        } else {
            final C5313Ib c5313Ib3 = c5313Ib;
            this.f44095b.l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    S8.this.b(c5313Ib3, rr, c7616he, abstractC8552nC, (com.android.tools.r8.graph.H5) obj);
                }
            });
        }
        return new Q8(l23, c7616he.b());
    }

    public final void b(C5313Ib c5313Ib, RR rr, C7616he c7616he, AbstractC8552nC abstractC8552nC, com.android.tools.r8.graph.H5 h52) {
        String v32;
        String[] strArr;
        Q2 a10;
        C4516j1 d10 = h52.d();
        int G10 = d10.getAccessFlags().G();
        if (d10.f37315h) {
            G10 |= 131072;
        }
        int i10 = G10;
        String l22 = this.f44097d.a(h52.getReference()).toString();
        String a11 = d10.a(this.f44097d);
        H3.g A02 = h52.d().A0();
        AbstractC10992r0 abstractC10992r0 = this.f44097d;
        RV0 rv0 = new RV0(this);
        if (A02.a()) {
            v32 = null;
        } else {
            com.android.tools.r8.graph.V3 v33 = new com.android.tools.r8.graph.V3(abstractC10992r0, rv0);
            v33.a(A02);
            v32 = v33.toString();
        }
        C4723u0 k02 = d10.k0();
        AbstractC10992r0 abstractC10992r02 = this.f44097d;
        com.android.tools.r8.graph.R2 a12 = a(k02, this.f44096c.f37923O5);
        if (a12 == null) {
            strArr = null;
        } else {
            com.android.tools.r8.graph.R2[] W02 = a12.n0().W0();
            String[] strArr2 = new String[W02.length];
            for (int i11 = 0; i11 < W02.length; i11++) {
                strArr2[i11] = abstractC10992r02.d((com.android.tools.r8.graph.M2) W02[i11].E0().f36759d);
            }
            strArr = strArr2;
        }
        final DX a13 = c7616he.a(i10, l22, a11, v32, strArr);
        if (abstractC8552nC.containsKey(d10.C0()) && (a10 = a13.a()) != null) {
            a(a10, (String) null, (com.android.tools.r8.graph.R2) abstractC8552nC.get(d10.C0()));
            a10.a();
        }
        for (C4666r0 c4666r0 : d10.k0().f37806d) {
            C4422e1 c4422e1 = c4666r0.f37693c;
            if (c4422e1.f37142b == this.f44096c.f37837C5) {
                boolean z10 = f44093g;
                if (!z10 && c4666r0.f37692b != 2) {
                    throw new AssertionError();
                }
                if (!z10 && c4422e1.f37143c.length != 2) {
                    throw new AssertionError();
                }
                if (!z10 && !c4422e1.f37143c[0].f37738b.toString().equals("names")) {
                    throw new AssertionError();
                }
                if (!z10 && !c4666r0.f37693c.f37143c[1].f37738b.toString().equals("accessFlags")) {
                    throw new AssertionError();
                }
                R2.b n02 = c4666r0.f37693c.f37143c[0].f37739c.n0();
                R2.b n03 = c4666r0.f37693c.f37143c[1].f37739c.n0();
                if (!z10 && (n02 == null || n03 == null)) {
                    throw new AssertionError();
                }
                if (!z10 && n02.W0().length != n03.W0().length) {
                    throw new AssertionError();
                }
                for (int i12 = 0; i12 < n02.W0().length; i12++) {
                    R2.k D02 = n02.W0()[i12].D0();
                    a13.b(n03.W0()[i12].w0().f36754d, D02 != null ? ((com.android.tools.r8.graph.L2) D02.f36759d).toString() : null);
                }
            }
        }
        a(new P8() {
            @Override
            public final Q2 a(String str, boolean z11) {
                return DX.this.a(str, z11);
            }
        }, new R8() {
            @Override
            public final Q2 a(int i13, C9666tu0 c9666tu0, String str, boolean z11) {
                return DX.this.c(i13, c9666tu0, str, z11);
            }
        }, d10.k0().f37806d);
        EX ex = (EX) a13;
        a(ex, d10.f37316i);
        if (d10.v1()) {
            return;
        }
        a(h52, c5313Ib, this.f44097d, rr, ex);
    }

    public static Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        throw new C5417Jv0("Type annotations are not placed on parameters");
    }

    public final void a(P8 p82, R8 r82, C4666r0[] c4666r0Arr) {
        Q2 a10;
        for (C4666r0 c4666r0 : c4666r0Arr) {
            if (c4666r0.f37692b != 2) {
                String l22 = this.f44097d.c(c4666r0.f37693c.f37142b).toString();
                boolean z10 = c4666r0.f37692b == 1;
                com.android.tools.r8.graph.N2 k02 = c4666r0.k0();
                if (k02 == null) {
                    a10 = p82.a(l22, z10);
                } else {
                    a10 = r82.a(k02.f36633f, k02.f36634g, l22, z10);
                }
                if (a10 != null) {
                    a(a10, c4666r0.f37693c);
                    a10.a();
                }
            }
        }
    }

    public final void a(Q2 q22, C4422e1 c4422e1) {
        for (C4704t0 c4704t0 : c4422e1.f37143c) {
            a(q22, c4704t0.f37738b.toString(), c4704t0.f37739c);
        }
    }

    public final void a(Q2 q22, String str, com.android.tools.r8.graph.R2 r22) {
        switch (r22.G0().ordinal()) {
            case 7:
                throw new C5417Jv0("writeAnnotationElement of DexValueMethodType");
            case 8:
                throw new C5417Jv0("writeAnnotationElement of DexValueMethodHandle");
            case 9:
                q22.a((Object) ((com.android.tools.r8.graph.L2) r22.D0().W0()).toString(), str);
                return;
            case 10:
                String l22 = this.f44097d.c((com.android.tools.r8.graph.M2) r22.E0().f36759d).toString();
                q22.a(C9663tt0.a(l22, 0, l22.length()), str);
                return;
            case 11:
                throw new C5417Jv0("writeAnnotationElement of DexValueField");
            case 12:
                throw new C5417Jv0("writeAnnotationElement of DexValueMethod");
            case 13:
                C4554l1 c4554l1 = (C4554l1) r22.t0().W0();
                if (!f44093g && this.f44097d.a(c4554l1) != c4554l1.f38298g && System.getProperty("com.android.tools.r8.tracereferences.obfuscateAllEnums") == null) {
                    throw new AssertionError((Object) ("Enum field " + ((Object) c4554l1.f38298g) + " renamed to " + ((Object) this.f44097d.a(c4554l1))));
                }
                q22.a(str, this.f44097d.c(c4554l1.getType()).toString(), c4554l1.f38298g.toString());
                return;
            case 14:
                com.android.tools.r8.graph.R2[] W02 = r22.n0().W0();
                Q2 a10 = q22.a(str);
                if (a10 != null) {
                    for (com.android.tools.r8.graph.R2 r23 : W02) {
                        a(a10, (String) null, r23);
                    }
                    a10.a();
                    return;
                }
                return;
            case 15:
                R2.a m02 = r22.m0();
                Q2 a11 = q22.a(str, this.f44097d.c(m02.f36739d.f37142b).toString());
                if (a11 != null) {
                    a(a11, m02.f36739d);
                    a11.a();
                    return;
                }
                return;
            default:
                q22.a(r22.F0(), str);
                return;
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C5313Ib c5313Ib, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        AbstractC4497i0 Q02 = h52.d().Q0();
        boolean z10 = f44093g;
        if (!z10 && !Q02.u0()) {
            throw new AssertionError();
        }
        if (!z10 && Q02.q0() <= 0) {
            throw new AssertionError();
        }
        if (Q02.u0()) {
            Q02.l0().a(h52, c5313Ib, this.f44094a, abstractC10992r0, rr, ex);
            return;
        }
        throw new C5417Jv0("The CfApplicationWriter cannot write non cf writable code " + Q02.getClass().getCanonicalName() + " for method " + h52.getReference().j0());
    }

    public final int a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return this.f44097d.c(m22).compareTo(this.f44097d.c(m23));
    }

    public final int a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (f44093g || h52.getHolder().equals(h53.getHolder())) {
            return Comparator.comparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return S8.this.b((com.android.tools.r8.graph.A2) obj);
                }
            }).thenComparing(new C4503i6()).thenComparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    com.android.tools.r8.graph.M2[] m2Arr;
                    m2Arr = ((com.android.tools.r8.graph.A2) obj).y0().f36441f.f36675b;
                    return m2Arr;
                }
            }, AbstractC8619nf.a(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return S8.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
                }
            })).compare(h52.getReference(), h53.getReference());
        }
        throw new AssertionError();
    }

    public final C5313Ib a(C4516j1 c4516j1) {
        if (!c4516j1.a1()) {
            boolean z10 = f44093g;
            if (!z10 && !this.f44098e.x().f45396a.f53764a && !this.f44098e.f50616L0.b()) {
                throw new AssertionError((Object) ("Expected class file version for " + c4516j1.getReference().j0()));
            }
            if (!z10 && !f44092f.b(this.f44098e.a(C8570nJ.f50579f2))) {
                throw new AssertionError();
            }
            if (this.f44098e.f50616L0.b()) {
                return this.f44098e.a(C8570nJ.f50579f2);
            }
            return f44092f;
        }
        return c4516j1.P0();
    }

    public static com.android.tools.r8.graph.R2 a(C4723u0 c4723u0, com.android.tools.r8.graph.M2 m22) {
        C4666r0 a10 = c4723u0.a(m22);
        if (a10 == null) {
            return null;
        }
        boolean z10 = f44093g;
        if (!z10 && a10.f37692b != 2) {
            throw new AssertionError();
        }
        C4422e1 c4422e1 = a10.f37693c;
        if (z10 || c4422e1.f37143c.length == 1) {
            return c4422e1.f37143c[0].f37739c;
        }
        throw new AssertionError();
    }
}
