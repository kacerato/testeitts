package com.android.tools.r8.internal;

import com.android.tools.r8.C10895l2;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.InterfaceC4651q3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.origin.Origin;
import java.lang.constant.ConstantDescs;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import org.eclipse.jdt.core.Signature;

public abstract class JE {
    public static com.android.tools.r8.graph.H2 a(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;");
        ProgramResource.Kind kind = ProgramResource.Kind.CF;
        Origin unknown = Origin.unknown();
        com.android.tools.r8.graph.Q e10 = com.android.tools.r8.graph.Q.e(33);
        com.android.tools.r8.graph.M2 d11 = c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;");
        com.android.tools.r8.graph.O2 k02 = com.android.tools.r8.graph.O2.k0();
        com.android.tools.r8.graph.L2 b10 = c4724u1.b("InstrumentationServerImpl.java");
        boolean z10 = C4615o5.f37545c;
        List list = Collections.EMPTY_LIST;
        boolean z11 = C4500i3.f37288c;
        H3.b f10 = H3.b.f();
        C4723u0 l02 = C4723u0.l0();
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a10 = new C4460g1.a(true).a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.b("lines")));
        a10.f37213c = C4537k3.e(18);
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        a10.f37218h = hVar;
        C4460g1[] c4460g1Arr2 = {a10.a()};
        C4460g1.a a11 = new C4460g1.a(true).a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.b("INSTANCE")));
        a11.f37213c = C4537k3.e(26);
        a11.f37218h = hVar;
        C4460g1 a12 = a11.a();
        C4460g1.a a13 = new C4460g1.a(true).a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d(Signature.SIG_BOOLEAN), c4724u1.b("writeToLogcat")));
        a13.f37213c = C4537k3.e(10);
        a13.f37218h = hVar;
        C4460g1 a14 = a13.a();
        C4460g1.a a15 = new C4460g1.a(true).a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d(Signature.SIG_BOOLEAN), c4724u1.b("writeToLogcatIncludeDuplicates")));
        a15.f37213c = C4537k3.e(10);
        a15.f37218h = hVar;
        C4460g1 a16 = a15.a();
        C4460g1.a a17 = new C4460g1.a(true).a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/lang/String;"), c4724u1.b("logcatTag")));
        a17.f37213c = C4537k3.e(10);
        a17.f37218h = hVar;
        return new com.android.tools.r8.graph.H2(d10, kind, unknown, e10, d11, k02, b10, null, list, list, list, null, list, f10, l02, InterfaceC4651q3.a(c4460g1Arr2, new C4460g1[]{a12, a14, a16, a17.a()}), N4.a.a(b(c4724u1), c(c4724u1)), c4724u1.f37846D6, new C10895l2(), EnumC5372Jb0.f41429b);
    }

    public static C4516j1[] b(final C4724u1 c4724u1) {
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a10 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(2, true));
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        a10.f37341m = hVar;
        a10.f37340l = hVar;
        C5313Ib c5313Ib = C5313Ib.f41138i;
        a10.f37339k = c5313Ib;
        C4516j1 a11 = a10.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.a(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a12 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(9, false));
        a12.f37341m = hVar;
        a12.f37340l = hVar;
        a12.f37339k = c5313Ib;
        C4516j1 a13 = a12.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), new com.android.tools.r8.graph.M2[0]), c4724u1.b("getInstance"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.b(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a14 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(9, false));
        a14.f37341m = hVar;
        a14.f37340l = hVar;
        a14.f37339k = c5313Ib;
        C4516j1 a15 = a14.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), c4724u1.d("Ljava/lang/String;"), c4724u1.d("Ljava/lang/String;")), c4724u1.b("addCall"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.c(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a16 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(9, false));
        a16.f37341m = hVar;
        a16.f37340l = hVar;
        a16.f37339k = c5313Ib;
        C4516j1 a17 = a16.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), c4724u1.d("Ljava/lang/String;")), c4724u1.b("addMethod"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.d(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a18 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(2, false));
        a18.f37341m = hVar;
        a18.f37340l = hVar;
        a18.f37339k = c5313Ib;
        C4516j1 a19 = a18.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), c4724u1.d("Ljava/lang/String;")), c4724u1.b("addLine"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.e(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a20 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(10, false));
        a20.f37341m = hVar;
        a20.f37340l = hVar;
        a20.f37339k = c5313Ib;
        C4516j1 a21 = a20.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), c4724u1.d("Ljava/lang/String;")), c4724u1.b("writeToLogcat"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.f(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a();
        C4516j1.a a22 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(8, true));
        a22.f37341m = hVar;
        a22.f37340l = hVar;
        a22.f37339k = c5313Ib;
        return new C4516j1[]{a11, a13, a15, a17, a19, a21, a22.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.CLASS_INIT_NAME))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.g(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a()};
    }

    public static C4516j1[] c(final C4724u1 c4724u1) {
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a10 = new C4516j1.a(true).a(com.android.tools.r8.graph.L4.a(1, false));
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        a10.f37341m = hVar;
        a10.f37340l = hVar;
        a10.f37339k = C5313Ib.f41138i;
        return new C4516j1[]{a10.a(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("V"), c4724u1.d("Ljava/io/File;")), c4724u1.b("writeToFile"))).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return JE.h(C4724u1.this, (com.android.tools.r8.graph.A2) obj);
            }
        }).a()};
    }

    public static AbstractC4497i0 d(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C7437ga(184, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), new com.android.tools.r8.graph.M2[0]), c4724u1.b("getInstance")), false), new C8938pa(EnumC5477Kw0.f41824b, 0), new C7437ga(183, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b("addLine")), false), c8103ka2, new C6607bb(), c8103ka3);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 e(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        C8103ka c8103ka5 = new C8103ka();
        C8103ka c8103ka6 = new C8103ka();
        C8103ka c8103ka7 = new C8103ka();
        C8103ka c8103ka8 = new C8103ka();
        C8103ka c8103ka9 = new C8103ka();
        C8103ka c8103ka10 = new C8103ka();
        C8103ka c8103ka11 = new C8103ka();
        C8103ka c8103ka12 = new C8103ka();
        C8103ka c8103ka13 = new C8103ka();
        C8103ka c8103ka14 = new C8103ka();
        C8103ka c8103ka15 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        C9942vb c9942vb = new C9942vb(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.f37849E1, c4724u1.b("writeToLogcat")));
        NB nb2 = NB.f42527b;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        O9 o92 = new O9(nb2, enumC5477Kw0, c8103ka4);
        C9942vb c9942vb2 = new C9942vb(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.f37849E1, c4724u1.b("writeToLogcatIncludeDuplicates")));
        O9 o93 = new O9(nb2, enumC5477Kw0, c8103ka4);
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41824b;
        C8938pa c8938pa = new C8938pa(enumC5477Kw02, 1);
        C7437ga c7437ga = new C7437ga(184, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b("writeToLogcat")), false);
        C6607bb c6607bb = new C6607bb();
        G9 g92 = new G9(new C10564zF(new int[]{0, 1}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.f38052g2)}));
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw02, 0);
        T9 t92 = new T9(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.b("lines")));
        C8106kb c8106kb = new C8106kb(C8106kb.a.Dup);
        C10443yb c10443yb = new C10443yb(enumC5477Kw02, 2);
        C9438sa c9438sa = new C9438sa(XX.f45732b);
        C8938pa c8938pa3 = new C8938pa(enumC5477Kw02, 0);
        T9 t93 = new T9(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.b("lines")));
        C8938pa c8938pa4 = new C8938pa(enumC5477Kw02, 1);
        C7437ga c7437ga2 = new C7437ga(182, c4724u1.a(c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.a(c4724u1.f37849E1, c4724u1.f38068i2), c4724u1.b("add")), false);
        O9 o94 = new O9(NB.f42532g, enumC5477Kw0, c8103ka8);
        C8938pa c8938pa5 = new C8938pa(enumC5477Kw02, 2);
        XX xx = XX.f45733c;
        return new com.android.tools.r8.graph.G(m22, 2, 4, AbstractC7552hC.a(c8103ka, c9942vb, o92, c9942vb2, o93, c8103ka2, c8938pa, c7437ga, c8103ka3, c6607bb, c8103ka4, g92, c8938pa2, t92, c8106kb, c10443yb, c9438sa, c8103ka5, c8938pa3, t93, c8938pa4, c7437ga2, o94, c8103ka6, c8938pa5, new C9438sa(xx), c8103ka7, new C6607bb(), c8103ka8, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.f38052g2), InterfaceC8008jy.b(c4724u1.f38068i2)})), new C8938pa(enumC5477Kw02, 2), new C9438sa(xx), c8103ka9, new M9(c8103ka12), c8103ka10, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.f38052g2), InterfaceC8008jy.b(c4724u1.f38068i2)}), new ArrayDeque(Arrays.asList(InterfaceC8008jy.b(c4724u1.f38173v3)))), new C10443yb(enumC5477Kw02, 3), new C8938pa(enumC5477Kw02, 2), new C9438sa(xx), c8103ka11, new C8938pa(enumC5477Kw02, 3), new C4965Cb(), c8103ka12, new G9(new C10564zF(new int[]{0, 1}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.f38052g2)})), new C9942vb(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.f37849E1, c4724u1.b("writeToLogcat"))), new O9(nb2, enumC5477Kw0, c8103ka14), c8103ka13, new C8938pa(enumC5477Kw02, 1), new C7437ga(184, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b("writeToLogcat")), false), c8103ka14, new G9(new C10564zF(new int[]{0, 1}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.f38052g2)})), new C6607bb(), c8103ka15), AbstractC7552hC.a(new C5023Db(c8103ka5, c8103ka7, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka10)), new C5023Db(c8103ka8, c8103ka9, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka10)), new C5023Db(c8103ka10, c8103ka11, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka10))), C6190Xe0.f45779e);
    }

    public static AbstractC4497i0 f(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        C9942vb c9942vb = new C9942vb(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.f38052g2, c4724u1.b("logcatTag")));
        C8938pa c8938pa = new C8938pa(EnumC5477Kw0.f41824b, 0);
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Landroid/util/Log;");
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37884J1;
        com.android.tools.r8.graph.M2 m24 = c4724u1.f38052g2;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c9942vb, c8938pa, new C7437ga(184, c4724u1.a(d10, c4724u1.a(m23, m24, m24), c4724u1.b("i")), false), new C8106kb(C8106kb.a.Pop), c8103ka2, new C6607bb(), c8103ka3);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 g(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C10106wa(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new C10109wb(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.b("INSTANCE"))), new C6607bb());
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 0, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 h(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        C8103ka c8103ka5 = new C8103ka();
        C8103ka c8103ka6 = new C8103ka();
        C8103ka c8103ka7 = new C8103ka();
        C8103ka c8103ka8 = new C8103ka();
        C8103ka c8103ka9 = new C8103ka();
        C8103ka c8103ka10 = new C8103ka();
        C8103ka c8103ka11 = new C8103ka();
        C8103ka c8103ka12 = new C8103ka();
        C8103ka c8103ka13 = new C8103ka();
        C8103ka c8103ka14 = new C8103ka();
        C8103ka c8103ka15 = new C8103ka();
        C8103ka c8103ka16 = new C8103ka();
        C8103ka c8103ka17 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        C10106wa c10106wa = new C10106wa(c4724u1.d("Ljava/io/PrintWriter;"));
        C8106kb.a aVar = C8106kb.a.Dup;
        C8106kb c8106kb = new C8106kb(aVar);
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 1);
        A9 a92 = new A9(c4724u1.b("UTF-8"));
        C7437ga c7437ga = new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/io/PrintWriter;"), c4724u1.a(c4724u1.f37905M1, c4724u1.d("Ljava/io/File;"), c4724u1.f38052g2), c4724u1.b(ConstantDescs.INIT_NAME)), false);
        C10443yb c10443yb = new C10443yb(enumC5477Kw0, 2);
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw0, 0);
        T9 t92 = new T9(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.b("lines")));
        C8106kb c8106kb2 = new C8106kb(aVar);
        C10443yb c10443yb2 = new C10443yb(enumC5477Kw0, 3);
        C9438sa c9438sa = new C9438sa(XX.f45732b);
        C8938pa c8938pa3 = new C8938pa(enumC5477Kw0, 0);
        T9 t93 = new T9(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.b("lines")));
        C7437ga c7437ga2 = new C7437ga(182, c4724u1.a(c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.a(c4724u1.d("Ljava/util/Iterator;"), new com.android.tools.r8.graph.M2[0]), c4724u1.b("iterator")), false);
        C10443yb c10443yb3 = new C10443yb(enumC5477Kw0, 4);
        G9 g92 = new G9(new C10564zF(new int[]{0, 1, 2, 3, 4}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/File;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/PrintWriter;")), InterfaceC8008jy.b(c4724u1.f38068i2), InterfaceC8008jy.b(c4724u1.d("Ljava/util/Iterator;"))}));
        C8938pa c8938pa4 = new C8938pa(enumC5477Kw0, 4);
        C7437ga c7437ga3 = new C7437ga(185, c4724u1.a(c4724u1.d("Ljava/util/Iterator;"), c4724u1.a(c4724u1.f37849E1, new com.android.tools.r8.graph.M2[0]), c4724u1.b("hasNext")), true);
        O9 o92 = new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103ka7);
        C8938pa c8938pa5 = new C8938pa(enumC5477Kw0, 4);
        C7437ga c7437ga4 = new C7437ga(185, c4724u1.a(c4724u1.d("Ljava/util/Iterator;"), c4724u1.a(c4724u1.f38068i2, new com.android.tools.r8.graph.M2[0]), c4724u1.b("next")), true);
        C7710i9 c7710i9 = new C7710i9(c4724u1.f38052g2);
        C10443yb c10443yb4 = new C10443yb(enumC5477Kw0, 5);
        C8938pa c8938pa6 = new C8938pa(enumC5477Kw0, 2);
        C8938pa c8938pa7 = new C8938pa(enumC5477Kw0, 5);
        C7437ga c7437ga5 = new C7437ga(182, c4724u1.a(c4724u1.d("Ljava/io/PrintWriter;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b("println")), false);
        M9 m92 = new M9(c8103ka4);
        G9 g93 = new G9(new C10564zF(new int[]{0, 1, 2, 3}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/File;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/PrintWriter;")), InterfaceC8008jy.b(c4724u1.f38068i2)}));
        C8938pa c8938pa8 = new C8938pa(enumC5477Kw0, 3);
        XX xx = XX.f45733c;
        return new com.android.tools.r8.graph.G(m22, 4, 8, AbstractC7552hC.a(c8103ka, c10106wa, c8106kb, c8938pa, a92, c7437ga, c10443yb, c8103ka2, c8938pa2, t92, c8106kb2, c10443yb2, c9438sa, c8103ka3, c8938pa3, t93, c7437ga2, c10443yb3, c8103ka4, g92, c8938pa4, c7437ga3, o92, c8938pa5, c7437ga4, c7710i9, c10443yb4, c8103ka5, c8938pa6, c8938pa7, c7437ga5, c8103ka6, m92, c8103ka7, g93, c8938pa8, new C9438sa(xx), c8103ka8, new M9(c8103ka11), c8103ka9, new G9(new C10564zF(new int[]{0, 1, 2, 3}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/File;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/PrintWriter;")), InterfaceC8008jy.b(c4724u1.f38068i2)}), new ArrayDeque(Arrays.asList(InterfaceC8008jy.b(c4724u1.f38173v3)))), new C10443yb(enumC5477Kw0, 6), new C8938pa(enumC5477Kw0, 3), new C9438sa(xx), c8103ka10, new C8938pa(enumC5477Kw0, 6), new C4965Cb(), c8103ka11, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/File;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/PrintWriter;"))})), new C8938pa(enumC5477Kw0, 2), new C7437ga(182, c4724u1.a(c4724u1.d("Ljava/io/PrintWriter;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b("close")), false), c8103ka12, new M9(c8103ka16), c8103ka13, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/File;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/PrintWriter;"))}), new ArrayDeque(Arrays.asList(InterfaceC8008jy.b(c4724u1.f38173v3)))), new C10443yb(enumC5477Kw0, 7), c8103ka14, new C8938pa(enumC5477Kw0, 2), new C7437ga(182, c4724u1.a(c4724u1.d("Ljava/io/PrintWriter;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b("close")), false), c8103ka15, new C8938pa(enumC5477Kw0, 7), new C4965Cb(), c8103ka16, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/File;")), InterfaceC8008jy.b(c4724u1.d("Ljava/io/PrintWriter;"))})), new C6607bb(), c8103ka17), AbstractC7552hC.a(new C5023Db(c8103ka3, c8103ka8, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka9)), new C5023Db(c8103ka9, c8103ka10, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka9)), new C5023Db(c8103ka2, c8103ka11, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka13)), new C5023Db(c8103ka13, c8103ka14, new C5920Sm0(c4724u1.f38173v3), new C5920Sm0(c8103ka13))), C6190Xe0.f45779e);
    }

    public static AbstractC4497i0 c(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        C10106wa c10106wa = new C10106wa(c4724u1.f37857F2);
        C8106kb c8106kb = new C8106kb(C8106kb.a.Dup);
        C7437ga c7437ga = new C7437ga(183, c4724u1.a(c4724u1.f37857F2, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false);
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        com.android.tools.r8.graph.M2 m23 = c4724u1.f37857F2;
        C7437ga c7437ga2 = new C7437ga(182, c4724u1.a(m23, c4724u1.a(m23, c4724u1.f38052g2), c4724u1.b("append")), false);
        A9 a92 = new A9(c4724u1.b(" -> "));
        com.android.tools.r8.graph.M2 m24 = c4724u1.f37857F2;
        C7437ga c7437ga3 = new C7437ga(182, c4724u1.a(m24, c4724u1.a(m24, c4724u1.f38052g2), c4724u1.b("append")), false);
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw0, 1);
        com.android.tools.r8.graph.M2 m25 = c4724u1.f37857F2;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c10106wa, c8106kb, c7437ga, c8938pa, c7437ga2, a92, c7437ga3, c8938pa2, new C7437ga(182, c4724u1.a(m25, c4724u1.a(m25, c4724u1.f38052g2), c4724u1.b("append")), false), new C7437ga(182, c4724u1.a(c4724u1.f37857F2, c4724u1.a(c4724u1.f38052g2, new com.android.tools.r8.graph.M2[0]), c4724u1.b("toString")), false), new C7437ga(184, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.b("writeToLogcat")), false), c8103ka2, new C6607bb(), c8103ka3);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 2, 2, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C8938pa(enumC5477Kw0, 0), new C7437ga(183, c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServer;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), c8103ka2, new C8938pa(enumC5477Kw0, 0), new C10106wa(c4724u1.d("Ljava/util/LinkedHashSet;")), new C8106kb(C8106kb.a.Dup), new C7437ga(183, c4724u1.a(c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.b(ConstantDescs.INIT_NAME)), false), new U9(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Ljava/util/LinkedHashSet;"), c4724u1.b("lines"))), c8103ka3, new C6607bb(), c8103ka4, new W9[0]);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 3, 1, a10, c6190Xe0, c6190Xe0);
    }

    public static AbstractC4497i0 b(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, new C9942vb(c4724u1.a(c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.d("Lcom/android/tools/r8/startup/InstrumentationServerImpl;"), c4724u1.b("INSTANCE"))), new C6440ab(EnumC5477Kw0.f41824b));
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 1, 0, a10, c6190Xe0, c6190Xe0);
    }
}
