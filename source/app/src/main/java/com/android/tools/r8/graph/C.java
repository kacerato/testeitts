package com.android.tools.r8.graph;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC7431gX;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.AbstractC8529n40;
import com.android.tools.r8.internal.C10137wk0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C5093Ef;
import com.android.tools.r8.internal.C5267Hf;
import com.android.tools.r8.internal.C6862d40;
import com.android.tools.r8.internal.C7093eV;
import com.android.tools.r8.internal.C7097eX;
import com.android.tools.r8.internal.C8048kB;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.InterfaceC6695c40;
import com.android.tools.r8.kotlin.C10758c0;
import com.android.tools.r8.kotlin.C10781g;
import com.android.tools.r8.naming.C10912b;
import com.bumptech.glide.load.engine.GlideException;
import java.io.BufferedReader;
import java.io.PrintStream;
import java.io.StringReader;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.openjdk.tools.doclint.DocLint;
import yd.C16181m;

public class C extends B0 {

    public static final boolean f36176l = true;

    public final boolean f36177c;

    public final boolean f36178d;

    public final boolean f36179e;

    public final boolean f36180f;

    public final boolean f36181g;

    public final C4477h f36182h;

    public final C10781g f36183i;

    public final C5267Hf f36184j;

    public final C9970vk0 f36185k;

    public C(AbstractC4780x0 abstractC4780x0, C8570nJ c8570nJ, boolean z10, boolean z11, boolean z12) {
        super(abstractC4780x0, c8570nJ);
        this.f36184j = new C5267Hf(c8570nJ);
        this.f36177c = z10;
        this.f36178d = z10;
        this.f36179e = z10;
        this.f36180f = z11;
        this.f36181g = z12;
        if (z11) {
            this.f36182h = C4477h.a(abstractC4780x0.i(), com.android.tools.r8.synthesis.E.d());
            if (c8570nJ.f50697l == null) {
                c8570nJ.f50697l = ClassFileConsumer.emptyConsumer();
            }
            c8570nJ.f50677e0.f50789a = false;
        } else {
            this.f36182h = null;
        }
        this.f36183i = new C10781g(abstractC4780x0.f38367e);
        C10912b g10 = abstractC4780x0.g();
        this.f36185k = g10 == null ? C9970vk0.f53318b : new C9970vk0(C10137wk0.a(C7093eV.a(g10), abstractC4780x0.f38366d.f50691j));
    }

    public static void a(C8048kB c8048kB, H5 h52, C6862d40 c6862d40, H5 h53, C5035Df c5035Df) {
        c8048kB.a(h52, (AbstractC8028k40) AbstractC8529n40.f50496b, (AbstractC7431gX) c6862d40, c5035Df, EW.b(c8048kB.f49522a, h52), C8659ns0.c());
    }

    @Override
    public final void b(H2 h22, PrintStream printStream) {
    }

    @Override
    public final void c(H2 h22, PrintStream printStream) {
        String str;
        String b10 = this.f36185k.b(h22.getType());
        printStream.println("# Bytecode for");
        printStream.println("# Class: '" + b10 + "'");
        if (this.f36177c) {
            H3.b N02 = h22.N0();
            if (N02 != null && N02.b()) {
                printStream.println("# Signature: " + ((Object) N02));
            }
            a(h22, h22.k0(), printStream);
            printStream.println("# Flags: '" + ((Object) h22.f36246f) + "'");
            if (h22.f36247g != this.f36143a.f38367e.f38068i2 && h22.getType() != this.f36143a.f38367e.f38068i2) {
                printStream.println("# Extends: '" + this.f36185k.b(h22.f36247g) + "'");
            }
            for (M2 m22 : h22.f36248h.f36675b) {
                printStream.println("# Implements: '" + this.f36185k.b(m22) + "'");
            }
            if (!h22.Q0().isEmpty()) {
                printStream.println("# InnerClasses:");
                for (C4425e4 c4425e4 : h22.Q0()) {
                    if (c4425e4.d() != null) {
                        str = this.f36185k.b(c4425e4.d());
                    } else {
                        str = "-";
                    }
                    printStream.println("#  Outer: " + str + ", inner: " + this.f36185k.b(c4425e4.b()) + ", inner name: " + ((Object) c4425e4.c()) + ", access: " + Integer.toHexString(c4425e4.a()));
                }
            }
            C4500i3 O02 = h22.O0();
            if (O02 != null) {
                printStream.println("# EnclosingMethod:");
                M2 m23 = O02.f37289a;
                if (m23 != null) {
                    printStream.println("#  Class: " + this.f36185k.b(m23));
                } else {
                    printStream.println("#  Method: " + this.f36185k.c(O02.a()));
                }
            }
        }
        printStream.println();
    }

    @Override
    public final void d(PrintStream printStream) {
        if (this.f36178d) {
            printStream.println(C16181m.f130230g);
            printStream.println("# Fields:");
            printStream.println(C16181m.f130230g);
        }
    }

    @Override
    public final void a(PrintStream printStream, C4460g1 c4460g1) {
        if (this.f36178d) {
            a((H2) null, c4460g1.k0(), printStream);
            printStream.print(((Object) c4460g1.f37202g) + " ");
            printStream.print(this.f36185k.d(c4460g1.getReference()));
            if (c4460g1.w0() && c4460g1.L0()) {
                printStream.print(" = " + ((Object) c4460g1.K0()));
            }
            printStream.println();
            C9970vk0 c9970vk0 = this.f36185k;
            c9970vk0.getClass();
            if (c9970vk0 != C9970vk0.f53318b) {
                printStream.println("# Residual: '" + c4460g1.getReference().j0() + "'");
            }
            C4804y5 c4804y5 = c4460g1.f37204i;
            if (c4804y5 != null) {
                if (c4804y5.f38444b.a(c4460g1.getReference())) {
                    return;
                }
                printStream.println("# Original: '" + ((Object) c4460g1.f37204i) + "'");
            }
        }
    }

    public final void a(final H5 h52) {
        final C8048kB c8048kB = new C8048kB(C4798y.a(this.f36182h));
        C7097eX c7097eX = C7097eX.f47704c;
        C5267Hf c5267Hf = this.f36184j;
        int i10 = c5267Hf.f40825d;
        c5267Hf.f40825d = i10 + 1;
        C5093Ef c5093Ef = new C5093Ef(c5267Hf, i10);
        boolean z10 = C5267Hf.f40821e;
        if (!z10) {
            c5267Hf.a(c5093Ef);
        }
        if (!z10 && c5267Hf.f40823b != Thread.currentThread()) {
            throw new AssertionError((Object) "Invoked on another thread than main");
        }
        final C6862d40 c6862d40 = new C6862d40(c7097eX, c5093Ef, AbstractC8374m80.a(h52));
        InterfaceC6695c40 interfaceC6695c40 = new InterfaceC6695c40() {
            @Override
            public final void a(H5 h53, C5035Df c5035Df) {
                C.a(C8048kB.this, h52, c6862d40, h53, c5035Df);
            }
        };
        while (!c6862d40.f48274a.f45165b.isEmpty()) {
            for (H5 h53 : c6862d40.f48274a.f45165b.values()) {
                interfaceC6695c40.a(h53, c6862d40.f47268d.a(h53));
            }
            c6862d40.g();
        }
    }

    @Override
    public final void a(PrintStream printStream, H5 h52) {
        AbstractC4497i0 Q02;
        C4516j1 d10 = h52.d();
        printStream.println(C16181m.f130230g);
        printStream.println("# Method: '" + this.f36185k.c(d10.getReference()) + "':");
        a((H2) null, d10.k0(), printStream);
        printStream.println("# " + ((Object) d10.f37314g));
        C9970vk0 c9970vk0 = this.f36185k;
        c9970vk0.getClass();
        if (c9970vk0 != C9970vk0.f53318b) {
            printStream.println("# Residual: '" + d10.getReference().j0() + "'");
        }
        printStream.println(C16181m.f130230g);
        printStream.println();
        if (this.f36181g && (Q02 = d10.Q0()) != null) {
            if (this.f36180f) {
                a(h52);
            } else {
                printStream.println(Q02.a(d10, this.f36185k));
            }
        }
    }

    public final void a(H2 h22, C4723u0 c4723u0, PrintStream printStream) {
        if (!this.f36179e || c4723u0.isEmpty()) {
            return;
        }
        printStream.println("# Annotations:");
        for (C4666r0 c4666r0 : c4723u0.f37806d) {
            C4422e1 c4422e1 = c4666r0.f37693c;
            M2 m22 = c4422e1.f37142b;
            C10781g c10781g = this.f36183i;
            M2 m23 = c10781g.f55308a.f37858F3;
            if (m22 == m23) {
                if (!f36176l && h22 == null) {
                    throw new AssertionError((Object) "Kotlin metadata is a class annotation");
                }
                if (!C10758c0.f55265a && m22 != m23) {
                    throw new AssertionError();
                }
                try {
                    printStream.println(C10758c0.a("#  ", com.android.tools.r8.kotlin.r.a(c10781g, c4422e1)));
                } catch (Throwable unused) {
                }
            } else {
                Stream<String> lines = new BufferedReader(new StringReader(c4666r0.m0() + " " + this.f36185k.b(c4666r0.l0()) + C10656zq0.a(DocLint.SEPARATOR, c4666r0.f37693c.f37143c, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C.this.a((C4704t0) obj);
                    }
                }, C10656zq0.a.f54550c))).lines();
                String str = C10656zq0.f54547c;
                printStream.print((String) lines.collect(Collectors.joining(str + "#  " + GlideException.a.f59088e, "#  ", str)));
            }
        }
    }

    @Override
    public final void c(PrintStream printStream) {
        printStream.println();
    }

    public final String a(C4704t0 c4704t0) {
        return c4704t0.k0().toString() + " = " + a(c4704t0.l0());
    }

    public final String a(R2 r22) {
        if (r22.S0()) {
            return this.f36185k.b((M2) r22.E0().W0());
        }
        if (r22 instanceof X2) {
            return this.f36185k.c(((C2) r22.z0().f36759d).m0());
        }
        if (r22 instanceof W2) {
            return this.f36185k.c((A2) r22.y0().f36759d);
        }
        if (r22 instanceof Q2) {
            return this.f36185k.b(r22.l0().f36759d);
        }
        if (r22 instanceof T2) {
            return this.f36185k.d((C4554l1) r22.t0().f36759d);
        }
        if (r22 instanceof U2) {
            return this.f36185k.d((C4554l1) r22.u0().f36759d);
        }
        if (r22 instanceof R2.b) {
            return "[" + ((Object) r22.n0()) + "]";
        }
        return r22.toString();
    }
}
