package com.android.tools.r8.shaking;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.errors.InterfaceDesugarMissingTypeDiagnostic;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.experimental.graphinfo.KeepRuleGraphNode;
import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.AbstractC4401d;
import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.AbstractC4783x3;
import com.android.tools.r8.graph.C4344a;
import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4463g4;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4612o2;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4690s5;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4804y5;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.graph.H4;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.graph.InterfaceC4444f4;
import com.android.tools.r8.graph.InterfaceC4478h0;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AE;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AV;
import com.android.tools.r8.internal.AZ;
import com.android.tools.r8.internal.AbstractC10051wB;
import com.android.tools.r8.internal.AbstractC10241xK;
import com.android.tools.r8.internal.AbstractC10385yB;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC4982Ch;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC5773Qa;
import com.android.tools.r8.internal.AbstractC5947Ta;
import com.android.tools.r8.internal.AbstractC7024e3;
import com.android.tools.r8.internal.AbstractC7103ea;
import com.android.tools.r8.internal.AbstractC7160et;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.AbstractC9462si;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.BZ;
import com.android.tools.r8.internal.C10224xD;
import com.android.tools.r8.internal.C10245xM;
import com.android.tools.r8.internal.C10294xh;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10404yI;
import com.android.tools.r8.internal.C10444yb0;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C4902Az;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5076Dz;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5442Kf0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C5470Kt;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C5485La0;
import com.android.tools.r8.internal.C5541Ma;
import com.android.tools.r8.internal.C5615Nf0;
import com.android.tools.r8.internal.C5658Oa0;
import com.android.tools.r8.internal.C5711Oy;
import com.android.tools.r8.internal.C5779Qc;
import com.android.tools.r8.internal.C5889Sa;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C6176Wz0;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6520b10;
import com.android.tools.r8.internal.C6678bz;
import com.android.tools.r8.internal.C6845cz;
import com.android.tools.r8.internal.C6858d3;
import com.android.tools.r8.internal.C6880dA0;
import com.android.tools.r8.internal.C6937da;
import com.android.tools.r8.internal.C7139em;
import com.android.tools.r8.internal.C7207f80;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7374g80;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C7753iR;
import com.android.tools.r8.internal.C7829iu;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C7996ju;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C8104ka0;
import com.android.tools.r8.internal.C8271la0;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8461mi;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8572nK;
import com.android.tools.r8.internal.C8623ng0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8664nu;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.C8769oZ;
import com.android.tools.r8.internal.C8906pK;
import com.android.tools.r8.internal.C8962pi;
import com.android.tools.r8.internal.C9103qZ;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.CT;
import com.android.tools.r8.internal.CZ;
import com.android.tools.r8.internal.DI;
import com.android.tools.r8.internal.DM;
import com.android.tools.r8.internal.DZ;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.EZ;
import com.android.tools.r8.internal.EnumC10677zx0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.FZ;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.InterfaceC10104wZ;
import com.android.tools.r8.internal.InterfaceC10110wb0;
import com.android.tools.r8.internal.InterfaceC10271xZ;
import com.android.tools.r8.internal.InterfaceC10438yZ;
import com.android.tools.r8.internal.InterfaceC10605zZ;
import com.android.tools.r8.internal.InterfaceC4889As0;
import com.android.tools.r8.internal.InterfaceC5121Es0;
import com.android.tools.r8.internal.InterfaceC5237Gs0;
import com.android.tools.r8.internal.InterfaceC5426Ka;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC6522b2;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.InterfaceC7328ft0;
import com.android.tools.r8.internal.InterfaceC7339fx;
import com.android.tools.r8.internal.InterfaceC8005jx;
import com.android.tools.r8.internal.InterfaceC8739oK;
import com.android.tools.r8.internal.InterfaceC9323rr0;
import com.android.tools.r8.internal.InterfaceC9943vb0;
import com.android.tools.r8.internal.JI;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.internal.PH;
import com.android.tools.r8.internal.Q70;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.R70;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.V31;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W60;
import com.android.tools.r8.internal.WY;
import com.android.tools.r8.internal.X70;
import com.android.tools.r8.internal.Y10;
import com.android.tools.r8.internal.Z70;
import com.android.tools.r8.ir.optimize.C10706f;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.synthesis.C11549b;
import com.android.tools.r8.synthesis.C11555d;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class N {

    public static final boolean f56757p0 = true;

    public final C11433t2 f56763F;

    public final Set f56765H;

    public final M f56768K;

    public final Set f56769L;

    public final Set f56770M;

    public final Set f56771N;

    public final M f56774Q;

    public final L f56775R;

    public L0 f56776S;

    public final C11316m3 f56777T;

    public final C11500x1 f56780W;

    public final boolean f56784a;

    public final a f56786b;

    public final C7996ju f56788c;

    public C4514j f56792e;

    public final C4798y f56794f;

    public final S0 f56795f0;

    public final S f56796g;

    public final com.android.tools.r8.internal.Y9 f56797g0;

    public final ExecutorService f56798h;

    public com.android.tools.r8.graph.Y5 f56800i;

    public final C8570nJ f56802j;

    public D4 f56804k;

    public final JI f56805k0;

    public final InterfaceC11246i0 f56806l;

    public C11211g f56808m;

    public final M70 f56809m0;

    public final C4690s5 f56812o;

    public final IdentityHashMap f56790d = new IdentityHashMap();

    public final C4594n3 f56810n = new C4594n3();

    public final IdentityHashMap f56814p = new IdentityHashMap();

    public final Set f56815q = AbstractC5513Ll0.c();

    public List f56816r = Collections.EMPTY_LIST;

    public AbstractC7024e3 f56817s = C6858d3.f47261a;

    public final IdentityHashMap f56818t = new IdentityHashMap();

    public final IdentityHashMap f56819u = new IdentityHashMap();

    public final IdentityHashMap f56820v = new IdentityHashMap();

    public final P f56821w = new P();

    public final Set f56822x = C4875Al0.b(new com.android.tools.r8.graph.J2[0]);

    public final Set f56823y = AbstractC5513Ll0.c();

    public final P f56824z = new P();

    public final P f56758A = new P();

    public final P f56759B = new P();

    public final Set f56760C = AbstractC5513Ll0.c();

    public final Set f56761D = AbstractC5513Ll0.c();

    public final Set f56762E = AbstractC5513Ll0.c();

    public Set f56764G = AbstractC5513Ll0.c();

    public final Set f56766I = AbstractC5513Ll0.c();

    public final IdentityHashMap f56767J = new IdentityHashMap();

    public final Set f56772O = AbstractC5513Ll0.c();

    public final Set f56773P = AbstractC5513Ll0.c();

    public final AbstractC8374m80 f56778U = AbstractC8374m80.c();

    public final IdentityHashMap f56779V = new IdentityHashMap();

    public final A f56781X = new A();

    public final Set f56782Y = AbstractC5513Ll0.c();

    public final IdentityHashMap f56783Z = new IdentityHashMap();

    public final Set f56785a0 = AbstractC5513Ll0.c();

    public final Set f56787b0 = AbstractC5513Ll0.c();

    public final IdentityHashMap f56789c0 = new IdentityHashMap();

    public final IdentityHashMap f56791d0 = new IdentityHashMap();

    public final IdentityHashMap f56793e0 = new IdentityHashMap();

    public final AbstractC8374m80 f56799h0 = AbstractC8374m80.c();

    public final AbstractC8374m80 f56801i0 = AbstractC8374m80.c();

    public final C7541h80 f56803j0 = C7541h80.l();

    public final Thread f56807l0 = Thread.currentThread();

    public final HashMap f56811n0 = new HashMap();

    public final LinkedHashMap f56813o0 = new LinkedHashMap();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        public static final a f56825b = new a(0, "INITIAL_TREE_SHAKING");

        public static final a f56826c = new a(1, "FINAL_TREE_SHAKING");

        public static final a f56827d = new a(2, "INITIAL_MAIN_DEX_TRACING");

        public static final a f56828e = new a(3, "FINAL_MAIN_DEX_TRACING");

        public static final a f56829f = new a(4, "GENERATE_MAIN_DEX_LIST");

        public static final a f56830g = new a(5, "WHY_ARE_YOU_KEEPING");

        public a(int i10, String str) {
        }

        public final boolean a() {
            return this == f56826c;
        }

        public boolean b() {
            return this == f56825b;
        }

        public final boolean c() {
            return this == f56827d || this == f56828e || this == f56829f;
        }
    }

    public N(C4798y c4798y, M70 m70, ExecutorService executorService, com.android.tools.r8.graph.Y5 y52, GraphConsumer graphConsumer, a aVar, Set set, K4 k42) {
        if (!f56757p0 && c4798y.f38410c == null) {
            throw new AssertionError();
        }
        C8570nJ E10 = c4798y.E();
        this.f56792e = (C4514j) c4798y.f();
        this.f56794f = c4798y.L();
        this.f56786b = aVar;
        this.f56809m0 = m70;
        C8570nJ E11 = c4798y.E();
        this.f56796g = !E11.W() ? new G() : (E11.S() || (E11.T() && !aVar.b())) ? new T(c4798y, this, aVar) : new G();
        this.f56798h = executorService;
        this.f56800i = y52;
        this.f56784a = E10.f50674d1;
        final S0 s02 = new S0(c4798y, graphConsumer);
        this.f56795f0 = s02;
        this.f56763F = new C11433t2(((C4514j) c4798y.f()).f37305h.f57888a);
        this.f56802j = E10;
        this.f56780W = new C11500x1(new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), AV.f38624c, E10.f50599F1.f50850W ? new C11449u1() : new C11466v1());
        this.f56806l = c();
        this.f56776S = new C11465v0(this);
        this.f56777T = (aVar.b() && E10.f50674d1) ? new C11316m3() : null;
        this.f56765H = set;
        if (E10.S()) {
            C10444yb0 c10444yb0 = c4798y.f38400O;
            InterfaceC9943vb0 interfaceC9943vb0 = new InterfaceC9943vb0() {
                @Override
                public final boolean a(String str, Origin origin) {
                    return N.this.b(str, origin);
                }
            };
            boolean z10 = C10444yb0.f54054s;
            if (!z10 && c10444yb0.f54064j != null) {
                throw new AssertionError();
            }
            c10444yb0.f54064j = interfaceC9943vb0;
            InterfaceC10110wb0 interfaceC10110wb0 = new InterfaceC10110wb0() {
                @Override
                public final void a(String str, Origin origin) {
                    N.this.a(str, origin);
                }
            };
            if (!z10 && c10444yb0.f54065k != null) {
                throw new AssertionError();
            }
            c10444yb0.f54065k = interfaceC10110wb0;
        }
        C7829iu c7829iu = new C7829iu();
        if (aVar.b() || aVar.a()) {
            I i10 = new I(this);
            if (c4798y.E().a().f40654a) {
                com.android.tools.r8.internal.W2 w22 = new com.android.tools.r8.internal.W2(c4798y);
                c7829iu.f49097i.add(w22);
                c7829iu.f49099k.add(w22);
                c7829iu.f49100l.add(w22);
                c7829iu.f49101m.add(w22);
                c7829iu.f49103o.add(w22);
                c7829iu.f49104p.add(w22);
                c7829iu.f49106r.add(w22);
            }
            AbstractC7552hC abstractC7552hC = C5779Qc.f43634e;
            if (aVar.b() && C10706f.a(c4798y.E())) {
                C8696o40 c8696o40 = C8696o40.f51162b;
                C5779Qc c5779Qc = new C5779Qc(c4798y);
                c7829iu.f49092d.add(c5779Qc);
                c7829iu.f49101m.add(c5779Qc);
            }
            if (aVar.b() && C8461mi.a(c4798y)) {
                C8962pi c8962pi = new C8962pi(c4798y);
                c7829iu.f49101m.add(c8962pi);
                c7829iu.f49108t.add(c8962pi);
            }
            C6678bz.a(c4798y, c7829iu);
            C8570nJ E12 = c4798y.E();
            if (E12.f50688i != null && E12.B().f().f56573e) {
                com.android.tools.r8.graph.S3 s32 = new com.android.tools.r8.graph.S3(i10);
                c7829iu.f49098j.add(s32);
                c7829iu.f49100l.add(s32);
                c7829iu.f49101m.add(s32);
                c7829iu.f49104p.add(s32);
                c7829iu.f49106r.add(s32);
            }
            C8570nJ E13 = c4798y.E();
            if (!E13.P() || !E13.z().d(com.android.tools.r8.internal.C2.L)) {
                c7829iu.f49092d.add(new C4902Az(c4798y, this));
            }
            Set set2 = c4798y.f38421n != null ? c4798y.G().f56402l : Collections.EMPTY_SET;
            if (set2 != null && !set2.isEmpty()) {
                V0 v02 = new V0(c4798y, this, executorService);
                c7829iu.f49098j.add(v02);
                c7829iu.f49100l.add(v02);
                c7829iu.f49101m.add(v02);
                c7829iu.f49105q.add(v02);
                c7829iu.f49106r.add(v02);
                c7829iu.f49108t.add(v02);
            }
            if (c4798y.E().f50680f0 && aVar.b()) {
                C10224xD c10224xD = new C10224xD(c4798y);
                c7829iu.f49102n.add(c10224xD);
                c7829iu.f49107s.add(c10224xD);
            } else {
                c4798y.f38391F = null;
            }
            if (!c4798y.E().z().d(com.android.tools.r8.internal.C2.L)) {
                c7829iu.f49094f.add(new C8572nK(c4798y, this));
            }
            C8570nJ E14 = c4798y.E();
            if (E14.I() && E14.f50718s.f43762b) {
                C8906pK c8906pK = new C8906pK(c4798y);
                c7829iu.f49092d.add(c8906pK);
                c7829iu.f49094f.add(c8906pK);
                c7829iu.f49089a.add(c8906pK);
                c7829iu.f49090b.add(c8906pK);
                c7829iu.f49091c.add(c8906pK);
                c7829iu.f49093e.add(c8906pK);
                c7829iu.f49095g.add(c8906pK);
            }
            C8696o40 c8696o402 = com.android.tools.r8.kotlin.V.f55193e;
            C8570nJ E15 = c4798y.E();
            if (E15.f50688i != null && !E15.f50729v1.f51751a) {
                c7829iu.f49107s.add(new com.android.tools.r8.kotlin.V(c4798y, i10, set));
            }
            if (c4798y.E().a0().f50798b) {
                C8104ka0 c8104ka0 = new C8104ka0(c4798y);
                c7829iu.f49098j.add(c8104ka0);
                c7829iu.f49101m.add(c8104ka0);
                c7829iu.f49108t.add(c8104ka0);
            }
            if (c4798y.E().f50672d != null && c4798y.E().f50682g.isOptimizedShrinking() && aVar.b()) {
                c7829iu.f49092d.add(new C5615Nf0(c4798y, this));
            }
            if (c4798y.E().f50672d != null && c4798y.E().S() && aVar.a()) {
                c7829iu.f49100l.add(new C5442Kf0(c4798y));
            }
            if (k42 != null) {
                c7829iu.f49089a.add(k42);
                c7829iu.f49091c.add(k42);
                c7829iu.f49093e.add(k42);
            }
            C11212g0 c11212g0 = new C11212g0(c4798y, this);
            c7829iu.f49094f.add(c11212g0);
            c7829iu.f49096h.add(c11212g0);
            c7829iu.f49107s.add(c11212g0);
            X x10 = new X(c4798y, this);
            c7829iu.f49094f.add(x10);
            c7829iu.f49096h.add(x10);
            if (E10.f50610J0) {
                V v10 = new V(c4798y, this);
                c7829iu.f49094f.add(v10);
                c7829iu.f49096h.add(v10);
            }
        }
        this.f56788c = c7829iu.a();
        this.f56768K = new M(this, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                S0.this.a((C4516j1) obj, (X1) obj2);
            }
        });
        this.f56769L = Collections.newSetFromMap(new IdentityHashMap(0));
        this.f56770M = Collections.newSetFromMap(new IdentityHashMap(2));
        this.f56771N = Collections.newSetFromMap(new IdentityHashMap(0));
        this.f56774Q = new M(this, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                S0.this.a((C4516j1) obj, (X1) obj2);
            }
        });
        this.f56775R = new L(this, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                S0.this.a((C4460g1) obj, (X1) obj2);
            }
        });
        if (aVar.b()) {
            this.f56797g0 = com.android.tools.r8.internal.Y9.a(c4798y);
            int a10 = C10404yI.a(c4798y.E());
            this.f56805k0 = a10 != 3 ? new JI(c4798y, a10) : null;
        } else {
            this.f56797g0 = C5470Kt.f41798a;
            this.f56805k0 = null;
        }
        this.f56812o = new C4690s5(aVar.b(), s02);
    }

    public static AbstractC4780x0 a(AbstractC4780x0 abstractC4780x0) {
        return abstractC4780x0;
    }

    public static AbstractC4780x0 b(AbstractC4780x0 abstractC4780x0) {
        return abstractC4780x0;
    }

    public static X1 d(com.android.tools.r8.graph.H5 h52) {
        return new T1(h52.d());
    }

    public static C7207f80 i(com.android.tools.r8.graph.H2 h22) {
        return new C7207f80(new IdentityHashMap());
    }

    public final void c(AbstractC4780x0 abstractC4780x0) {
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        Iterator it = this.f56821w.a().iterator();
        while (it.hasNext()) {
            c6286Yx0.b((C6286Yx0) it.next());
        }
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) c6286Yx0.c();
            if (!f56757p0) {
                a(e02, c6286Yx0, abstractC4780x0);
            }
        }
    }

    public final void e(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = ((C4514j) this.f56794f.f()).g(m22);
        if (g10 == null) {
            this.f56763F.f57843c.add(m22);
        } else if (g10.v1()) {
            a(g10.z(), true, (BiConsumer) new W9(this));
        }
    }

    public final void f(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        if (!f56757p0 && !this.f56821w.f56875a.contains(holder)) {
            throw new AssertionError();
        }
    }

    public final com.android.tools.r8.graph.Y5 g() {
        return com.android.tools.r8.graph.Y5.a((C4798y<? extends C4514j>) this.f56794f);
    }

    public final void j() {
        if (this.f56811n0.isEmpty()) {
            return;
        }
        Iterator it = this.f56821w.f56875a.iterator();
        while (it.hasNext()) {
            C9406sK k10 = ((com.android.tools.r8.graph.H2) it.next()).k(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return N.this.c((C4516j1) obj);
                }
            });
            CK a10 = JK.a(k10.f52337b.iterator(), k10.f52338c);
            while (a10.f43396b.hasNext()) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                C11500x1 c11500x1 = this.f56780W;
                c11500x1.getClass();
                I1 a11 = c11500x1.a(h52.getHolder(), h52.d());
                if (a11.c(this.f56802j) || a11.e(this.f56802j) || a11.b(this.f56802j)) {
                    V1 v12 = new V1((Origin) this.f56811n0.get(h52.getReference().t0()));
                    H1 h12 = (H1) ((H1) ((H1) I1.f56549D.d().h()).i()).g();
                    h12.f57791b.add(v12);
                    a(h52, (H1) h12.m());
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.Map, java.lang.Object] */
    public final void l(com.android.tools.r8.graph.H2 h22) {
        do {
            C7207f80 c7207f80 = (C7207f80) this.f56819u.get(h22);
            if (c7207f80 != null) {
                Q1 q12 = new Q1(h22.f36245e);
                Iterator it = c7207f80.f47879b.values().iterator();
                while (it.hasNext()) {
                    a((com.android.tools.r8.graph.F5) it.next(), h22, q12);
                }
            }
            com.android.tools.r8.graph.M2 m22 = h22.f36247g;
            if (m22 == null || (h22 = b(m22, (com.android.tools.r8.graph.D5) h22)) == null) {
                return;
            }
        } while (!this.f56812o.c(h22));
    }

    public final void m(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f56757p0;
        if (!z10 && h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        q(h22);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(com.android.tools.r8.graph.H2 h22) {
        Iterator it;
        if (h22.isInterface()) {
            o(h22);
            return;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) h22);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            if (!h23.isInterface()) {
                com.android.tools.r8.graph.H5 h10 = h23.h(h23.L0());
                R0 a10 = this.f56795f0.a(h23, h10);
                if (this.f56824z.a(h23, a10)) {
                    if (h10 != null) {
                        C4516j1 d10 = h10.d();
                        d10.L0();
                        if (d10.f37320m.C()) {
                            b(a10, h10);
                        }
                    }
                    it = h23.z0().iterator();
                    while (it.hasNext()) {
                    }
                }
            } else if (p(h23)) {
                it = h23.z0().iterator();
                while (it.hasNext()) {
                    com.android.tools.r8.graph.H2 b10 = b((com.android.tools.r8.graph.M2) it.next(), (com.android.tools.r8.graph.D5) h23);
                    if (b10 != null) {
                        c6286Yx0.b((C6286Yx0) b10);
                    }
                }
            }
        }
    }

    public final void o(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.H5 h10 = h22.h(h22.L0());
        R0 a10 = this.f56795f0.a(h22, h10);
        if (this.f56758A.a(h22, a10) && h10 != null) {
            C4516j1 d10 = h10.d();
            d10.L0();
            if (d10.f37320m.C()) {
                if (!this.f56759B.f56875a.contains(h22) || !h22.b0().b(new com.android.tools.r8.graph.F7())) {
                    b(a10, h10);
                    return;
                }
                if (f56757p0) {
                    return;
                }
                M m10 = this.f56774Q;
                m10.getClass();
                if (!m10.f56716a.contains(h10.d())) {
                    throw new AssertionError();
                }
            }
        }
    }

    public final boolean p(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.H5 h10 = h22.h(h22.L0());
        R0 a10 = this.f56795f0.a(h22, h10);
        if (!this.f56759B.a(h22, a10)) {
            return false;
        }
        if (h10 != null) {
            C4516j1 d10 = h10.d();
            d10.L0();
            if (d10.f37320m.C() && h22.b0().b(new com.android.tools.r8.graph.F7())) {
                if (this.f56758A.f56875a.contains(h22)) {
                    if (!f56757p0) {
                        M m10 = this.f56774Q;
                        m10.getClass();
                        if (!m10.f56716a.contains(h10.d())) {
                            throw new AssertionError();
                        }
                    }
                    return true;
                }
                b(a10, h10);
            }
        }
        return true;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 129
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:64)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public final void q(com.android.tools.r8.graph.H2 r4) {
        /*
            r3 = this;
            java.util.Set r0 = r3.f56823y
            com.android.tools.r8.internal.Yx0 r1 = new com.android.tools.r8.internal.Yx0
            r1.<init>(r0)
            com.android.tools.r8.graph.Q r0 = r4.getAccessFlags()
            boolean r0 = r0.J()
            if (r0 == 0) goto L15
            r1.b(r4)
            goto L59
        L15:
            com.android.tools.r8.shaking.Z r0 = new com.android.tools.r8.shaking.Z
            r0.<init>(r4)
            r3.a(r0)
            com.android.tools.r8.graph.O2 r0 = r4.R0()
            java.util.Iterator r0 = r0.iterator()
        L25:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L3f
            java.lang.Object r2 = r0.next()
            com.android.tools.r8.graph.M2 r2 = (com.android.tools.r8.graph.M2) r2
            com.android.tools.r8.graph.E0 r2 = r3.a(r2, r4)
            com.android.tools.r8.graph.H2 r2 = com.android.tools.r8.graph.H2.a(r2)
            if (r2 == 0) goto L25
            r1.b(r2)
            goto L25
        L3f:
            com.android.tools.r8.graph.M2 r4 = r4.f36247g
            if (r4 == 0) goto L4e
            com.android.tools.r8.graph.y r0 = r3.f56794f
            com.android.tools.r8.graph.E0 r4 = r0.g(r4)
            com.android.tools.r8.graph.H2 r4 = com.android.tools.r8.graph.H2.a(r4)
            goto L4f
        L4e:
            r4 = 0
        L4f:
            if (r4 == 0) goto L59
            com.android.tools.r8.graph.s5 r0 = r3.f56812o
            boolean r0 = r0.c(r4)
            if (r0 == 0) goto L15
        L59:
            boolean r4 = r1.b()
            if (r4 == 0) goto L8f
            java.lang.Object r4 = r1.c()
            com.android.tools.r8.graph.H2 r4 = (com.android.tools.r8.graph.H2) r4
            com.android.tools.r8.shaking.Z r0 = new com.android.tools.r8.shaking.Z
            r0.<init>(r4)
            r3.a(r0)
            com.android.tools.r8.graph.O2 r0 = r4.R0()
            java.util.Iterator r0 = r0.iterator()
        L75:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L59
            java.lang.Object r2 = r0.next()
            com.android.tools.r8.graph.M2 r2 = (com.android.tools.r8.graph.M2) r2
            com.android.tools.r8.graph.E0 r2 = r3.a(r2, r4)
            com.android.tools.r8.graph.H2 r2 = com.android.tools.r8.graph.H2.a(r2)
            if (r2 == 0) goto L75
            r1.b(r2)
            goto L75
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.tools.r8.shaking.N.q(com.android.tools.r8.graph.H2):void");
    }

    public final void r(com.android.tools.r8.graph.H2 h22) {
        if (!h22.isInterface()) {
            if (!f56757p0 && this.f56767J.containsKey(h22)) {
                throw new AssertionError();
            }
            return;
        }
        Set set = (Set) this.f56767J.remove(h22);
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                d(h22, this.f56795f0.a(h22, (com.android.tools.r8.graph.H2) it.next()));
            }
        }
    }

    public final void s(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.E0 a10;
        com.android.tools.r8.graph.M2 m22 = h22.f36247g;
        if (m22 != null && (a10 = a(m22, (com.android.tools.r8.graph.D5) h22)) != null && a10.isInterface()) {
            this.f56802j.f50691j.warning(new StringDiagnostic("Class " + h22.j0() + " extends " + a10.j0() + " which is an interface"));
        }
        for (com.android.tools.r8.graph.M2 m23 : h22.f36248h.f36675b) {
            com.android.tools.r8.graph.E0 a11 = a(m23, (com.android.tools.r8.graph.D5) h22);
            if (a11 != null && !a11.isInterface()) {
                this.f56802j.f50691j.warning(new StringDiagnostic("Class " + h22.j0() + " implements " + a11.j0() + " which is not an interface"));
            }
        }
    }

    public static X1 a(R0 r02) {
        return r02;
    }

    public final void b(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        final W1 w12 = new W1(h52.d());
        com.android.tools.r8.graph.Z4 b10 = b(a22, h52, w12);
        b10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(w12, h52, (com.android.tools.r8.graph.Z4) obj);
            }
        });
        for (InterfaceC5121Es0 interfaceC5121Es0 : this.f56788c.f49399f) {
            interfaceC5121Es0.a(b10, h52);
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52) {
        c(m22, d52, new C11439t8(this), new E8(this));
    }

    public final Set g(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f56820v.get(h22);
        if (h52 != null) {
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            int i10 = QC.f43505c;
            return new C5978Tm0(reference);
        }
        com.android.tools.r8.graph.M2 type = h22.getType();
        int i11 = QC.f43505c;
        return new C5978Tm0(type);
    }

    public final void h() {
        this.f56817s.a(this);
    }

    public final void i() {
        this.f56817s.b(this);
    }

    public final void k() {
        for (C11530z c11530z : this.f56813o0.values()) {
            com.android.tools.r8.graph.H5 h52 = c11530z.f58011a;
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            holder.f36252l.f36638b.c(h52.d());
            this.f56809m0.a(h52, c11530z.f58012b);
        }
        this.f56813o0.clear();
    }

    public final boolean a(AbstractC11161d0 abstractC11161d0) {
        if (abstractC11161d0 == null || (abstractC11161d0 instanceof C11144c0)) {
            return true;
        }
        if (abstractC11161d0.b()) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f56794f.g(abstractC11161d0.a().f57123a));
            if (a10 == null) {
                return false;
            }
            if (abstractC11161d0 instanceof C11110a0) {
                return this.f56821w.f56875a.contains(a10);
            }
            if (abstractC11161d0 instanceof Z) {
                return this.f56812o.d(a10);
            }
        }
        if (f56757p0) {
            return false;
        }
        throw new AssertionError();
    }

    public final boolean d(com.android.tools.r8.graph.H2 h22) {
        InterfaceC4364b0 b10 = b(h22.f36245e, h22, new C11439t8(this), new E8(this));
        boolean z10 = f56757p0;
        if (!z10 && !b10.X()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 v10 = b10.v();
        if (z10 || v10 == null || v10.f0()) {
            return v10 != null;
        }
        throw new AssertionError();
    }

    public final boolean f(com.android.tools.r8.graph.H2 h22) {
        return this.f56821w.f56875a.contains(h22);
    }

    public static boolean c(C11280k1 c11280k1) {
        return !((C11263j1) c11280k1.f57790a).f57445p;
    }

    public final void g(final com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        d(holder, this.f56795f0.a(holder, (com.android.tools.r8.graph.D5) h52));
        Iterator<com.android.tools.r8.graph.M2> it = h52.d().V0().iterator();
        while (it.hasNext()) {
            c(it.next(), (com.android.tools.r8.graph.D5) h52);
        }
        c(h52.d().u1(), (com.android.tools.r8.graph.D5) h52);
        b((com.android.tools.r8.graph.D5) h52);
        h52.d().U0().d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(h52, (C4666r0) obj);
            }
        });
        b(h52);
        if (d(h52.getHolder())) {
            C4516j1 d10 = h52.d();
            d10.L0();
            if (d10.f37314g.h()) {
                return;
            }
            this.f56780W.b(h52);
        }
    }

    public final void d() {
        if (this.f56794f.E().W()) {
            return;
        }
        C11280k1 c11280k1 = (C11280k1) C11297l1.f57491t.d().i();
        final C11365p1 c11365p1 = (C11365p1) C11382q1.f57709o.c().i();
        final H1 h12 = (H1) I1.f56549D.d().i();
        final C11144c0 c11144c0 = C11144c0.f57206a;
        for (com.android.tools.r8.graph.H2 h22 : ((C4514j) this.f56794f.f()).d()) {
            com.android.tools.r8.synthesis.J g10 = this.f56794f.f38408a.g();
            g10.getClass();
            if (g10.g(h22.f36245e)) {
                com.android.tools.r8.synthesis.J g11 = this.f56794f.f38408a.g();
                if (!com.android.tools.r8.synthesis.J.f58083g) {
                    g11.getClass();
                    if (!g11.g(h22.f36245e)) {
                        throw new AssertionError();
                    }
                }
                C11555d c11555d = g11.f58086c;
                if (!c11555d.f58244e.contains(h22.getType())) {
                }
            }
            if (!f56757p0) {
                c11280k1.a(this.f56802j);
            }
            a(h22, c11280k1.f57792c, (AbstractC4365b1) null);
            h22.f(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(c11365p1, c11144c0, (com.android.tools.r8.graph.F5) obj);
                }
            }, EnumC6871d70.f47286b);
            h22.l(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(h12, c11144c0, (com.android.tools.r8.graph.H5) obj);
                }
            });
        }
    }

    public final InterfaceC4364b0 b(com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.E5 e52, final BiConsumer biConsumer, BiConsumer biConsumer2) {
        InterfaceC4364b0 f10 = ((C4514j) this.f56794f.f()).f(m22);
        if (f10.X()) {
            f10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    BiConsumer.this.accept((com.android.tools.r8.graph.E0) obj, e52);
                }
            });
            return f10;
        }
        biConsumer2.accept(m22, e52);
        return f10;
    }

    public final void e(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.H5 h52) {
        if (a(m22, h52, new InterfaceC6522b2() {
            @Override
            public final void a() {
                N.this.c(m22, h52);
            }
        })) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f56794f.g(m22));
            if (a10 != null) {
                this.f56762E.add(a10);
                return;
            }
            return;
        }
        com.android.tools.r8.graph.E0 a11 = a(m22, h52, 3, new L1(h52.d()));
        for (InterfaceC5237Gs0 interfaceC5237Gs0 : this.f56788c.f49400g) {
            ((C8906pK) interfaceC5237Gs0).b(a11, h52);
        }
    }

    public final void f(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.F5 f52, C11365p1 c11365p1) {
        if (a(abstractC11161d0)) {
            e(abstractC11161d0, f52, c11365p1);
        } else {
            this.f56781X.a(abstractC11161d0).a(f52.getReference()).a(c11365p1);
        }
        abstractC11161d0.getClass();
        if (abstractC11161d0 instanceof C11144c0) {
            c(abstractC11161d0, f52, c11365p1);
        }
    }

    public final InterfaceC11246i0 c() {
        if (this.f56786b.a()) {
            return (InterfaceC11246i0) this.f56794f.b(new InterfaceC11246i0() {
                @Override
                public final C11498x a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, N n10, com.android.tools.r8.androidapi.a aVar) {
                    return new C11498x(c4798y, h52, n10, aVar);
                }
            }, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return N.a((C6845cz) obj);
                }
            });
        }
        return new InterfaceC11246i0() {
            @Override
            public final C11498x a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, N n10, com.android.tools.r8.androidapi.a aVar) {
                return new C11498x(c4798y, h52, n10, aVar);
            }
        };
    }

    public final void a(X1 x12, com.android.tools.r8.graph.H5 h52) {
        a(h52);
        if (this.f56768K.a(x12, h52)) {
            M m10 = this.f56774Q;
            m10.getClass();
            if (!m10.f56716a.contains(h52.d())) {
                g(h52);
            }
            if (this.f56784a && !h52.getAccessFlags().H() && h52.getHolder().isInterface()) {
                L0 l02 = this.f56776S;
                this.f56795f0.getClass();
                l02.a(h52, h52, R0.f56919a);
            }
            for (FZ fz : this.f56788c.f49411r) {
                fz.a(h52);
            }
        }
    }

    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E5 e52) {
        c(m22, e52, new C11439t8(this), new E8(this));
    }

    public final boolean b(String str, Origin origin) {
        if (!C4932Bl.E(str)) {
            return false;
        }
        com.android.tools.r8.graph.H2 b10 = this.f56794f.b(this.f56794f.b().d(C4932Bl.H(str)));
        if (b10 != null) {
            V1 v12 = new V1(origin);
            d(C11144c0.f57206a, b10, (C11280k1) ((C11280k1) C11297l1.f57491t.d().g()).s().h());
            if (!b10.f36246f.H() && !b10.isInterface()) {
                this.f56776S.a(b10, null, 5, v12);
                if (b10.a(com.android.tools.r8.graph.M2.f36589h) != null) {
                    com.android.tools.r8.graph.H5 H12 = b10.H1();
                    this.f56776S.a(H12.getReference(), H12, v12);
                }
            } else {
                d(b10, v12);
            }
            C9406sK K12 = b10.K1();
            CK a10 = JK.a(K12.f52337b.iterator(), K12.f52338c);
            while (a10.f43396b.hasNext()) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                d(C11144c0.f57206a, h52, (H1) I1.f56549D.d().h());
                a(v12, h52);
                b(v12, h52);
            }
        }
        return b10 != null;
    }

    public final void a(C11530z c11530z) {
        com.android.tools.r8.graph.H5 h52 = c11530z.f58011a;
        com.android.tools.r8.graph.H5 h53 = c11530z.f58012b;
        if (this.f56804k.a(h53, this.f56802j) || h52 == h53 || this.f56813o0.containsKey(h52.d().getReference())) {
            return;
        }
        this.f56813o0.put(h52.d().getReference(), c11530z);
    }

    public final C4514j f() {
        return this.f56792e.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.b((AbstractC4780x0) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.E0 e(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52) {
        if (m22.E0()) {
            return e(m22.a(this.f56794f.b()), d52);
        }
        if (!m22.I0()) {
            return null;
        }
        C4798y c4798y = this.f56794f;
        com.android.tools.r8.graph.E0 a10 = d52.a();
        c4798y.getClass();
        if (m22 != a10.f36245e) {
            a10 = c4798y.a(m22);
        }
        if (a10 != null) {
            a(a10, d52);
        }
        return a10;
    }

    public static InterfaceC11246i0 a(C6845cz c6845cz) {
        return C8271la0.f50005r;
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22) {
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) h22);
        while (c6286Yx0.b()) {
            final com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            com.android.tools.r8.graph.H5 e10 = h23.e(a22);
            if (e10 != null) {
                if (!e10.d().k1().d()) {
                    e10.d().a(AbstractC9530t40.f52517a);
                    C8570nJ c8570nJ = this.f56802j;
                    if (c8570nJ.f50640T0 && c8570nJ.R()) {
                        this.f56804k.a(e10);
                    }
                }
            }
            h23.e(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(h23, c6286Yx0, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
    }

    public final void e(com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f56757p0;
        if (!z10 && !h52.d().f1()) {
            C4516j1 d10 = h52.d();
            if (!z10 && d10.f1()) {
                throw new AssertionError((Object) "Class initializers are never targeted");
            }
            if (!z10 && !this.f56768K.f56716a.contains(d10)) {
                throw new AssertionError();
            }
        }
        if (z10) {
            return;
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        if (!z10 && !this.f56821w.f56875a.contains(holder)) {
            throw new AssertionError();
        }
    }

    public final void c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E5 e52, BiConsumer biConsumer, BiConsumer biConsumer2) {
        if (m22 == null) {
            return;
        }
        if (m22.E0()) {
            m22 = m22.a(this.f56794f.b());
        }
        if (m22.I0()) {
            a(m22, e52, biConsumer, biConsumer2);
        }
    }

    public final C11297l1 c(com.android.tools.r8.graph.H2 h22) {
        return this.f56780W.a(h22);
    }

    public final void c(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x, K1 k12) {
        if (c11498x == null || c11498x.l(a22)) {
            C4724u1 b10 = this.f56794f.b();
            if (!a22.a(b10.f37922O4.f36332n) && !a22.a(b10.f37929P4.f36362a)) {
                if (b10.f37922O4.f36333o.contains(a22)) {
                    this.f56815q.add(a22);
                    this.f56778U.add((AbstractC8374m80) h52);
                }
            } else {
                this.f56778U.add((AbstractC8374m80) h52);
            }
            c(a22.s0(), (com.android.tools.r8.graph.D5) h52);
            com.android.tools.r8.graph.Z4 a10 = a(a22, false, h52, (X1) k12);
            for (InterfaceC5121Es0 interfaceC5121Es0 : this.f56788c.f49399f) {
                interfaceC5121Es0.b(a22, a10, h52);
            }
        }
    }

    public final void a(Function function, com.android.tools.r8.graph.C4 c42) {
        com.android.tools.r8.graph.H5 H10 = c42.f36195b.H();
        if (H10 != null) {
            this.f56776S.a(H10, H10, (X1) function.apply(H10));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean e(com.android.tools.r8.graph.H2 h22) {
        return ((Boolean) this.f56790d.computeIfAbsent(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean valueOf;
                valueOf = Boolean.valueOf(C4932Bl.A(((com.android.tools.r8.graph.H2) obj).getType().V0()));
                return valueOf;
            }
        })).booleanValue();
    }

    public final void e(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H2 h22, C11280k1 c11280k1) {
        if (a(abstractC11161d0)) {
            d(abstractC11161d0, h22, c11280k1);
        } else {
            this.f56781X.a(abstractC11161d0).a(h22.getType()).a(c11280k1);
        }
        abstractC11161d0.getClass();
        if (abstractC11161d0 instanceof C11144c0) {
            b(abstractC11161d0, h22, c11280k1);
        }
    }

    public final void a(final AbstractC11128b1 abstractC11128b1, com.android.tools.r8.graph.M2 m22, List list, final C8659ns0 c8659ns0) {
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) m22);
        c6286Yx0.b((Iterable) list);
        while (c6286Yx0.b()) {
            ((C4514j) this.f56794f.f()).f((com.android.tools.r8.graph.M2) c6286Yx0.c()).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(c8659ns0, abstractC11128b1, c6286Yx0, (com.android.tools.r8.graph.E0) obj);
                }
            });
        }
    }

    public final void d(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        EnumC10677zx0 enumC10677zx0;
        EnumC10677zx0 enumC10677zx02;
        boolean z10 = f56757p0;
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        EnumC10677zx0 enumC10677zx03 = (EnumC10677zx0) this.f56783Z.get(m22);
        if (enumC10677zx03 == null) {
            com.android.tools.r8.graph.H2 b10 = b(m22, (com.android.tools.r8.graph.D5) h52);
            if (b10 == null) {
                if (!z10) {
                    throw new AssertionError();
                }
                return;
            }
            IdentityHashMap identityHashMap = this.f56783Z;
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            if (m22.z0().equals(holder.f36245e.z0())) {
                enumC10677zx02 = EnumC10677zx0.f54589e;
            } else if (this.f56792e.b(holder.f36245e, m22)) {
                enumC10677zx02 = EnumC10677zx0.f54587c;
            } else {
                enumC10677zx02 = EnumC10677zx0.f54586b;
            }
            identityHashMap.put(m22, enumC10677zx02);
            d(b10, this.f56795f0.a(b10, (com.android.tools.r8.graph.D5) h52));
            k(b10);
            return;
        }
        EnumC10677zx0 enumC10677zx04 = EnumC10677zx0.f54586b;
        if (enumC10677zx03 == enumC10677zx04) {
            return;
        }
        com.android.tools.r8.graph.H2 holder2 = h52.getHolder();
        if (m22.z0().equals(holder2.f36245e.z0())) {
            enumC10677zx0 = EnumC10677zx0.f54589e;
        } else {
            enumC10677zx0 = this.f56792e.b(holder2.f36245e, m22) ? EnumC10677zx0.f54587c : enumC10677zx04;
        }
        if (!z10) {
            enumC10677zx0.getClass();
            if (enumC10677zx0 == EnumC10677zx0.f54588d) {
                throw new AssertionError();
            }
        }
        enumC10677zx0.getClass();
        if (enumC10677zx0 == enumC10677zx04) {
            this.f56783Z.put(m22, enumC10677zx0);
            return;
        }
        EnumC10677zx0 enumC10677zx05 = EnumC10677zx0.f54587c;
        if (enumC10677zx03 == enumC10677zx05) {
            return;
        }
        if (enumC10677zx0 == enumC10677zx05) {
            this.f56783Z.put(m22, enumC10677zx0);
        } else {
            if (!z10 && enumC10677zx03 != EnumC10677zx0.f54589e) {
                throw new AssertionError();
            }
            if (!z10 && enumC10677zx0 != EnumC10677zx0.f54589e) {
                throw new AssertionError();
            }
        }
    }

    public final com.android.tools.r8.graph.H2 b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52) {
        com.android.tools.r8.graph.E0 a10 = a(m22, d52);
        if (a10 == null || !a10.e0()) {
            return null;
        }
        return a10.d0();
    }

    public final void a(BiConsumer biConsumer, com.android.tools.r8.graph.F0 f02) {
        com.android.tools.r8.graph.M2 type = f02.getReference().getType();
        InterfaceC4478h0 i10 = f02.i();
        Set set = this.f56761D;
        Objects.requireNonNull(set);
        a(type, i10, new W8(set), biConsumer);
    }

    public final com.android.tools.r8.graph.E0 b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        return a(m22, h52, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.c((com.android.tools.r8.graph.E0) obj, (com.android.tools.r8.graph.E5) obj2);
            }
        }, new R7(this));
    }

    public final void a(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.F5 f52, C11365p1 c11365p1) {
        if (!f56757p0) {
            c11365p1.a(this.f56802j);
        }
        AbstractC4365b1 a10 = abstractC11161d0.a((C4514j) this.f56794f.f());
        L0 l02 = this.f56776S;
        S0 s02 = this.f56795f0;
        HashSet hashSet = c11365p1.f57791b;
        Set<L3> set = c11365p1.f57792c;
        C4460g1 d10 = f52.d();
        if (!S0.f56950k) {
            s02.getClass();
            if (hashSet.isEmpty() && set.isEmpty() && s02.f56952b.W()) {
                throw new AssertionError();
            }
        }
        if (s02.f56953c != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                s02.a(d10, (X1) it.next());
            }
            for (L3 l32 : set) {
                if (s02.f56953c != null) {
                    KeepRuleGraphNode a11 = s02.a(a10, l32);
                    s02.a(a11, s02.a(d10.getReference()), s02.a(a11));
                }
            }
        }
        l02.a(f52);
    }

    public final void c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        this.f56776S.b(m22, h52);
    }

    public final void c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52) {
        com.android.tools.r8.graph.H2 b10;
        if (m22.E0()) {
            c(m22.a(this.f56794f.b()), d52);
        } else if (m22.I0() && (b10 = b(m22, d52)) != null) {
            d(b10, this.f56795f0.a(b10, d52));
        }
    }

    public final void e(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H5 h52, H1 h12) {
        if (a(abstractC11161d0)) {
            d(abstractC11161d0, h52, h12);
        } else {
            this.f56781X.a(abstractC11161d0).a(h52.getReference()).a(h12);
        }
        abstractC11161d0.getClass();
        if (abstractC11161d0 instanceof C11144c0) {
            c(abstractC11161d0, h52, h12);
        }
    }

    public static boolean a(C4554l1 c4554l1, C4613o3 c4613o3) {
        return c4554l1 != c4613o3.f37536a || c4613o3 == C4613o3.f37534e;
    }

    public static M4 c(com.android.tools.r8.graph.M2 m22) {
        return new M4(null);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        b(a22, h52, new P1(h52.d())).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a((com.android.tools.r8.graph.Z4) obj);
            }
        });
    }

    public final boolean c(C4516j1 c4516j1) {
        return c4516j1.V0().size() == 1 && c4516j1.j(0).a(this.f56792e.b().f38086k4) && this.f56811n0.containsKey(c4516j1.C0());
    }

    public static void a(com.android.tools.r8.internal.C7 c72, D3.a aVar) {
        com.android.tools.r8.graph.F0 a10 = com.android.tools.r8.graph.F0.a(aVar.f36224c, aVar.f36225d);
        if (!c72.b() || (a10 instanceof com.android.tools.r8.graph.F5)) {
            c72.a((com.android.tools.r8.internal.C7) a10);
        }
    }

    public final long e() {
        return this.f56821w.a().size() + this.f56774Q.f56716a.size() + this.f56775R.f56689a.size() + this.f56822x.size();
    }

    public final void c(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E5 e52) {
        if (e02.e0()) {
            return;
        }
        a(e02.z(), true, (BiConsumer) new W9(this));
    }

    public final void a(X1 x12, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, Boolean bool) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(((C4514j) this.f56794f.f()).g(m22));
        if (a10 != null) {
            a(a10, x12);
        }
    }

    public final void c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E5 e52) {
        Set set;
        if (!f56757p0 && this.f56786b.a() && !this.f56763F.f57841a.contains(m22) && !this.f56794f.b().f38001a.contains(m22) && !this.f56764G.contains(m22) && ((set = this.f56765H) == null || !set.contains(m22))) {
            throw new AssertionError((Object) ("Unexpected missing class `" + m22.j0() + "`"));
        }
        if (e52.B() && e52.getContext().I() && e52.getContext().b().d().F0()) {
            com.android.tools.r8.synthesis.J g10 = this.f56794f.f38408a.g();
            com.android.tools.r8.graph.H2 a10 = e52.getContext().g().a();
            g10.getClass();
            if (!g10.g(a10.f36245e)) {
                this.f56763F.f57843c.add(m22);
                return;
            }
        }
        this.f56763F.a(m22, e52);
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (h52.d().c1()) {
            a(h52, h52.d().W0());
        } else {
            if (h52.d().F0()) {
                return;
            }
            a(h52.getReference());
        }
    }

    public final void a(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H5 h52, H1 h12) {
        if (!f56757p0) {
            h12.a(this.f56802j);
        }
        AbstractC4365b1 a10 = abstractC11161d0.a((C4514j) this.f56794f.f());
        L0 l02 = this.f56776S;
        S0 s02 = this.f56795f0;
        HashSet hashSet = h12.f57791b;
        Set<L3> set = h12.f57792c;
        C4516j1 d10 = h52.d();
        if (!S0.f56950k) {
            s02.getClass();
            if (hashSet.isEmpty() && set.isEmpty() && s02.f56952b.W()) {
                throw new AssertionError();
            }
        }
        if (s02.f56953c != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                s02.a(d10, (X1) it.next());
            }
            for (L3 l32 : set) {
                if (s02.f56953c != null) {
                    KeepRuleGraphNode a11 = s02.a(a10, l32);
                    s02.a(a11, s02.a(d10.getReference()), s02.a(a11));
                }
            }
        }
        l02.a(R0.f56919a, h52);
    }

    public final void a(String str, Origin origin) {
        this.f56811n0.put(this.f56794f.b().b(str), origin);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.E5 e52) {
        a(a22, e52, new C11439t8(this), new E8(this));
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.E5 e52, BiConsumer biConsumer, BiConsumer biConsumer2) {
        c(a22.f38297f, e52, biConsumer, biConsumer2);
        c(a22.f36127i.f36440e, e52, biConsumer, biConsumer2);
        for (com.android.tools.r8.graph.M2 m22 : a22.f36127i.f36441f.f36675b) {
            c(m22, e52, biConsumer, biConsumer2);
        }
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52) {
        return a(m22, d52, new C11439t8(this), new E8(this));
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E5 e52, BiConsumer biConsumer, BiConsumer biConsumer2) {
        boolean z10 = f56757p0;
        if (z10 || z10 || Thread.currentThread() == this.f56807l0) {
            return b(m22, e52, biConsumer, biConsumer2).D();
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(com.android.tools.r8.graph.H2 h22, X1 x12) {
        if (!f56757p0 && h22 == null) {
            throw new AssertionError();
        }
        a(h22, (M4) this.f56793e0.computeIfAbsent(h22.getType(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.b((com.android.tools.r8.graph.M2) obj);
            }
        }), this.f56795f0.a(h22, x12));
    }

    public final boolean a(com.android.tools.r8.graph.F5 f52, Predicate predicate) {
        AbstractC11415s1 abstractC11415s1 = (AbstractC11415s1) this.f56781X.b(C11416s2.f57793b).f57795a.getOrDefault(f52.getReference(), null);
        C11365p1 b10 = abstractC11415s1 != null ? abstractC11415s1.b() : null;
        return b10 != null && predicate.test(b10);
    }

    public static Map d(com.android.tools.r8.graph.M2 m22) {
        return new IdentityHashMap();
    }

    public final void b(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.H5 h52, final C11498x c11498x) {
        if (a(a22.f38297f, h52, new InterfaceC6522b2() {
            @Override
            public final void a() {
                N.this.a(a22, h52, c11498x);
            }
        })) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f56794f.g(a22.f38297f));
            if (a10 != null) {
                this.f56762E.add(a10);
                return;
            }
            return;
        }
        a(a22, h52, c11498x, X1.a(h52));
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, final C8659ns0 c8659ns0) {
        c8659ns0.a("Transition methods", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                N.this.b(h22, c8659ns0);
            }
        });
        c8659ns0.a("Transition fields", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                N.this.l(h22);
            }
        });
        c8659ns0.a("Transition dependent items", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                N.this.m(h22);
            }
        });
    }

    public final void d(X1 x12, com.android.tools.r8.graph.H5 h52) {
        if (!f56757p0 && h52.d().d1()) {
            x12.getClass();
            if (!x12.b()) {
                throw new AssertionError();
            }
        }
        this.f56776S.a(h52, h52, x12);
    }

    public final void a(InterfaceC4440f0 interfaceC4440f0, boolean z10, BiConsumer biConsumer) {
        C6286Yx0 c6286Yx0 = new C6286Yx0(this.f56760C);
        c6286Yx0.b((C6286Yx0) interfaceC4440f0);
        while (c6286Yx0.b()) {
            a((InterfaceC4440f0) c6286Yx0.c(), c6286Yx0, biConsumer, z10);
        }
    }

    public final void c(com.android.tools.r8.graph.H2 h22, X1 x12) {
        com.android.tools.r8.graph.H5 e10 = h22.e(b(h22));
        if (e10 != null) {
            this.f56776S.a(x12, e10);
            this.f56780W.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((H1) ((H1) ((H1) obj).g()).h()).i();
                }
            }, e10);
            if (this.f56802j.R()) {
                this.f56804k.a(e10);
            }
        }
    }

    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x, K1 k12) {
        if (c11498x == null || c11498x.j(a22)) {
            C4724u1 b10 = this.f56794f.b();
            com.android.tools.r8.graph.G1 g12 = b10.f37922O4;
            if (a22 != g12.f36320b && a22 != g12.f36321c && !b10.f37999Z4.f36126b.contains(a22)) {
                if (a22 == b10.f38023c5.f37477a) {
                    this.f56778U.add((AbstractC8374m80) h52);
                } else {
                    C4612o2 c4612o2 = b10.f38120o6;
                    if (a22 == c4612o2.f37530a || a22 == c4612o2.f37531b || a22 == c4612o2.f37532c) {
                        this.f56778U.add((AbstractC8374m80) h52);
                    }
                }
            } else {
                this.f56815q.add(a22);
                this.f56778U.add((AbstractC8374m80) h52);
            }
            c(a22.s0(), (com.android.tools.r8.graph.D5) h52);
            com.android.tools.r8.graph.Z4 a10 = a(a22, h52, k12);
            for (InterfaceC5121Es0 interfaceC5121Es0 : this.f56788c.f49399f) {
                interfaceC5121Es0.c(a22, a10, h52);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(InterfaceC4440f0 interfaceC4440f0, final C6286Yx0 c6286Yx0, final BiConsumer biConsumer, boolean z10) {
        a(interfaceC4440f0);
        if (z10) {
            if (interfaceC4440f0.f0()) {
                C4725u2 G10 = interfaceC4440f0.G();
                com.android.tools.r8.graph.M2 m22 = G10.f36247g;
                if (m22 != null) {
                    a(m22, G10);
                }
                for (com.android.tools.r8.graph.M2 m23 : G10.f36248h.f36675b) {
                    a(m23, G10);
                }
            }
            for (CZ cz : this.f56788c.f49408o) {
                ((com.android.tools.r8.internal.W2) cz).a(interfaceC4440f0);
            }
            interfaceC4440f0.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(biConsumer, (com.android.tools.r8.graph.F0) obj);
                }
            });
            interfaceC4440f0.c(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(biConsumer, (com.android.tools.r8.graph.H0) obj);
                }
            });
        }
        Iterator it = ((com.android.tools.r8.graph.E0) interfaceC4440f0).z0().iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.M2) it.next(), interfaceC4440f0, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6286Yx0.this.b((C6286Yx0) obj);
                }
            }, biConsumer);
        }
    }

    public final void a(C8659ns0 c8659ns0) {
        if (this.f56786b.b()) {
            final Q q10 = new Q(this.f56794f.k());
            c8659ns0.a("Desugar", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    N.this.b(q10);
                }
            });
            c8659ns0.a("Synthesize interface method bridges", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    N.this.k();
                }
            });
            if (q10.f56895c.isEmpty() && q10.f56896d.isEmpty() && q10.f56898f.isEmpty() && q10.f56899g.isEmpty()) {
                return;
            }
            C4514j c4514j = (C4514j) c8659ns0.a("Rebuild AppInfo", new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return N.this.f();
                }
            });
            this.f56792e = c4514j;
            this.f56794f.b(c4514j);
            this.f56800i = (com.android.tools.r8.graph.Y5) c8659ns0.a("Create SubtypingInfo", new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return N.this.g();
                }
            });
            c8659ns0.a("Enqueue work items", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    N.this.c(q10);
                }
            });
        }
    }

    public final C11349o2 c(ExecutorService executorService, C8659ns0 c8659ns0) {
        boolean z10 = f56757p0;
        if (!z10) {
            C7996ju c7996ju = this.f56788c;
            if (!com.android.tools.r8.internal.X3.a(c7996ju.f49394a) || !com.android.tools.r8.internal.X3.a(c7996ju.f49395b) || !com.android.tools.r8.internal.X3.a(c7996ju.f49396c) || !com.android.tools.r8.internal.X3.a(c7996ju.f49397d) || !com.android.tools.r8.internal.X3.a(c7996ju.f49398e) || !com.android.tools.r8.internal.X3.a(c7996ju.f49399f) || !com.android.tools.r8.internal.X3.a(c7996ju.f49400g) || !com.android.tools.r8.internal.X3.a(c7996ju.f49402i) || !com.android.tools.r8.internal.X3.a(c7996ju.f49403j) || !com.android.tools.r8.internal.X3.a(c7996ju.f49404k) || !com.android.tools.r8.internal.X3.a(c7996ju.f49405l) || !com.android.tools.r8.internal.X3.a(c7996ju.f49406m) || !com.android.tools.r8.internal.X3.a(c7996ju.f49407n) || !com.android.tools.r8.internal.X3.a(c7996ju.f49408o) || !com.android.tools.r8.internal.X3.a(c7996ju.f49409p) || !com.android.tools.r8.internal.X3.a(c7996ju.f49410q) || !com.android.tools.r8.internal.X3.a(c7996ju.f49411r) || !com.android.tools.r8.internal.X3.a(c7996ju.f49412s) || !com.android.tools.r8.internal.X3.a(c7996ju.f49413t)) {
                throw new AssertionError();
            }
        }
        if (!z10 && !this.f56786b.c()) {
            throw new AssertionError();
        }
        B4 b42 = this.f56794f.f38423p;
        this.f56804k = b42;
        a(b42);
        b(executorService, c8659ns0);
        this.f56802j.f50691j.a();
        C11349o2 f10 = ((C4514j) this.f56794f.f()).f();
        f10.getClass();
        final C11315m2 c11315m2 = new C11315m2(f10.f57585e);
        this.f56821w.a().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11315m2.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
        a aVar = this.f56786b;
        aVar.getClass();
        if (aVar == a.f56827d) {
            Set set = this.f56774Q.f56716a;
            if (C8570nJ.b()) {
                set = Collections.unmodifiableSet(set);
            }
            set.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.a(C11315m2.this, (C4516j1) obj);
                }
            });
        } else if (!z10 && !((C4514j) this.f56794f.f()).f().f57585e) {
            a aVar2 = this.f56786b;
            aVar2.getClass();
            if (aVar2 != a.f56829f) {
                throw new AssertionError();
            }
        }
        C11366p2 c11366p2 = new C11366p2(this.f56794f, c11315m2.f57528b, c11315m2);
        c11366p2.a();
        c11366p2.b();
        return c11315m2.a(this.f56792e.f().f57581a);
    }

    public final void a(BiConsumer biConsumer, com.android.tools.r8.graph.H0 h02) {
        InterfaceC4478h0 i10 = h02.i();
        com.android.tools.r8.graph.M2 E10 = h02.E();
        Set set = this.f56761D;
        Objects.requireNonNull(set);
        a(E10, i10, new W8(set), biConsumer);
        Iterator<com.android.tools.r8.graph.M2> it = h02.C().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            Set set2 = this.f56761D;
            Objects.requireNonNull(set2);
            a(next, i10, new W8(set2), biConsumer);
        }
    }

    public final void b(final C4554l1 c4554l1, final com.android.tools.r8.graph.H5 h52, final J j10, final K k10) {
        boolean a10;
        if ((k10.f56663b & 1) == 0) {
            if (j10.a()) {
                a10 = a(c4554l1, h52, true, false);
            } else {
                a10 = a(c4554l1, h52, false, false);
            }
            if (!a10) {
                return;
            }
        }
        final com.android.tools.r8.graph.D3 a11 = a(c4554l1, h52);
        if (this.f56794f.E().a0().f50797a) {
            if (((Boolean) this.f56794f.a(Boolean.FALSE, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return N.this.a(a11, (C5711Oy) obj);
                }
            })).booleanValue()) {
                this.f56762E.add(a11.r().getHolder());
                return;
            }
        }
        if (this.f56796g.a(c4554l1, a11, h52, j10, k10)) {
            if (f56757p0) {
                return;
            }
            if ((k10.f56663b & 1) != 0) {
                throw new AssertionError();
            }
            return;
        }
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.b(c4554l1, h52, j10, k10, (D3.a) obj);
            }
        };
        a11.a(consumer, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.b(c4554l1, h52, (AbstractC4783x3) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, InterfaceC4478h0 interfaceC4478h0, final Consumer consumer, BiConsumer biConsumer) {
        if (m22.E0()) {
            m22 = m22.a(this.f56794f.b());
        }
        if (m22.I0()) {
            InterfaceC4364b0 f10 = this.f56794f.f().f(m22);
            if (!f10.X()) {
                biConsumer.accept(m22, interfaceC4478h0);
            } else {
                f10.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        N.a(Consumer.this, (com.android.tools.r8.graph.E0) obj);
                    }
                });
            }
        }
    }

    public static void a(Consumer consumer, com.android.tools.r8.graph.E0 e02) {
        if (e02.e0()) {
            return;
        }
        consumer.accept(e02.z());
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, T1 t12) {
        com.android.tools.r8.graph.H2 b10;
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(b(m22, h52));
        if (a10 != null && !a10.w1()) {
            d(C11144c0.f57206a, a10, (C11280k1) C11297l1.f57491t.d().q().v().e());
        }
        for (com.android.tools.r8.graph.M2 m23 : this.f56794f.f38410c.a(m22)) {
            if (m23.I0() && (b10 = b(m23, (com.android.tools.r8.graph.D5) h52)) != null) {
                this.f56776S.a(b10, null, 5, t12);
                if (b10.a(com.android.tools.r8.graph.M2.f36589h) != null) {
                    com.android.tools.r8.graph.H5 H12 = b10.H1();
                    this.f56776S.a(H12.getReference(), H12, t12);
                }
                com.android.tools.r8.graph.H5 H13 = b10.H1();
                if (H13 != null) {
                    d(C11144c0.f57206a, H13, (H1) I1.f56549D.d().h());
                }
            }
        }
    }

    public final void b(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, J j10, K k10, D3.a aVar) {
        this.f56788c.a(c4554l1, aVar, h52, this.f56776S, j10);
        com.android.tools.r8.graph.F0 a10 = com.android.tools.r8.graph.F0.a(aVar.f36224c, aVar.f36225d);
        boolean z10 = f56757p0;
        com.android.tools.r8.graph.E0 e02 = aVar.f36223b;
        if (e02 != a10.getHolder() && e02.e0()) {
            com.android.tools.r8.graph.H2 d02 = e02.d0();
            d(d02, this.f56795f0.a(d02, (com.android.tools.r8.graph.D5) h52));
        }
        com.android.tools.r8.graph.F5 W10 = a10.W();
        if (W10 == null) {
            return;
        }
        if (!z10 && this.f56786b.a() && W10.d().f37207l.i()) {
            throw new AssertionError((Object) ("Unexpected reference in `" + h52.r() + "` to field marked dead: " + W10.getReference().j0()));
        }
        int i10 = k10.f56663b;
        if ((i10 & 2) != 0) {
            C4613o3 c4613o3 = (C4613o3) this.f56810n.f37507a.get(W10.getReference());
            c4613o3.getClass();
            if (j10.a()) {
                c4613o3.f37537b |= 2;
            } else {
                c4613o3.f37537b |= 4;
            }
        } else if ((i10 & 8) != 0) {
            if (!z10 && !j10.a()) {
                throw new AssertionError();
            }
            this.f56780W.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11280k1) ((C11280k1) ((C11280k1) obj).g()).h()).i();
                }
            }, W10.getHolder());
            this.f56780W.a(W10, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11365p1) ((C11365p1) ((C11365p1) obj).g()).h()).i();
                }
            });
        }
        a(W10, h52, new R1(h52.d()));
    }

    public final void c(com.android.tools.r8.graph.H5 h52, H1 h12) {
        e(C11144c0.f57206a, h52, h12);
    }

    public final void c(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.F5 f52, C11365p1 c11365p1) {
        if ((this.f56802j.W() || this.f56786b.c()) && !c11365p1.f57790a.g()) {
            if (!f56757p0) {
                c11365p1.a(this.f56802j);
            }
            a(abstractC11161d0, f52, c11365p1);
        }
    }

    public final void c(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H5 h52, H1 h12) {
        if ((this.f56802j.W() || this.f56786b.c()) && !h12.f57790a.g()) {
            if (!f56757p0) {
                h12.a(this.f56802j);
            }
            a(abstractC11161d0, h52, h12);
            if (h52.d().j1()) {
                Set set = h12.f57792c;
                com.android.tools.r8.graph.H2 holder = h52.getHolder();
                d(C11144c0.f57206a, holder, (C11280k1) C11297l1.f57491t.d().h());
                a(holder, set, h52.d());
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, Set set, AbstractC4365b1 abstractC4365b1) {
        S0 s02 = this.f56795f0;
        if (!S0.f56950k) {
            s02.getClass();
            if (set.isEmpty() && s02.f56952b.W()) {
                throw new AssertionError();
            }
        }
        if (s02.f56953c != null) {
            Iterator<E> it = set.iterator();
            while (it.hasNext()) {
                L3 l32 = (L3) it.next();
                if (s02.f56953c != null) {
                    KeepRuleGraphNode a10 = s02.a(abstractC4365b1, l32);
                    s02.a(a10, s02.a(h22.f36245e), s02.a(a10));
                }
            }
        }
        R0 r02 = R0.f56919a;
        if (h22.f36246f.H()) {
            this.f56776S.a(h22);
            return;
        }
        if (h22.isInterface()) {
            this.f56776S.b(h22);
            return;
        }
        this.f56776S.a(h22, null, 1, r02);
        if (h22.a(com.android.tools.r8.graph.M2.f36589h) != null) {
            com.android.tools.r8.graph.H5 H12 = h22.H1();
            if (this.f56784a) {
                H1 d10 = I1.f56549D.d();
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    L3 l33 = (L3) it2.next();
                    if (!(l33 instanceof C10245xM) && !l33.D().equals(O3.f56854c)) {
                        d10.f57792c.add(l33);
                        d10.m();
                    }
                }
                if (!d10.f57792c.isEmpty()) {
                    L0 l02 = this.f56776S;
                    this.f56795f0.a(H12);
                    l02.a(R0.f56919a, H12);
                    d(C11144c0.f57206a, H12, (H1) d10.h());
                }
            }
            C4514j c4514j = (C4514j) this.f56794f.f();
            if (c4514j.c(h22.f36245e, c4514j.b().f38040e6)) {
                this.f56776S.a(H12, H12, r02);
                d(C11144c0.f57206a, H12, (H1) I1.f56549D.d().h());
            }
        }
    }

    public static M4 b(com.android.tools.r8.graph.M2 m22) {
        return new M4(null);
    }

    public final void b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 b10 = b(m22, (com.android.tools.r8.graph.D5) h22);
        if (b10 == null) {
            return;
        }
        if (this.f56802j.f50597F) {
            Predicate predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return N.c((C11280k1) obj);
                }
            };
            AbstractC11415s1 abstractC11415s1 = (AbstractC11415s1) this.f56781X.b(C11416s2.f57793b).f57795a.getOrDefault(b10.getReference(), null);
            C11280k1 a10 = abstractC11415s1 != null ? abstractC11415s1.a() : null;
            if ((a10 == null || !predicate.test(a10)) && !this.f56786b.c()) {
                if (this.f56821w.f56875a.contains(b10)) {
                    S0 s02 = this.f56795f0;
                    if (s02.f56953c != null) {
                        s02.a(s02.a(h22.f36245e), s02.a(b10.f36245e), C5076Dz.a.f39718l);
                        return;
                    }
                    return;
                }
                if (this.f56786b.b() && !b10.isInterface()) {
                    this.f56794f.E().f50691j.c("The class " + ((Object) h22) + " implements the interface " + ((Object) m22) + " but " + ((Object) m22) + " is not an interface.");
                }
                C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                c6286Yx0.b((C6286Yx0) b10);
                while (c6286Yx0.b()) {
                    com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
                    if (!this.f56821w.f56875a.contains(h23) && ((Set) this.f56767J.computeIfAbsent(h23, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            Set c10;
                            c10 = AbstractC5513Ll0.c();
                            return c10;
                        }
                    })).add(h22)) {
                        Iterator<com.android.tools.r8.graph.M2> it = h23.R0().iterator();
                        while (it.hasNext()) {
                            com.android.tools.r8.graph.H2 b11 = b(it.next(), (com.android.tools.r8.graph.D5) h23);
                            if (b11 != null) {
                                if (!b11.w1()) {
                                    if (!h22.getType().z0().equals(b11.getType().z0())) {
                                        d(h23, this.f56795f0.a(h23, h22));
                                    }
                                }
                                c6286Yx0.b((C6286Yx0) b11);
                            }
                        }
                    }
                }
                return;
            }
        }
        d(b10, this.f56795f0.a(b10, h22));
    }

    public final void c(Q q10) {
        q10.a(this);
    }

    public final void b(C8659ns0 c8659ns0) {
        this.f56797g0.a(new V31());
        Q q10 = new Q(this.f56794f.k());
        if (!f56757p0 && !this.f56776S.f56693b.isEmpty()) {
            throw new AssertionError();
        }
        C4798y c4798y = this.f56794f;
        M70 m70 = this.f56809m0;
        AbstractC5947Ta c5889Sa = new C5889Sa(q10, this.f56797g0, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((com.android.tools.r8.graph.H2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        m70.getClass();
        if (!(m70 instanceof C6520b10)) {
            c5889Sa = new R70(m70.a(), c4798y.E().q(), c5889Sa);
        }
        com.android.tools.r8.internal.Y9 y92 = this.f56797g0;
        final M m10 = this.f56774Q;
        Objects.requireNonNull(m10);
        DI a10 = y92.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return M.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, this.f56805k0);
        C4798y c4798y2 = this.f56794f;
        final M m11 = this.f56774Q;
        Objects.requireNonNull(m11);
        AbstractC5773Qa.a(c4798y2, a10, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return M.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }).a(this.f56821w.f56875a, c5889Sa, this.f56798h, c8659ns0);
        if (q10.f56895c.isEmpty() && q10.f56896d.isEmpty() && q10.f56898f.isEmpty() && q10.f56899g.isEmpty()) {
            return;
        }
        C4514j a11 = this.f56792e.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.a((AbstractC4780x0) obj);
            }
        });
        this.f56792e = a11;
        this.f56794f.b(a11);
        this.f56800i = com.android.tools.r8.graph.Y5.a((C4798y<? extends C4514j>) this.f56794f);
        q10.a(this);
        this.f56776S = this.f56776S.b();
        while (this.f56776S.a()) {
            ((AbstractC11279k0) this.f56776S.f56693b.poll()).a(this, C8659ns0.c());
        }
    }

    public final C4613o3 a(com.android.tools.r8.graph.F0 f02) {
        C4613o3 c4613o3 = (C4613o3) this.f56810n.f37507a.get(f02.getReference());
        if (c4613o3 == null) {
            C4554l1 reference = f02.getReference();
            C4363b c4363b = C4363b.f37064a;
            c4613o3 = new C4613o3(reference, 0, c4363b, c4363b);
            this.f56810n.a(f02.getReference(), c4613o3);
            if (f02 instanceof com.android.tools.r8.graph.F5) {
                C7996ju c7996ju = this.f56788c;
                com.android.tools.r8.graph.F5 W10 = f02.W();
                for (EZ ez : c7996ju.f49410q) {
                    V0 v02 = (V0) ez;
                    v02.getClass();
                    com.android.tools.r8.graph.H2 holder = W10.getHolder();
                    if (v02.f57054g || !v02.f57051d.contains(holder)) {
                        v02.f57053f.add(holder);
                    }
                }
            }
        }
        return c4613o3;
    }

    public final void c(com.android.tools.r8.graph.H5 h52) {
        AE o10 = h52.a(this.f56794f, EW.d()).o();
        while (o10.hasNext()) {
            AbstractC10561zE next = o10.next();
            if (next.P1()) {
                b(h52, next.e0());
            }
        }
    }

    public final void b(com.android.tools.r8.graph.D5 d52) {
        C4723u0 k02 = d52.d().k0();
        EnumC4629p0 a10 = EnumC4629p0.a(d52.getReference());
        for (C4666r0 c4666r0 : k02.f37806d) {
            a(d52, c4666r0, a10);
        }
    }

    public final boolean a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, boolean z10, boolean z11) {
        C4613o3 c4613o3 = (C4613o3) this.f56810n.f37507a.get(c4554l1);
        if (c4613o3 == null) {
            final com.android.tools.r8.internal.C7 c72 = new com.android.tools.r8.internal.C7();
            a(c4554l1, h52).b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.a(com.android.tools.r8.internal.C7.this, (D3.a) obj);
                }
            });
            if (!c72.b()) {
                this.f56810n.a(c4554l1, C4613o3.f37534e);
                return true;
            }
            com.android.tools.r8.graph.F0 f02 = (com.android.tools.r8.graph.F0) c72.a();
            C4613o3 a10 = a(f02);
            if (c4554l1 != f02.getReference()) {
                this.f56810n.a(c4554l1, a10);
            }
            c4613o3 = a10;
        } else if (c4613o3 == C4613o3.f37534e) {
            return false;
        }
        if (z11) {
            if (z10) {
                int i10 = c4613o3.f37537b;
                if ((i10 & 8) == 0) {
                    c4613o3.f37537b = i10 | 8;
                    return true;
                }
            } else if (!c4613o3.e()) {
                c4613o3.f37537b |= 16;
                return true;
            }
            return false;
        }
        if (z10) {
            AbstractC4401d abstractC4401d = c4613o3.f37538c;
            abstractC4401d.getClass();
            if (abstractC4401d instanceof C4363b) {
                c4613o3.f37538c = new C4344a();
            }
            AbstractC4401d abstractC4401d2 = c4613o3.f37538c;
            abstractC4401d2.getClass();
            if (abstractC4401d2 instanceof C4344a) {
                return c4613o3.f37538c.a().a(c4554l1, h52);
            }
            return false;
        }
        AbstractC4401d abstractC4401d3 = c4613o3.f37539d;
        abstractC4401d3.getClass();
        if (abstractC4401d3 instanceof C4363b) {
            c4613o3.f37539d = new C4344a();
        }
        AbstractC4401d abstractC4401d4 = c4613o3.f37539d;
        abstractC4401d4.getClass();
        if (abstractC4401d4 instanceof C4344a) {
            return c4613o3.f37539d.a().a(c4554l1, h52);
        }
        return false;
    }

    public final com.android.tools.r8.graph.Z4 b(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.H5 h52, final X1 x12) {
        final com.android.tools.r8.graph.Z4 f10 = this.f56792e.f(a22);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(f10, h52, a22, (com.android.tools.r8.graph.Z4) obj);
            }
        };
        f10.a(consumer, consumer, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(a22, f10, h52, x12, (Z4.a) obj);
            }
        });
        return f10;
    }

    public final void b(com.android.tools.r8.graph.E0 e02, final com.android.tools.r8.graph.E5 e52) {
        if (e02.e0()) {
            return;
        }
        a(e02.z(), true, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a(e52, (com.android.tools.r8.graph.M2) obj, (InterfaceC4478h0) obj2);
            }
        });
    }

    public final void b(com.android.tools.r8.graph.H2 h22, X1 x12) {
        d(h22, this.f56795f0.a(h22, x12));
    }

    public final void b(com.android.tools.r8.graph.H2 h22, C8659ns0 c8659ns0) {
        if (!f56757p0 && h22.f36246f.H()) {
            throw new AssertionError();
        }
        a(new Z0(h22), h22.f36245e, Collections.EMPTY_LIST, c8659ns0);
    }

    public final void b(AbstractC11128b1 abstractC11128b1, com.android.tools.r8.graph.E0 e02) {
        if (!f56757p0 && !e02.v1()) {
            throw new AssertionError();
        }
        if (this.f56786b.c()) {
            return;
        }
        for (C4516j1 c4516j1 : e02.D1()) {
            boolean z10 = f56757p0;
            if (!z10) {
                c4516j1.L0();
                if (c4516j1.f37314g.h()) {
                    throw new AssertionError();
                }
            }
            a(abstractC11128b1, e02, this.f56792e.h(e02, c4516j1.getReference()));
            abstractC11128b1.getClass();
            if ((abstractC11128b1 instanceof Z0) && this.f56794f.E().x().b().a(c4516j1.X0())) {
                com.android.tools.r8.graph.A2 a10 = C7139em.a(c4516j1.getReference(), c4516j1.B0(), this.f56794f);
                if (!z10 && a10 == c4516j1.getReference()) {
                    throw new AssertionError();
                }
                a(abstractC11128b1, e02, this.f56792e.h(abstractC11128b1.a(), a10));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
    
        if (r1 != r0.f38176v6) goto L11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.D0 d02, final com.android.tools.r8.graph.H5 h52, C11498x c11498x) {
        C8085kR b10;
        if (!(this.f56802j.f50697l instanceof ClassFileConsumer)) {
            C4514j c4514j = (C4514j) this.f56794f.f();
            if (d02.f36214g.f36190e.c()) {
                C4724u1 b11 = c4514j.b();
                com.android.tools.r8.graph.A2 m02 = d02.f36214g.m0();
                if (m02 != b11.f38168u6) {
                }
                C4798y c4798y = this.f56794f;
                b10 = C8085kR.b(d02, c4798y, (C4514j) c4798y.f(), h52);
                if (b10 != null) {
                    for (com.android.tools.r8.graph.R2 r22 : d02.f36215h) {
                        r22.getClass();
                        if (r22 instanceof com.android.tools.r8.graph.X2) {
                            com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) r22.z0().W0();
                            if (c22.f36190e.d()) {
                                a(h52, c22.m0());
                            }
                        }
                    }
                    return;
                }
                if (!f56757p0 && !this.f56802j.f50616L0.a()) {
                    throw new AssertionError();
                }
                ArrayList arrayList = b10.f49629e;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) obj;
                    a(m22, h52);
                    this.f56812o.a(m22, b10, this.f56792e);
                }
                a(new C11111a1(b10), this.f56792e.b().f38068i2, b10.f49629e, C8659ns0.c());
                ((AbstractC8374m80) this.f56814p.computeIfAbsent(d02, new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        AbstractC8374m80 c10;
                        c10 = AbstractC8374m80.c();
                        return c10;
                    }
                })).add((AbstractC8374m80) h52);
                b10.f49631g.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        N.this.a(h52, (com.android.tools.r8.graph.M2) obj2);
                    }
                });
                com.android.tools.r8.graph.C2 c23 = b10.f49628d;
                boolean z10 = f56757p0;
                if (!z10 && c23 == null) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.A2 m03 = c23.m0();
                switch (c23.f36190e.ordinal()) {
                    case 4:
                        b(m03, h52, c11498x, new N1(h52.d()));
                        break;
                    case 5:
                        c(m03, h52, c11498x, new N1(h52.d()));
                        break;
                    case 6:
                        if (!z10 && !this.f56794f.b().a(m03)) {
                            throw new AssertionError();
                        }
                        a(m03.f38297f, h52, 2, new N1(h52.d()));
                        a(m03, h52, c11498x, new N1(h52.d()));
                        break;
                    case 7:
                        a(m03, h52, c11498x, new N1(h52.d()));
                        break;
                    case 8:
                        N1 n12 = new N1(h52.d());
                        if (c11498x == null || c11498x.i(m03)) {
                            c(m03.s0(), (com.android.tools.r8.graph.D5) h52);
                            com.android.tools.r8.graph.Z4 a10 = a(m03, true, h52, (X1) n12);
                            for (InterfaceC5121Es0 interfaceC5121Es0 : this.f56788c.f49399f) {
                                interfaceC5121Es0.b(a10, h52);
                            }
                            break;
                        }
                        break;
                    default:
                        throw new C5417Jv0();
                }
                a(h52, m03);
                return;
            }
        }
        if (b(d02.f36214g.m0().s0(), (com.android.tools.r8.graph.D5) h52) != null) {
            this.f56772O.add(d02.f36214g.m0());
        }
        C4798y c4798y2 = this.f56794f;
        b10 = C8085kR.b(d02, c4798y2, (C4514j) c4798y2.f(), h52);
        if (b10 != null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52, X1 x12) {
        com.android.tools.r8.graph.E0 a10;
        if (f52.d().w0() || this.f56812o.d(f52.getHolder())) {
            a(f52, d52, x12);
        }
        if (this.f56786b.a() && this.f56802j.T() && !f52.getAccessFlags().n()) {
            com.android.tools.r8.graph.M2 a11 = f52.getReference().getType().a(this.f56794f.b());
            if (a11.I0() && (a10 = a(a11, d52)) != null) {
                C4798y c4798y = this.f56794f;
                if (AbstractC4420e.a(a10, d52, c4798y, (C4514j) c4798y.f()).b()) {
                    d(C11144c0.f57206a, f52.getHolder(), C11297l1.f57491t.d().q());
                }
            }
        }
        L l10 = this.f56775R;
        l10.getClass();
        if (!l10.f56689a.contains(f52.d()) && ((C7207f80) this.f56819u.computeIfAbsent(f52.getHolder(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.i((com.android.tools.r8.graph.H2) obj);
            }
        })).a(f52)) {
            if (f52.d().f37204i != null) {
                a(f52.d().f37204i);
            } else {
                a(f52.getReference());
            }
            a(f52.getHolder(), (com.android.tools.r8.graph.D5) f52);
            c(f52.getReference().getType(), (com.android.tools.r8.graph.D5) f52);
            b(f52);
            for (DZ dz : this.f56788c.f49409p) {
                dz.a(f52);
            }
            return;
        }
        this.f56795f0.a(f52.d(), x12);
    }

    public final void b(final C4554l1 c4554l1, final com.android.tools.r8.graph.H5 h52, AbstractC4783x3 abstractC4783x3) {
        C5711Oy c5711Oy;
        c(c4554l1.s0(), (com.android.tools.r8.graph.D5) h52);
        c(c4554l1.getType(), (com.android.tools.r8.graph.D5) h52);
        this.f56766I.add(c4554l1.s0());
        C4798y c4798y = this.f56794f;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                N.this.a(c4554l1, h52, (C5711Oy) obj);
            }
        };
        C5658Oa0 c5658Oa0 = c4798y.f38388C;
        if (c5658Oa0 == null || (c5711Oy = c5658Oa0.f42924c) == null) {
            return;
        }
        interfaceC6160Wr0.accept(c5711Oy);
    }

    public final void b(X1 x12, final com.android.tools.r8.graph.H5 h52) {
        if (this.f56794f.E().P() && h52.getReference().c(this.f56794f.b().f38184w6) && h52.getAccessFlags().h()) {
            return;
        }
        if (this.f56776S.a(h52, h52, x12)) {
            if (f56757p0) {
                return;
            }
            this.f56776S.a(new InterfaceC6522b2() {
                @Override
                public final void a() {
                    N.this.e(h52);
                }
            });
            return;
        }
        boolean z10 = f56757p0;
        if (!z10 && !h52.d().f1()) {
            C4516j1 d10 = h52.d();
            if (!z10 && d10.f1()) {
                throw new AssertionError((Object) "Class initializers are never targeted");
            }
            if (!z10 && !this.f56768K.f56716a.contains(d10)) {
                throw new AssertionError();
            }
        }
        if (z10) {
            return;
        }
        this.f56776S.a(new InterfaceC6522b2() {
            @Override
            public final void a() {
                N.this.f(h52);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.M2 m22) {
        c(m22, (com.android.tools.r8.graph.D5) h52);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final void a(com.android.tools.r8.graph.Z4 z42) {
        if (z42.w() && z42.o().d().e0()) {
            d(C11144c0.f57206a, z42.r(), I1.f56549D.d().s());
        }
    }

    public final boolean b(AbstractC4365b1 abstractC4365b1) {
        return this.f56780W.a(abstractC4365b1, this.f56802j, this.f56792e);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, ListIterator listIterator, boolean z10) {
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f56794f.b());
        if (a10.I0() && b(a10, (com.android.tools.r8.graph.D5) h52) != null && a(h52, listIterator)) {
            this.f56782Y.add(a10);
        }
        com.android.tools.r8.graph.E0 a11 = a(m22, h52, z10);
        for (InterfaceC4889As0 interfaceC4889As0 : this.f56788c.f49395b) {
            ((C8906pK) interfaceC4889As0).b(a11, h52);
        }
    }

    public final void b(com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.D5 d52, final X1 x12, Z4.a aVar) {
        com.android.tools.r8.graph.H2 a10;
        this.f56770M.add(a22);
        aVar.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(d52, (com.android.tools.r8.graph.M2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(d52, x12, (C4516j1) obj);
            }
        });
        C9406sK a11 = a22.a(this.f56794f.b());
        CK a12 = JK.a(a11.f52337b.iterator(), a11.f52338c);
        while (a12.f43396b.hasNext()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) a12.a(a12.f43396b.next());
            if (m22.I0() && (a10 = com.android.tools.r8.graph.H2.a(a(m22, d52))) != null) {
                d(C11144c0.f57206a, a10, ((C11280k1) ((C11280k1) C11297l1.f57491t.d().g()).h()).s());
            }
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52, ListIterator listIterator) {
        boolean z10 = true;
        if (listIterator == null) {
            return true;
        }
        if (h52.d().Q0().t0()) {
            com.android.tools.r8.internal.W9 r10 = ((InterfaceC5426Ka) AbstractC10241xK.a(listIterator, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return N.a((InterfaceC5426Ka) obj);
                }
            })).r();
            if (!f56757p0 && r10 == null) {
                throw new AssertionError();
            }
            if (r10.L()) {
                com.android.tools.r8.graph.A2 V10 = r10.j().V();
                com.android.tools.r8.graph.G1 g12 = this.f56794f.b().f37922O4;
                if (g12.f36334p.contains(V10) || V10 == g12.f36319a || V10 == g12.f36322d || V10 == g12.f36331m) {
                    z10 = false;
                }
            }
            listIterator.previous();
        }
        return z10;
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.H2 h22) {
        return this.f56794f.b().a(h22.f36245e, this.f56794f.b().a(this.f56794f.b().c(this.f56794f.b().b("[" + h22.f36245e.V0())), new com.android.tools.r8.graph.M2[0]), this.f56794f.b().b("values"));
    }

    public static boolean a(InterfaceC5426Ka interfaceC5426Ka) {
        com.android.tools.r8.internal.W9 r10 = interfaceC5426Ka.r();
        r10.getClass();
        if (r10 instanceof C8103ka) {
            return false;
        }
        com.android.tools.r8.internal.W9 r11 = interfaceC5426Ka.r();
        r11.getClass();
        return !(r11 instanceof C5541Ma);
    }

    public final void b(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H2 h22, C11280k1 c11280k1) {
        if ((this.f56802j.W() || this.f56786b.c()) && !c11280k1.f57790a.g()) {
            boolean z10 = f56757p0;
            if (!z10) {
                c11280k1.a(this.f56802j);
            }
            if (!z10) {
                c11280k1.a(this.f56802j);
            }
            a(h22, c11280k1.f57792c, abstractC11161d0.a((C4514j) this.f56794f.f()));
        }
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.H5 h52, boolean z10) {
        com.android.tools.r8.graph.E0 e10 = e(m22, (com.android.tools.r8.graph.D5) h52);
        c(m22, (com.android.tools.r8.graph.D5) h52);
        if (this.f56784a && !z10 && e10 != null && e10.e0()) {
            final com.android.tools.r8.graph.H2 d02 = e10.d0();
            a(d02, new Supplier() {
                @Override
                public final Object get() {
                    return N.this.a(d02, h52);
                }
            });
        }
        return e10;
    }

    public final X1 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        S0 s02 = this.f56795f0;
        if (s02.f56953c != null) {
            s02.a(s02.a(h52.getReference()), s02.a(h22.f36245e), C5076Dz.a.f39709c);
        }
        return R0.f56919a;
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        C11144c0 c11144c0 = C11144c0.f57206a;
        final H1 a10 = this.f56781X.a(h52.getReference());
        if (a10 != null) {
            this.f56780W.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((H1) obj).a(H1.this);
                }
            }, h52);
            c(c11144c0, h52, a10);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x) {
        this.f56776S.a(a22, h52, c11498x);
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.H5 h52, final InterfaceC6522b2 interfaceC6522b2) {
        final com.android.tools.r8.graph.H2 b10 = b(m22, (com.android.tools.r8.graph.D5) h52);
        if (b10 != null) {
            return ((Boolean) this.f56794f.a(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return N.this.a(b10, h52, interfaceC6522b2, (C6678bz) obj);
                }
            })).booleanValue();
        }
        return false;
    }

    public final void b(com.android.tools.r8.graph.H5 h52, H1 h12) {
        d(C11144c0.f57206a, h52, h12);
    }

    public final Boolean a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, final InterfaceC6522b2 interfaceC6522b2, C6678bz c6678bz) {
        return Boolean.valueOf(c6678bz.a(h22, h52, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return N.this.a(h22, interfaceC6522b2);
            }
        }));
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, InterfaceC6522b2 interfaceC6522b2) {
        return this.f56821w.a(h22, interfaceC6522b2);
    }

    public final void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        synchronized (this.f56820v) {
            this.f56820v.put(h52.getHolder(), h53);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x, K1 k12) {
        if (c11498x == null || c11498x.h(a22)) {
            c(a22.s0(), (com.android.tools.r8.graph.D5) h52);
            com.android.tools.r8.graph.Z4 a10 = a(a22, h52, (X1) k12);
            for (InterfaceC5121Es0 interfaceC5121Es0 : this.f56788c.f49399f) {
                interfaceC5121Es0.a(a22, a10, h52);
            }
        }
    }

    public final void b(InterfaceC4440f0 interfaceC4440f0) {
        a(interfaceC4440f0, false, (BiConsumer) new W9(this));
    }

    public final void b(final ExecutorService executorService, final C8659ns0 c8659ns0) {
        c8659ns0.b("Grow the tree.");
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            try {
                c8659ns0.b("Compute fixpoint #" + i10);
                long e10 = e();
                c8659ns0.b("Process worklist");
                while (this.f56776S.a()) {
                    ((AbstractC11279k0) this.f56776S.f56693b.poll()).a(this, c8659ns0);
                }
                c8659ns0.d();
                long e11 = e();
                if (e11 > e10) {
                    c8659ns0.a("Conditional rules", new InterfaceC5930Sr0() {
                        @Override
                        public final void a() {
                            N.this.h();
                        }
                    });
                    if (!f56757p0 && e() != e11) {
                        throw new AssertionError();
                    }
                    if (this.f56776S.a()) {
                        c8659ns0.d();
                        i10 = i11;
                    }
                }
                c8659ns0.b("Process deferred annotations");
                a(this.f56789c0, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return EnumC4629p0.a((com.android.tools.r8.graph.D5) obj);
                    }
                });
                a(this.f56791d0, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        EnumC4629p0 enumC4629p0;
                        enumC4629p0 = EnumC4629p0.f37569e;
                        return enumC4629p0;
                    }
                });
                c8659ns0.d();
                c8659ns0.b("Process onclick methods");
                j();
                c8659ns0.d();
                if (this.f56776S.a()) {
                    c8659ns0.d();
                } else {
                    if (!this.f56778U.f45165b.isEmpty()) {
                        c8659ns0.b("Handle reflective behavior");
                        this.f56778U.forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                N.this.c((com.android.tools.r8.graph.H5) obj);
                            }
                        });
                        this.f56778U.f45165b.clear();
                        c8659ns0.d();
                    }
                    if (this.f56776S.a()) {
                        c8659ns0.d();
                    } else if (this.f56796g.a(this.f56776S, c8659ns0)) {
                        if (!f56757p0 && !this.f56776S.a()) {
                            throw new AssertionError();
                        }
                        c8659ns0.d();
                    } else {
                        c8659ns0.a("Notify analyses", new InterfaceC5930Sr0() {
                            @Override
                            public final void a() {
                                N.this.a(executorService, c8659ns0);
                            }
                        });
                        if (this.f56776S.a()) {
                            c8659ns0.d();
                        } else {
                            c8659ns0.b("Process delayed root set items");
                            ArrayList arrayList = this.f56804k.f56424c;
                            int size = arrayList.size();
                            int i12 = 0;
                            while (i12 < size) {
                                Object obj = arrayList.get(i12);
                                i12++;
                                C11530z c11530z = (C11530z) obj;
                                c11530z.getClass();
                                a(c11530z);
                            }
                            c8659ns0.d();
                            c8659ns0.a("Synthesize", new InterfaceC5930Sr0() {
                                @Override
                                public final void a() {
                                    N.this.a(c8659ns0);
                                }
                            });
                            c8659ns0.b("Delayed interface method synthetic bridges");
                            C11535z4 b10 = b();
                            a(b10);
                            this.f56804k.f56422a.a(b10.f56422a);
                            this.f56804k.f56424c.clear();
                            c8659ns0.d();
                            if (this.f56776S.a()) {
                                c8659ns0.d();
                            } else {
                                c8659ns0.d();
                                if (this.f56786b.b()) {
                                    c8659ns0.a("Post processing desugaring", new InterfaceC5930Sr0() {
                                        @Override
                                        public final void a() {
                                            N.this.b(c8659ns0);
                                        }
                                    });
                                }
                                c8659ns0.d();
                                return;
                            }
                        }
                    }
                }
                i10 = i11;
            } catch (Throwable th2) {
                c8659ns0.d();
                throw th2;
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, B60 b60) {
        while (b60.k()) {
            if (!f56757p0 && b60.f38811f) {
                throw new AssertionError();
            }
            a(b60.f38808c);
            b60 = b60.f38809d;
        }
        if (!f56757p0 && !h52.getReference().a(b60.f38808c)) {
            throw new AssertionError();
        }
        if (h52.d().F0()) {
            return;
        }
        a(h52.getReference());
    }

    public final void a(C4804y5 c4804y5) {
        c4804y5.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a((C4554l1) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.J2 j22) {
        if (this.f56822x.add(j22) && j22.q0()) {
            this.f56822x.add(j22.S());
        }
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, int i10, K1 k12) {
        com.android.tools.r8.graph.E0 e10 = e(m22, (com.android.tools.r8.graph.D5) h52);
        if (e10 != null && e10.e0()) {
            com.android.tools.r8.graph.H2 d02 = e10.d0();
            if (!e10.f36246f.H() && !e10.isInterface()) {
                this.f56776S.a(d02, h52, i10, k12);
                return e10;
            }
            d(d02, this.f56795f0.a(d02, k12));
        }
        return e10;
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h53) {
        if (!f56757p0 && !h53.d().j1()) {
            throw new AssertionError();
        }
        T1 t12 = new T1(h52.d());
        a(h22.getType(), h52, 5, t12);
        a(t12, h53);
        b(t12, h53);
        H1 h12 = (H1) I1.f56549D.d().h();
        C11144c0 c11144c0 = C11144c0.f57206a;
        d(c11144c0, h53, h12);
        d(c11144c0, h22, (C11280k1) C11297l1.f57491t.d().h());
    }

    public final void a(final C4554l1 c4554l1, final com.android.tools.r8.graph.H5 h52, final J j10, final K k10) {
        boolean a10;
        if ((k10.f56663b & 1) == 0) {
            if (j10.a()) {
                a10 = a(c4554l1, h52, true, false);
            } else {
                a10 = a(c4554l1, h52, false, false);
            }
            if (!a10) {
                return;
            }
        }
        com.android.tools.r8.graph.D3 a11 = a(c4554l1, h52);
        if (this.f56796g.a(c4554l1, a11, h52, j10, k10)) {
            if (f56757p0) {
                return;
            }
            if ((k10.f56663b & 1) != 0) {
                throw new AssertionError();
            }
            return;
        }
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(c4554l1, h52, j10, k10, (D3.a) obj);
            }
        };
        a11.a(consumer, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(c4554l1, h52, (AbstractC4783x3) obj);
            }
        });
    }

    public final void a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, J j10, K k10, D3.a aVar) {
        this.f56788c.a(c4554l1, aVar, h52, this.f56776S, j10);
        com.android.tools.r8.graph.F0 a10 = com.android.tools.r8.graph.F0.a(aVar.f36224c, aVar.f36225d);
        boolean z10 = f56757p0;
        com.android.tools.r8.graph.E0 e02 = aVar.f36223b;
        if (e02 != a10.getHolder() && e02.e0()) {
            com.android.tools.r8.graph.H2 d02 = e02.d0();
            d(d02, this.f56795f0.a(d02, (com.android.tools.r8.graph.D5) h52));
        }
        com.android.tools.r8.graph.F5 W10 = a10.W();
        if (W10 == null) {
            return;
        }
        if (!z10 && this.f56786b.a() && W10.d().f37207l.i()) {
            throw new AssertionError((Object) ("Unexpected reference in `" + h52.r() + "` to field marked dead: " + W10.getReference().j0()));
        }
        int i10 = k10.f56663b;
        if ((i10 & 2) != 0) {
            C4613o3 c4613o3 = (C4613o3) this.f56810n.f37507a.get(W10.getReference());
            c4613o3.getClass();
            if (j10.a()) {
                c4613o3.f37537b |= 2;
            } else {
                c4613o3.f37537b |= 4;
            }
        } else if ((i10 & 4) != 0 && j10.a()) {
            ((C4613o3) this.f56810n.f37507a.get(W10.getReference())).f37537b |= 32;
        }
        this.f56776S.a(W10, h52, new R1(h52.d()));
    }

    public final C11535z4 b() {
        C4798y c4798y = this.f56794f;
        com.android.tools.r8.graph.Y5 y52 = this.f56800i;
        M70 m70 = this.f56809m0;
        InterfaceC11503x4 interfaceC11503x4 = C11486w4.f57941c;
        m70.getClass();
        if (!(m70 instanceof C6520b10)) {
            interfaceC11503x4 = new X70(m70.a());
        }
        I4 i42 = new I4(c4798y, interfaceC11503x4, y52, null);
        ArrayList arrayList = this.f56804k.f56424c;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C11530z c11530z = (C11530z) obj;
            c11530z.getClass();
            com.android.tools.r8.graph.H5 h52 = c11530z.f58011a;
            com.android.tools.r8.graph.H5 h53 = c11530z.f58012b;
            C4516j1 d10 = h53.d();
            if (!this.f56804k.a(h53, this.f56802j)) {
                if (d10.k1().d()) {
                    h52.d().a(AbstractC9530t40.f52517a);
                }
                c11530z.f58013c.accept(i42);
            }
        }
        return new C11535z4(i42.f56599g, i42.f56605m, CT.a(i42.f56609q), i42.f56618z);
    }

    public final Boolean a(com.android.tools.r8.graph.D3 d32, C5711Oy c5711Oy) {
        C4594n3 c4594n3 = this.f56810n;
        C11500x1 c11500x1 = this.f56780W;
        c5711Oy.getClass();
        com.android.tools.r8.graph.F5 r10 = d32.r();
        return Boolean.valueOf(r10 != null && c5711Oy.a(r10, c4594n3, c11500x1));
    }

    public final void a(E4 e42) {
        e42.f56422a.a(this.f56794f, new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                N.this.e((AbstractC11161d0) obj, (com.android.tools.r8.graph.H2) obj2, (C11280k1) obj3);
            }
        }, new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                N.this.f((AbstractC11161d0) obj, (com.android.tools.r8.graph.F5) obj2, (C11365p1) obj3);
            }
        }, new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                N.this.e((AbstractC11161d0) obj, (com.android.tools.r8.graph.H5) obj2, (H1) obj3);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Map, java.lang.Object] */
    public final void b(final com.android.tools.r8.graph.H5 h52, VJ vj2) {
        AbstractC10051wB a10;
        com.android.tools.r8.graph.H5 e10;
        C4460g1 a11;
        com.android.tools.r8.graph.M2 a12;
        com.android.tools.r8.graph.H2 a13;
        int i10;
        int b10;
        com.android.tools.r8.graph.M2 a14;
        com.android.tools.r8.graph.H2 a15;
        com.android.tools.r8.graph.H5 H12;
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        C4724u1 b11 = this.f56794f.b();
        if (B22.a(b11.f37922O4.f36332n)) {
            if (!vj2.T1()) {
                if (!f56757p0) {
                    throw new AssertionError();
                }
                return;
            }
            com.android.tools.r8.graph.M2 a16 = AbstractC4982Ch.a(vj2.k0().C2(), this.f56794f);
            if (a16 == null || !a16.I0() || (a15 = com.android.tools.r8.graph.H2.a(b(a16, h52))) == null || (H12 = a15.H1()) == null) {
                return;
            }
            a(h52, a15, H12);
            return;
        }
        com.android.tools.r8.graph.H5 h53 = null;
        int i11 = 0;
        if (B22.a(b11.f37929P4.f36362a)) {
            if (!vj2.T1()) {
                if (!f56757p0) {
                    throw new AssertionError();
                }
                return;
            }
            C10340xw0 i12 = vj2.k0().C2().i();
            if (i12.j() || !i12.f53886c.T1()) {
                return;
            }
            C8405mK k02 = i12.f53886c.k0();
            com.android.tools.r8.graph.A2 B23 = k02.B2();
            if ((B23 == this.f56794f.b().f37922O4.f36327i || B23 == this.f56794f.b().f37922O4.f36328j) && (a12 = AbstractC4982Ch.a(k02.C2(), this.f56794f)) != null && a12.I0() && (a13 = com.android.tools.r8.graph.H2.a(b(a12, h52))) != null) {
                C10340xw0 c10340xw0 = (C10340xw0) k02.f54321f.get(1);
                if (c10340xw0.j()) {
                    return;
                }
                C8769oZ t02 = c10340xw0.f53886c.t0();
                C9103qZ u02 = c10340xw0.f53886c.u0();
                if (t02 != null) {
                    i10 = t02.u2();
                } else if (u02 != null) {
                    i10 = u02.f54321f.size();
                } else {
                    i10 = c10340xw0.c(this.f56794f) ? 0 : -1;
                }
                if (i10 < 0) {
                    return;
                }
                if (i10 == 0) {
                    h53 = a13.H1();
                } else {
                    com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[i10];
                    if (t02 != null) {
                        i11 = i10;
                    } else {
                        ArrayList arrayList = u02.f54321f;
                        for (int i13 = 0; i13 < i10; i13++) {
                            com.android.tools.r8.graph.M2 a17 = AbstractC4982Ch.a((C10340xw0) arrayList.get(i13), this.f56794f);
                            if (a17 == null) {
                                return;
                            }
                            m2Arr[i13] = a17;
                        }
                    }
                    for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
                        if (abstractC10561zE.o1()) {
                            com.android.tools.r8.internal.T3 A10 = abstractC10561zE.A();
                            if (A10.u2() != c10340xw0 || (b10 = A10.b(i10)) < 0 || (a14 = AbstractC4982Ch.a(A10.value(), this.f56794f)) == null) {
                                return;
                            }
                            com.android.tools.r8.graph.M2 m22 = m2Arr[b10];
                            if (m22 == a14) {
                                continue;
                            } else {
                                if (m22 != null) {
                                    return;
                                }
                                m2Arr[b10] = a14;
                                i11--;
                            }
                        }
                    }
                    if (i11 == 0) {
                        h53 = a13.h(a13.a(m2Arr));
                    }
                }
                if (h53 != null) {
                    a(h52, a13, h53);
                    return;
                }
                return;
            }
            return;
        }
        if (B22.a(b11.f38023c5.f37477a)) {
            a(h52, vj2);
            return;
        }
        C4612o2 c4612o2 = b11.f38120o6;
        if (B22 != c4612o2.f37530a && B22 != c4612o2.f37531b && B22 != c4612o2.f37532c) {
            InterfaceC8739oK[] interfaceC8739oKArr = this.f56788c.f49401h;
            int length = interfaceC8739oKArr.length;
            while (i11 < length) {
                if (interfaceC8739oKArr[i11].a(h52, vj2)) {
                    return;
                } else {
                    i11++;
                }
            }
            if (com.android.tools.r8.naming.F.a(b11, B22) && (a10 = com.android.tools.r8.naming.F.a(vj2, this.f56794f, h52)) != null) {
                com.android.tools.r8.graph.J2 j22 = a10.f53443a;
                j22.getClass();
                if (j22 instanceof com.android.tools.r8.graph.M2) {
                    com.android.tools.r8.graph.M2 o02 = j22.o0();
                    if (!o02.I0() || this.f56794f.c().c(o02)) {
                        return;
                    }
                    if (!f56757p0 && !a10.b()) {
                        throw new AssertionError();
                    }
                    AbstractC10385yB a18 = a10.a();
                    com.android.tools.r8.graph.H2 a19 = com.android.tools.r8.graph.H2.a(b(o02, h52));
                    if (a19 == null) {
                        return;
                    }
                    d(a19, new T1(h52.d()));
                    if (!a19.l1() && !a19.f36246f.H() && !a19.isInterface() && a18.a(this.f56802j)) {
                        a(a19, new Supplier() {
                            @Override
                            public final Object get() {
                                return N.d(com.android.tools.r8.graph.H5.this);
                            }
                        });
                    } else if (a18.c()) {
                        k(a19);
                    }
                    if (this.f56780W.a(a19).e(this.f56802j)) {
                        this.f56780W.a(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                ((C11280k1) ((C11280k1) obj).h()).i();
                            }
                        }, a19);
                        return;
                    }
                    return;
                }
                if (j22.p0()) {
                    C4554l1 l02 = j22.l0();
                    com.android.tools.r8.graph.H2 a20 = com.android.tools.r8.graph.H2.a(b(l02.f38297f, h52));
                    if (a20 == null || (a11 = a20.f36251k.f37700b.a(l02)) == null) {
                        return;
                    }
                    if (!a11.w0() && b11.f37999Z4.f36126b.contains(B22)) {
                        this.f56776S.a(a20, null, 5, new T1(h52.d()));
                    }
                    if (this.f56780W.a(a11, a20).e(this.f56802j)) {
                        com.android.tools.r8.graph.F5 f52 = new com.android.tools.r8.graph.F5(a11, a20);
                        C11365p1 c11365p1 = (C11365p1) ((C11365p1) C11382q1.f57709o.c().h()).i();
                        c11365p1.f57791b.add(new T1(h52.d()));
                        e(C11144c0.f57206a, f52, c11365p1);
                        return;
                    }
                    return;
                }
                if (!f56757p0 && !j22.r0()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.A2 n02 = j22.n0();
                com.android.tools.r8.graph.H2 a21 = com.android.tools.r8.graph.H2.a(b(n02.f38297f, h52));
                if (a21 == null || (e10 = a21.e(n02)) == null) {
                    return;
                }
                T1 t12 = new T1(h52.d());
                if (e10.d().f37314g.D()) {
                    a(t12, e10);
                    b(t12, e10);
                } else {
                    d(t12, e10);
                }
                d(C11144c0.f57206a, e10, (H1) I1.f56549D.d().h());
                return;
            }
            return;
        }
        if (vj2.f54321f.isEmpty()) {
            return;
        }
        C10340xw0 i14 = ((C10340xw0) vj2.f54321f.get(0)).i();
        if (!i14.j()) {
            AbstractC10561zE abstractC10561zE2 = i14.f53886c;
            abstractC10561zE2.getClass();
            if (abstractC10561zE2 instanceof C7957jh) {
                com.android.tools.r8.graph.M2 m23 = i14.f53886c.F().f49303l;
                C4552l c4552l = this.f56794f.f38410c;
                if (!C4552l.f37439d) {
                    c4552l.b();
                }
                if (c4552l.f37442c.o().contains(m23)) {
                    a(m23, h52, new T1(h52.d()));
                    return;
                }
                return;
            }
        }
        T1 t13 = new T1(h52.d());
        C4552l c4552l2 = this.f56794f.f38410c;
        if (!C4552l.f37439d) {
            c4552l2.b();
        }
        Iterator it = c4552l2.f37442c.o().iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.M2) it.next(), h52, t13);
        }
    }

    public final void a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, C5711Oy c5711Oy) {
        a aVar = this.f56786b;
        c5711Oy.getClass();
        if (aVar.b() || aVar.a()) {
            C5485La0 c5485La0 = c5711Oy.f43086c;
            c5485La0.getClass();
            if (c5485La0.c(h52.getReference())) {
                c5711Oy.a(aVar, c4554l1);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52, X1 x12) {
        com.android.tools.r8.graph.H2 b10;
        if (m22.E0()) {
            a(m22.a(this.f56794f.b()), d52, x12);
        } else if (m22.I0() && (b10 = b(m22, d52)) != null) {
            d(b10, x12);
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.D5 d52) {
        d(h22, this.f56795f0.a(h22, d52));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.H2 h22, M4 m42, R0 r02) {
        BiConsumer r72;
        BiConsumer r73;
        BiConsumer r74;
        if (this.f56821w.a(h22, r02)) {
            a((com.android.tools.r8.graph.J2) h22.getType());
            boolean z10 = f56757p0;
            if (!z10) {
                a aVar = this.f56786b;
                aVar.getClass();
                if (aVar == a.f56828e && this.f56802j.f50599F1.f50825J0) {
                    C11349o2 f10 = ((C4514j) this.f56794f.f()).f();
                    com.android.tools.r8.synthesis.J g10 = this.f56794f.f38408a.g();
                    f10.getClass();
                    if (!C11349o2.a(h22.getType(), f10.f57582b, g10)) {
                        throw new AssertionError((Object) ("Class " + h22.j0() + " was not a main dex root in the first round"));
                    }
                }
            }
            if (!z10) {
                C8664nu I10 = this.f56794f.I();
                I10.getClass();
                if (I10.b(h22.getType())) {
                    throw new AssertionError((Object) ("Enum " + h22.j0() + " has been unboxed but is still in the program."));
                }
            }
            if (this.f56802j.f50662a1) {
                r72 = new E8(this);
            } else {
                r72 = new R7(this);
            }
            for (C4425e4 c4425e4 : h22.Q0()) {
                c(c4425e4.b(), h22, new C11439t8(this), r72);
                c(c4425e4.d(), h22, new C11439t8(this), r72);
            }
            if (h22.t1()) {
                Iterator<C4634p5> it = h22.V0().iterator();
                while (it.hasNext()) {
                    a(it.next().a(), h22);
                }
            } else {
                a(h22.T0(), h22);
            }
            C4500i3 O02 = h22.O0();
            if (O02 != null) {
                com.android.tools.r8.graph.A2 a10 = O02.a();
                if (this.f56802j.f50658Z0) {
                    r74 = new E8(this);
                } else {
                    r74 = new R7(this);
                }
                if (a10 != null) {
                    a(a10, h22, new C11439t8(this), r74);
                } else {
                    c(O02.f37289a, h22, new C11439t8(this), r74);
                }
            }
            List<com.android.tools.r8.graph.A5> W02 = h22.W0();
            if (!W02.isEmpty()) {
                if (this.f56802j.f50666b1) {
                    r73 = new E8(this);
                } else {
                    r73 = new R7(this);
                }
                Iterator<com.android.tools.r8.graph.A5> it2 = W02.iterator();
                while (it2.hasNext()) {
                    c(it2.next().a(), h22, new C11439t8(this), r73);
                }
            }
            Q1 q12 = new Q1(h22.f36245e);
            Iterator<com.android.tools.r8.graph.M2> it3 = h22.R0().iterator();
            while (it3.hasNext()) {
                b(h22, it3.next());
            }
            com.android.tools.r8.graph.M2 m22 = h22.f36247g;
            if (m22 != null) {
                m42.f56741a = (M4) this.f56793e0.computeIfAbsent(m22, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return N.c((com.android.tools.r8.graph.M2) obj);
                    }
                });
                c(h22.f36247g, (com.android.tools.r8.graph.D5) h22);
            }
            s(h22);
            r(h22);
            a(h22, m42, q12);
            C4514j c4514j = (C4514j) this.f56794f.f();
            if (c4514j.c(h22.f36245e, c4514j.b().f38032d6)) {
                if (!f56757p0) {
                    C4514j c4514j2 = (C4514j) this.f56794f.f();
                    if (!c4514j2.c(h22.f36245e, c4514j2.b().f38032d6)) {
                        throw new AssertionError();
                    }
                }
                com.android.tools.r8.graph.H2 h23 = h22;
                while (true) {
                    C4514j c4514j3 = (C4514j) this.f56794f.f();
                    if (c4514j3.c(h23.f36245e, c4514j3.b().f38032d6)) {
                        h23 = b(h23.f36247g, (com.android.tools.r8.graph.D5) h23);
                        if (h23 == null) {
                            break;
                        }
                    } else if (h23.a(com.android.tools.r8.graph.M2.f36589h) != null) {
                        this.f56776S.a(h23.H1(), h23, q12);
                        d(C11144c0.f57206a, h23.H1(), I1.f56549D.d().s());
                    }
                }
            }
            a(h22);
            a((Y) new C11110a0(h22));
            if (d(h22)) {
                this.f56780W.c(h22);
            }
            b((com.android.tools.r8.graph.D5) h22);
            if (h22.f36246f.H()) {
                this.f56787b0.add(h22.getType());
            }
            Set set = (Set) this.f56804k.f56423b.get(h22.getType());
            if (this.f56784a && set != null) {
                a(h22, set, (AbstractC4365b1) null);
            }
            C7996ju c7996ju = this.f56788c;
            L0 l02 = this.f56776S;
            for (InterfaceC10438yZ interfaceC10438yZ : c7996ju.f49403j) {
                interfaceC10438yZ.a(h22, l02);
            }
        }
    }

    public final void a(IdentityHashMap identityHashMap, final Function function) {
        Set c10 = AbstractC5513Ll0.c();
        for (final com.android.tools.r8.graph.M2 m22 : this.f56787b0) {
            Map map = (Map) identityHashMap.remove(m22);
            if (map != null) {
                if (!f56757p0 && !map.o().stream().allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean a10;
                        a10 = com.android.tools.r8.graph.M2.this.a(((C4666r0) obj).l0());
                        return a10;
                    }
                })) {
                    throw new AssertionError();
                }
                c10.add(map);
            }
        }
        c10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(function, (Map) obj);
            }
        });
    }

    public final void a(final Function function, Map map) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a(function, (C4666r0) obj, (List) obj2);
            }
        });
    }

    public final void a(final Function function, final C4666r0 c4666r0, List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(c4666r0, function, (com.android.tools.r8.graph.D5) obj);
            }
        });
    }

    public final void a(C4666r0 c4666r0, Function function, com.android.tools.r8.graph.D5 d52) {
        a(d52, c4666r0, (EnumC4629p0) function.apply(d52));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(InterfaceC4440f0 interfaceC4440f0) {
        if (!f56757p0 && interfaceC4440f0.e0()) {
            throw new AssertionError();
        }
        final M4 m42 = (M4) this.f56793e0.computeIfAbsent(interfaceC4440f0.getType(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.a((com.android.tools.r8.graph.M2) obj);
            }
        });
        com.android.tools.r8.graph.N4 b02 = interfaceC4440f0.b0();
        Objects.requireNonNull(m42);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                M4.this.a((C4516j1) obj);
            }
        };
        b02.getClass();
        b02.c(consumer, EnumC6871d70.f47286b);
    }

    public static M4 a(com.android.tools.r8.graph.M2 m22) {
        return new M4(null);
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, final M4 m42, final Q1 q12) {
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(q12, (com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return N.this.a(m42, h22, (C4516j1) obj);
            }
        });
    }

    public final boolean a(M4 m42, com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1) {
        C4514j c4514j;
        com.android.tools.r8.graph.E0 g10;
        if (m42.a(c4516j1) == 3 && (g10 = (c4514j = (C4514j) this.f56794f.f()).g(h22.f36245e)) != null) {
            for (com.android.tools.r8.graph.M2 m22 : g10.f36248h.f36675b) {
                if (c4514j.a(c4516j1, m22)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, EnumC4629p0 enumC4629p0) {
        boolean z10;
        C11211g c11211g;
        boolean a10;
        com.android.tools.r8.graph.M2 l02 = c4666r0.l0();
        com.android.tools.r8.graph.E0 a11 = a(l02, d52);
        boolean z11 = a11 == null || a11.v1();
        if (!z11) {
            if (!this.f56821w.f56875a.contains(a11.d0())) {
                z10 = false;
                c11211g = this.f56808m;
                if (c11211g == null && c11211g.f57321a.contains(c4666r0)) {
                    if (!f56757p0 && !this.f56786b.b()) {
                        throw new AssertionError();
                    }
                    a10 = true;
                } else {
                    a10 = C11228h.a(this.f56794f, d52, c4666r0, z10, enumC4629p0, this.f56786b, this.f56780W.a(d52));
                }
                if (a10) {
                    enumC4629p0.getClass();
                    ((List) ((Map) (enumC4629p0 == EnumC4629p0.f37569e ? this.f56791d0 : this.f56789c0).computeIfAbsent(l02, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return N.d((com.android.tools.r8.graph.M2) obj);
                        }
                    })).computeIfAbsent(c4666r0, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return N.a((C4666r0) obj);
                        }
                    })).add(d52);
                    if (z11) {
                        this.f56787b0.add(l02);
                        return;
                    }
                    return;
                }
                S0 s02 = this.f56795f0;
                if (s02.f56953c != null) {
                    s02.a(s02.a(c4666r0, d52), new J1(d52.d()));
                    s02.a(s02.a(c4666r0.l0()), new S1(c4666r0, d52));
                }
                c4666r0.f37693c.a(this.f56794f, new H(this, c4666r0, d52));
                return;
            }
        }
        z10 = true;
        c11211g = this.f56808m;
        if (c11211g == null) {
        }
        a10 = C11228h.a(this.f56794f, d52, c4666r0, z10, enumC4629p0, this.f56786b, this.f56780W.a(d52));
        if (a10) {
        }
    }

    public static List a(C4666r0 c4666r0) {
        return new ArrayList();
    }

    public final com.android.tools.r8.graph.D3 a(final C4554l1 c4554l1, final com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.D3 c10 = this.f56792e.c(c4554l1);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(h52, c4554l1, (D3.a) obj);
            }
        };
        c10.a(consumer, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(c4554l1, h52, (AbstractC4783x3) obj);
            }
        });
        return c10;
    }

    public final void a(C4554l1 c4554l1, com.android.tools.r8.graph.D5 d52, AbstractC4783x3 abstractC4783x3) {
        this.f56771N.add(c4554l1);
        b(c4554l1.s0(), (com.android.tools.r8.graph.E5) d52);
        b(c4554l1.getType(), (com.android.tools.r8.graph.E5) d52);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.D5 d52, X1 x12, Z4.a aVar) {
        b(a22, d52, x12, z42.k());
        a(a22, d52, new X8(this), new E8(this));
    }

    public final com.android.tools.r8.graph.Z4 a(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.D5 d52, final X1 x12, boolean z10) {
        com.android.tools.r8.graph.Z4 b10 = this.f56792e.b(a22, z10);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(d52, a22, (com.android.tools.r8.graph.Z4) obj);
            }
        };
        b10.a(consumer, consumer, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(a22, d52, x12, (Z4.a) obj);
            }
        });
        return b10;
    }

    public final void a(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42) {
        z42.getClass();
        if (z42 instanceof com.android.tools.r8.graph.V4) {
            return;
        }
        if (z42.d().e0() && z42.a(d52, this.f56794f).b()) {
            this.f56770M.add(z42.q().getReference());
        }
        a(z42.a(), d52);
        a(a22, z42.p().a(d52));
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.D5 d52, X1 x12, Z4.a aVar) {
        b(a22, d52, x12, aVar);
        a(a22, d52, new X8(this), new E8(this));
    }

    public final com.android.tools.r8.graph.Z4 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, final K1 k12) {
        com.android.tools.r8.graph.Z4 b10 = b(a22, h52, k12);
        b10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(k12, (com.android.tools.r8.graph.Z4) obj);
            }
        });
        return b10;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final void a(X1 x12, com.android.tools.r8.graph.Z4 z42) {
        if (z42.w()) {
            Z4.c<?> o10 = z42.o();
            if (o10.d().v1()) {
                return;
            }
            com.android.tools.r8.graph.H2 d02 = o10.d().d0();
            C4516j1 q10 = o10.q();
            com.android.tools.r8.graph.H5 h52 = new com.android.tools.r8.graph.H5(d02, q10);
            a(x12, h52);
            if (q10.w0()) {
                k(d02);
                b(x12, h52);
            }
        }
    }

    public final com.android.tools.r8.graph.Z4 a(final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.H5 h52, final X1 x12) {
        com.android.tools.r8.graph.Z4 b10 = b(a22, h52, x12);
        b10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(a22, x12, h52, (com.android.tools.r8.graph.Z4) obj);
            }
        });
        return b10;
    }

    public final void a(com.android.tools.r8.graph.A2 a22, X1 x12, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.Z4 z42) {
        if (z42.h()) {
            this.f56770M.add(a22);
            return;
        }
        if (z42.w() && z42.d().e0()) {
            com.android.tools.r8.graph.H5 r10 = z42.o().r();
            a(x12, r10);
            if (r10.getAccessFlags().n()) {
                return;
            }
            b(x12, r10);
            if (r10.d().n1() && this.f56773P.add(r10.getReference())) {
                this.f56776S.a(r10, d52, x12);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, C4725u2 c4725u2) {
        com.android.tools.r8.graph.H2 a10;
        if (this.f56786b.c() || (a10 = com.android.tools.r8.graph.H2.a(((C4514j) this.f56794f.f()).g(m22))) == null) {
            return;
        }
        com.android.tools.r8.graph.E0 v10 = ((C4514j) this.f56794f.f()).f(m22).v();
        if (v10 != null && v10.f0()) {
            b(v10, a10);
            return;
        }
        if (this.f56784a) {
            final Q1 q12 = new Q1(c4725u2.f36245e);
            a(a10, q12);
            this.f56792e.a(a10, new InterfaceC7328ft0() {
                @Override
                public final void a(Object obj, Object obj2, Object obj3) {
                    N.this.a(q12, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (Boolean) obj3);
                }
            });
        }
        AbstractC7160et abstractC7160et = this.f56794f.f38413f;
        abstractC7160et.getClass();
        if (!abstractC7160et.a(c4725u2.S()) && this.f56786b.b()) {
            String j02 = c4725u2.f36245e.j0();
            String str = a10.isInterface() ? " implements " : " extends ";
            StringDiagnostic stringDiagnostic = new StringDiagnostic("Library class " + j02 + str + "program class " + m22.j0());
            if (!this.f56784a && !this.f56802j.F().f50832N) {
                this.f56802j.f50691j.error(stringDiagnostic);
            } else {
                this.f56802j.f50691j.warning(stringDiagnostic);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, X1 x12) {
        final R0 a10 = this.f56795f0.a(h22, x12);
        a(h22.d0(), new Supplier() {
            @Override
            public final Object get() {
                return N.a(R0.this);
            }
        });
        this.f56780W.c(h22);
        if (this.f56802j.R()) {
            this.f56804k.a(h22);
        }
        h22.f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(a10, (com.android.tools.r8.graph.F5) obj);
            }
        }, EnumC6871d70.f47286b);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(a10, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(R0 r02, com.android.tools.r8.graph.F5 f52) {
        this.f56780W.a(f52);
        if (this.f56802j.R()) {
            this.f56804k.a(f52);
        }
        a((com.android.tools.r8.graph.F0) f52).f37537b |= 24;
        if (f52.d().w0()) {
            a(f52, f52, r02);
        } else {
            this.f56776S.a(f52, f52, r02);
        }
    }

    public final void a(R0 r02, com.android.tools.r8.graph.H5 h52) {
        this.f56780W.b(h52);
        if (this.f56802j.R()) {
            this.f56804k.a(h52);
        }
        C4516j1 d10 = h52.d();
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        a(r02, h52);
        if (d10.r1()) {
            a(reference, holder.isInterface(), h52, r02);
            d10.L0();
            if (d10.r1() && !d10.f37314g.H() && this.f56812o.d(holder)) {
                d(r02, h52);
                return;
            }
            return;
        }
        b(r02, h52);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E5 e52) {
        if (e02.e0()) {
            if (e52.B()) {
                com.android.tools.r8.graph.D5 g10 = e52.getContext().g();
                if (e02.e0()) {
                    com.android.tools.r8.graph.H2 d02 = e02.d0();
                    d(d02, this.f56795f0.a(d02, g10));
                    return;
                }
                return;
            }
            return;
        }
        b(e02, e52);
    }

    public final void a(com.android.tools.r8.graph.E5 e52, com.android.tools.r8.graph.M2 m22, InterfaceC4478h0 interfaceC4478h0) {
        c(m22, interfaceC4478h0.a(e52));
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E5 e52) {
        this.f56763F.f57843c.add(m22);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, InterfaceC4478h0 interfaceC4478h0) {
        this.f56763F.f57843c.add(m22);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        if (r9.isInterface() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, int i10, final X1 x12, final C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("processNewlyInstantiatedClass");
        try {
            boolean z10 = f56757p0;
            if (!z10 && h22.f36246f.H()) {
                throw new AssertionError();
            }
            C7996ju c7996ju = this.f56788c;
            com.android.tools.r8.graph.H2 d02 = h22.d0();
            c7996ju.getClass();
            c8659ns0.b("Notify processNewlyInstantiatedClass");
            for (InterfaceC10271xZ interfaceC10271xZ : c7996ju.f49407n) {
                ((C10224xD) interfaceC10271xZ).a(d02, h52);
            }
            c8659ns0.d();
            if (!f56757p0 && h22.isInterface()) {
                throw new AssertionError();
            }
            C8659ns0 b11 = c8659ns0.b("Mark instantiated class");
            try {
                boolean a10 = this.f56812o.a(h22, h52, i10, x12, this.f56792e);
                b11.d();
                if (!a10) {
                    b10.d();
                    return;
                }
                c8659ns0.a("Mark live", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        N.this.b(h22, x12);
                    }
                });
                c8659ns0.a("Class initialization", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        N.this.k(h22);
                    }
                });
                c8659ns0.a("Transition items", new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        N.this.a(h22, c8659ns0);
                    }
                });
                b10.d();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, R0 r02) {
        boolean z10 = f56757p0;
        if (!z10 && h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (!z10 && !h22.isInterface()) {
            throw new AssertionError();
        }
        C4690s5 c4690s5 = this.f56812o;
        C4514j c4514j = this.f56792e;
        c4690s5.getClass();
        boolean z11 = C4690s5.f37724i;
        if (!z11 && !h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z11 && h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (c4690s5.f37785d.add(h22)) {
            c4690s5.a((InterfaceC4403d1) c4514j, (com.android.tools.r8.graph.E0) h22);
            d(h22, r02);
            if (!z10 && !h22.isInterface()) {
                throw new AssertionError();
            }
            q(h22);
            C8659ns0 c10 = C8659ns0.c();
            if (!z10 && h22.f36246f.H()) {
                throw new AssertionError();
            }
            a(new Z0(h22), h22.f36245e, Collections.EMPTY_LIST, c10);
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.E0 a10 = a(m22, (com.android.tools.r8.graph.D5) h52);
        if (a10 == null) {
            if (this.f56794f.f38413f.a(m22)) {
                return;
            }
            this.f56802j.f50691j.warning(new StringDiagnostic("Lambda expression implements missing interface `" + m22.j0() + "`", h52.f36317b.f36244d));
            return;
        }
        if (a10.isInterface() || this.f56794f.f38413f.a(m22)) {
            return;
        }
        this.f56802j.f50691j.warning(new StringDiagnostic("Lambda expression expected to implement an interface, but found `" + m22.j0() + "`", h52.f36317b.f36244d));
    }

    public final void a(C8659ns0 c8659ns0, final AbstractC11128b1 abstractC11128b1, C6286Yx0 c6286Yx0, final com.android.tools.r8.graph.E0 e02) {
        if (e02.e0()) {
            c8659ns0.a("Program", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    N.this.a(abstractC11128b1, e02);
                }
            });
        } else {
            c8659ns0.a("Library", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    N.this.b(abstractC11128b1, e02);
                }
            });
        }
        com.android.tools.r8.graph.M2 m22 = e02.f36247g;
        if (m22 != null) {
            c6286Yx0.b((C6286Yx0) m22);
        }
        c6286Yx0.b((Iterable) e02.f36248h);
    }

    public final void a(AbstractC11128b1 abstractC11128b1, com.android.tools.r8.graph.E0 e02) {
        a(abstractC11128b1, e02.d0());
    }

    public final void a(final AbstractC11128b1 abstractC11128b1, com.android.tools.r8.graph.H2 h22) {
        if (!f56757p0) {
            abstractC11128b1.getClass();
            if (!(abstractC11128b1 instanceof C11111a1) && !this.f56792e.c(abstractC11128b1.a().getType(), h22.f36245e)) {
                throw new AssertionError();
            }
        }
        ((Map) this.f56779V.getOrDefault(h22, Collections.EMPTY_MAP)).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a(abstractC11128b1, (O) obj, (AbstractC8374m80) obj2);
            }
        });
    }

    public final void a(final AbstractC11128b1 abstractC11128b1, O o10, final AbstractC8374m80 abstractC8374m80) {
        C4514j c4514j = this.f56792e;
        if (o10.f56850c == null) {
            o10.f56850c = c4514j.b(o10.f56848a, o10.f56849b);
        }
        o10.f56850c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(abstractC8374m80, abstractC11128b1, (com.android.tools.r8.graph.Z4) obj);
            }
        });
    }

    public final void a(AbstractC8374m80 abstractC8374m80, AbstractC11128b1 abstractC11128b1, com.android.tools.r8.graph.Z4 z42) {
        H4.a aVar;
        Z4.c o10 = z42.o();
        if (o10 == null) {
            if (!f56757p0) {
                throw new AssertionError((Object) "Should not be null");
            }
            return;
        }
        Iterator it = abstractC8374m80.f45165b.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            com.android.tools.r8.graph.H4 a10 = o10.a((com.android.tools.r8.graph.H5) it.next(), this.f56794f, abstractC11128b1, new com.android.tools.r8.graph.B5() {
                @Override
                public final boolean a(AbstractC4365b1 abstractC4365b1) {
                    return N.this.a(abstractC4365b1);
                }
            });
            if (a10.d()) {
                aVar = a10.a();
                break;
            }
            boolean z10 = f56757p0;
            if (!z10 && !a10.c()) {
                throw new AssertionError();
            }
            if (!z10 && a10.b()) {
                throw new AssertionError();
            }
        }
        if (aVar != null) {
            a(aVar, o10);
            a(aVar, abstractC8374m80);
        }
    }

    public final boolean a(AbstractC4365b1 abstractC4365b1) {
        return this.f56780W.a(abstractC4365b1, this.f56802j, this.f56792e);
    }

    public final void a(com.android.tools.r8.graph.H4 h42, final Z4.c cVar) {
        Consumer<? super com.android.tools.r8.graph.D4> consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(cVar, (com.android.tools.r8.graph.I4) obj);
            }
        };
        h42.a(consumer, consumer);
    }

    public final void a(final Z4.c cVar, com.android.tools.r8.graph.I4 i42) {
        a(i42, new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.this.a(cVar, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final R0 a(Z4.c cVar, com.android.tools.r8.graph.H5 h52) {
        R0 r02 = R0.f56919a;
        S0 s02 = this.f56795f0;
        com.android.tools.r8.graph.A2 reference = cVar.q().getReference();
        if (s02.f56953c != null && reference != h52.d().getReference()) {
            s02.a(s02.a(reference), s02.a(h52.d().getReference()), C5076Dz.a.f39723q);
        }
        return r02;
    }

    public final void a(H4.a aVar, AbstractC8374m80 abstractC8374m80) {
        if (aVar.b()) {
            final IdentityHashMap identityHashMap = new IdentityHashMap();
            for (com.android.tools.r8.graph.H5 h52 : abstractC8374m80.f45165b.values()) {
                ((List) identityHashMap.computeIfAbsent(h52.getHolder(), TU.a(new com.android.tools.r8.graph.Uc()))).add(h52);
            }
            aVar.f36410c.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    N.this.a(identityHashMap, (C4516j1) obj);
                }
            });
        }
    }

    public final void a(Map map, C4516j1 c4516j1) {
        for (List<com.android.tools.r8.graph.H5> list : map.values()) {
            com.android.tools.r8.graph.H2 b10 = b(c4516j1.B0(), (com.android.tools.r8.graph.D5) AT.a(list));
            if (b10 != null) {
                this.f56770M.add(c4516j1.getReference());
                for (com.android.tools.r8.graph.H5 h52 : list) {
                    a(X1.a(h52), new com.android.tools.r8.graph.H5(b10, c4516j1));
                }
            }
        }
    }

    public final void a(final AbstractC11128b1 abstractC11128b1, final com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.Z4 z42) {
        Set set;
        Set<com.android.tools.r8.graph.H2> set2;
        com.android.tools.r8.graph.I4 a10 = z42.a(abstractC11128b1, this.f56792e);
        if (a10 == null) {
            return;
        }
        if (!a10.n()) {
            com.android.tools.r8.graph.H5 H10 = a10.e().l().H();
            if (H10 == null) {
                return;
            }
            com.android.tools.r8.graph.H2 holder = H10.getHolder();
            C4516j1 d10 = H10.d();
            if (!f56757p0 && !d10.r1()) {
                throw new AssertionError();
            }
            if (d10.d1()) {
                return;
            }
            d10.L0();
            if (d10.f37314g.h()) {
                return;
            }
            if (!this.f56794f.h(holder.f36245e)) {
                C4690s5 c4690s5 = this.f56812o;
                Set<com.android.tools.r8.graph.E0> set3 = (Set) c4690s5.f37787f.get(holder.f36245e);
                if (set3 == null) {
                    set = Collections.EMPTY_SET;
                } else {
                    Set b10 = C4875Al0.b(set3.size());
                    for (com.android.tools.r8.graph.E0 e03 : set3) {
                        if (e03.e0()) {
                            b10.add(e03.d0());
                        }
                    }
                    set = b10;
                }
                if (set.isEmpty()) {
                    return;
                }
                ArrayDeque arrayDeque = new ArrayDeque(set);
                Set a11 = C4875Al0.a(set);
                while (!arrayDeque.isEmpty()) {
                    com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) arrayDeque.removeFirst();
                    if (!f56757p0 && !a11.contains(h22)) {
                        throw new AssertionError();
                    }
                    if (h22.c(d10.getReference()) == null) {
                        if (!this.f56794f.h(h22.f36245e)) {
                            C4690s5 c4690s52 = this.f56812o;
                            Set<com.android.tools.r8.graph.E0> set4 = (Set) c4690s52.f37787f.get(h22.f36245e);
                            if (set4 == null) {
                                set2 = Collections.EMPTY_SET;
                            } else {
                                Set b11 = C4875Al0.b(set4.size());
                                for (com.android.tools.r8.graph.E0 e04 : set4) {
                                    if (e04.e0()) {
                                        b11.add(e04.d0());
                                    }
                                }
                                set2 = b11;
                            }
                            for (com.android.tools.r8.graph.H2 h23 : set2) {
                                if (a11.add(h23)) {
                                    arrayDeque.add(h23);
                                }
                            }
                        }
                    }
                }
                return;
            }
        }
        a(a10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.this.a(abstractC11128b1, e02, (com.android.tools.r8.graph.H5) obj);
            }
        });
        abstractC11128b1.getClass();
        if (abstractC11128b1 instanceof Z0) {
            a(abstractC11128b1.a(), a10.e().d().getReference());
        }
    }

    public final R0 a(AbstractC11128b1 abstractC11128b1, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        R0 r02 = R0.f56919a;
        S0 s02 = this.f56795f0;
        if (s02.f56953c != null) {
            abstractC11128b1.getClass();
            if (abstractC11128b1 instanceof Z0) {
                s02.a(s02.a(abstractC11128b1.a().f36245e), s02.a(h52.d().getReference()), C5076Dz.a.f39722p);
            }
        }
        return r02;
    }

    public final void a(com.android.tools.r8.graph.H2 h22, C6286Yx0 c6286Yx0, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 b10 = b(m22, (com.android.tools.r8.graph.D5) h22);
        if (b10 != null) {
            c6286Yx0.b((C6286Yx0) b10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.util.Map, java.lang.Object] */
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52, X1 x12) {
        L l10 = this.f56775R;
        l10.getClass();
        C4460g1 d10 = f52.d();
        l10.f56690b.accept(d10, x12);
        l10.f56691c.r(f52.getHolder());
        if (l10.f56689a.add(d10)) {
            if (f52.d().f37204i != null) {
                a(f52.d().f37204i);
            } else {
                a(f52.getReference());
            }
            if (f52.getAccessFlags().n()) {
                a(f52.getHolder(), (com.android.tools.r8.graph.D5) f52);
                c(f52.getReference().getType(), (com.android.tools.r8.graph.D5) f52);
                b(f52);
                k(f52.getHolder());
            } else if (!((C7207f80) this.f56819u.getOrDefault(f52.getHolder(), C7207f80.f47877c)).f47879b.containsKey(f52.getReference())) {
                a(f52.getHolder(), (com.android.tools.r8.graph.D5) f52);
                c(f52.getReference().getType(), (com.android.tools.r8.graph.D5) f52);
                b(f52);
            }
            a(f52);
            if (d(f52.getHolder()) && !f52.d().G0()) {
                this.f56780W.a(f52);
            }
            for (AZ az : this.f56788c.f49405l) {
                az.a(f52, d52);
            }
        }
    }

    public final void a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, AbstractC4783x3 abstractC4783x3) {
        c(c4554l1.s0(), (com.android.tools.r8.graph.D5) h52);
        c(c4554l1.getType(), (com.android.tools.r8.graph.D5) h52);
        this.f56766I.add(c4554l1.s0());
    }

    public final boolean a(C4460g1 c4460g1) {
        return ((C4613o3) this.f56810n.f37507a.get(c4460g1.getReference())) != null;
    }

    public final boolean a(C4516j1 c4516j1) {
        return this.f56774Q.f56716a.contains(c4516j1);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (this.f56774Q.f56716a.contains(h52.d())) {
            return;
        }
        C7541h80 c7541h80 = this.f56803j0;
        c7541h80.getClass();
        c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h53), h52);
    }

    public final boolean a(InterfaceC4610o0 interfaceC4610o0) {
        boolean z10 = f56757p0;
        if (interfaceC4610o0.isClass()) {
            com.android.tools.r8.graph.E0 asClass = interfaceC4610o0.asClass();
            if (asClass.e0()) {
                return this.f56821w.f56875a.contains(asClass.d0());
            }
            if (z10 || !asClass.e0()) {
                return this.f56760C.contains(asClass);
            }
            throw new AssertionError();
        }
        if (!z10 && !interfaceC4610o0.s()) {
            throw new AssertionError();
        }
        if (interfaceC4610o0.a().e0()) {
            if (interfaceC4610o0.J()) {
                com.android.tools.r8.graph.F5 W10 = interfaceC4610o0.W();
                L l10 = this.f56775R;
                l10.getClass();
                return l10.f56689a.contains(W10.d()) || a(W10.d());
            }
            if (!z10 && !interfaceC4610o0.I()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.H5 H10 = interfaceC4610o0.H();
            if (!this.f56774Q.f56716a.contains(H10.d())) {
                if (!this.f56768K.f56716a.contains(H10.d())) {
                    return false;
                }
            }
            return true;
        }
        com.android.tools.r8.graph.E0 a10 = interfaceC4610o0.a();
        if (z10 || !a10.e0()) {
            return this.f56760C.contains(a10);
        }
        throw new AssertionError();
    }

    public final void a(Consumer consumer) {
        this.f56821w.a().forEach(consumer);
    }

    public final com.android.tools.r8.graph.Z4 a(final com.android.tools.r8.graph.A2 a22, final boolean z10, final com.android.tools.r8.graph.H5 h52, final X1 x12) {
        com.android.tools.r8.graph.Z4 a10 = a(a22, h52, x12, z10);
        if (a22.s0().E0()) {
            a(a22.s0(), h52, x12);
            return a10;
        }
        a10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(a22, h52, z10, x12, (com.android.tools.r8.graph.Z4) obj);
            }
        });
        return a10;
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, boolean z10, X1 x12, com.android.tools.r8.graph.Z4 z42) {
        if (z42.w()) {
            Z4.c<?> o10 = z42.o();
            com.android.tools.r8.graph.H2 d02 = o10.f37020b.d0();
            if (d02 == null) {
                a(a22, h52);
                return;
            }
            com.android.tools.r8.graph.H5 r10 = o10.r();
            if (r10 == null) {
                return;
            }
            O o11 = new O(a22, z10);
            AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) ((Map) this.f56779V.getOrDefault(d02, Collections.EMPTY_MAP)).get(o11);
            if (abstractC8374m80 != null) {
                abstractC8374m80.add((AbstractC8374m80) h52);
                this.f56795f0.a(o10.q(), x12);
                return;
            }
            a(x12, r10);
            if (o10.b(h52, this.f56794f).a()) {
                return;
            }
            ((AbstractC8374m80) ((Map) this.f56779V.computeIfAbsent(d02, C5480Ky.a(new C6176Wz0()))).computeIfAbsent(o11, C5480Ky.a(new C6880dA0()))).add((AbstractC8374m80) h52);
            a(o10.a(h52, this.f56794f, new InterfaceC4444f4() {
                @Override
                public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer, Consumer consumer2) {
                    N.this.a(m22, consumer, consumer2);
                }
            }, new com.android.tools.r8.graph.B5() {
                @Override
                public final boolean a(AbstractC4365b1 abstractC4365b1) {
                    return N.this.b(abstractC4365b1);
                }
            }), o10);
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer, Consumer consumer2) {
        this.f56812o.a(m22, consumer, consumer2, this.f56792e);
    }

    public final void a(com.android.tools.r8.graph.I4 i42, final Function function) {
        i42.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(function, (com.android.tools.r8.graph.D4) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(function, (com.android.tools.r8.graph.C4) obj);
            }
        });
    }

    public final void a(Function function, com.android.tools.r8.graph.D4 d42) {
        com.android.tools.r8.graph.H5 H10 = d42.l().H();
        if (H10 == null || H10.d().d1()) {
            return;
        }
        R0 r02 = (R0) function.apply(H10);
        d(r02, H10);
        com.android.tools.r8.graph.H0 m10 = d42.m();
        if (m10 == null || !(m10 instanceof com.android.tools.r8.graph.H5)) {
            return;
        }
        a(r02, m10.H());
    }

    public final void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.D5 d52) {
        if (e02.e0()) {
            C4798y c4798y = this.f56794f;
            if (AbstractC4420e.a(e02, d52, c4798y, (C4514j) c4798y.f()).b()) {
                this.f56769L.add(e02.getType());
            }
        }
    }

    public final void a(com.android.tools.r8.graph.D5 d52, C4554l1 c4554l1, D3.a aVar) {
        if (aVar.d().e0() && aVar.a(d52, this.f56794f).b()) {
            this.f56771N.add(aVar.f36225d.getReference());
        }
        a(aVar.f36223b, d52);
        com.android.tools.r8.graph.E5 a10 = com.android.tools.r8.graph.F0.a(aVar.f36224c, aVar.f36225d).a(d52);
        b(c4554l1.s0(), a10);
        b(c4554l1.getType(), a10);
    }

    public final void a(com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z43) {
        if (z42.d().e0() && z42.a(d52, this.f56794f).b()) {
            this.f56770M.add(z42.q().getReference());
        }
        a(z42.a(), d52);
        a(a22, d52);
    }

    public final void a(com.android.tools.r8.graph.D5 d52, X1 x12, C4516j1 c4516j1) {
        com.android.tools.r8.graph.H2 b10 = b(c4516j1.B0(), d52);
        if (b10 != null) {
            this.f56770M.add(c4516j1.getReference());
            a(x12, new com.android.tools.r8.graph.H5(b10, c4516j1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final void a(X1 x12, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.Z4 z42) {
        if (z42.w()) {
            Z4.c<?> o10 = z42.o();
            if (o10.d().e0()) {
                a(x12, new com.android.tools.r8.graph.H5(o10.d().d0(), o10.q()));
            }
            com.android.tools.r8.graph.H0 c10 = o10.c(h52.getHolder(), this.f56794f);
            if (c10 == null) {
                this.f56770M.add(o10.q().getReference());
                C7996ju c7996ju = this.f56788c;
                C4516j1 q10 = o10.q();
                for (InterfaceC10104wZ interfaceC10104wZ : c7996ju.f49402i) {
                    ((com.android.tools.r8.internal.W2) interfaceC10104wZ).getClass();
                    int i10 = com.android.tools.r8.androidapi.f.f35602a;
                    q10.f(com.android.tools.r8.androidapi.h.f35609b);
                }
                return;
            }
            if (c10.getHolder().d0() == null) {
                return;
            }
            com.android.tools.r8.graph.H5 H10 = c10.H();
            if (((AbstractC8374m80) this.f56818t.computeIfAbsent(h52.d(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC8374m80 c11;
                    c11 = AbstractC8374m80.c();
                    return c11;
                }
            })).add((AbstractC8374m80) H10)) {
                M m10 = this.f56774Q;
                m10.getClass();
                if (m10.f56716a.contains(h52.d())) {
                    a(new O1(h52.d()), H10);
                    if (c10.getAccessFlags().H()) {
                        return;
                    }
                    d(new O1(h52.d()), H10);
                }
            }
        }
    }

    public static void a(C11315m2 c11315m2, C4516j1 c4516j1) {
        c11315m2.f57529c.add(c4516j1.getReference());
    }

    /* JADX WARN: Type inference failed for: r5v57, types: [com.android.tools.r8.internal.W, com.android.tools.r8.internal.nI] */
    public C11229h0 a(D4 d42, ExecutorService executorService, C8659ns0 c8659ns0) throws ExecutionException {
        this.f56804k = d42;
        C7541h80 c7541h80 = d42.f56425d;
        C7541h80 c7541h802 = this.f56803j0;
        Objects.requireNonNull(c7541h802);
        c7541h80.forEach(new S9(c7541h802));
        c8659ns0.b("Transfer minimum keep info");
        a(d42);
        c8659ns0.d();
        if (!f56757p0 && this.f56817s != C6858d3.f47261a) {
            throw new AssertionError();
        }
        if (this.f56786b.b()) {
            this.f56817s = DM.a(this.f56794f, this.f56816r, executorService);
            c8659ns0.b("Model library");
            AbstractC9462si.a(this.f56794f);
            c8659ns0.d();
        } else {
            AbstractC11516y1 r10 = this.f56794f.r();
            if (r10 != null) {
                c8659ns0.b("Retain keep info");
                this.f56817s = ((C11500x1) r10).f57968h.a();
                final C11144c0 c11144c0 = C11144c0.f57206a;
                this.f56780W.a(r10);
                r10.a(this.f56794f, new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        N.this.d(c11144c0, (com.android.tools.r8.graph.H2) obj, (C11280k1) obj2);
                    }
                }, new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        N.this.e(c11144c0, (com.android.tools.r8.graph.F5) obj, (C11365p1) obj2);
                    }
                }, new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        N.this.b((com.android.tools.r8.graph.H5) obj, (H1) obj2);
                    }
                });
                c8659ns0.d();
            }
        }
        c8659ns0.a("Unconditional rules", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                N.this.i();
            }
        });
        c8659ns0.b("Enqueue all");
        d();
        c8659ns0.d();
        c8659ns0.b("Trace");
        if (this.f56802j.S()) {
            c8659ns0.b("Trace AndroidManifest.xml files");
            this.f56794f.f38400O.e();
            PH it = this.f56794f.G().f56403m.iterator();
            while (it.hasNext()) {
                this.f56794f.f38400O.a(((Integer) it.next()).intValue(), "Non shrunken dex code");
            }
            c8659ns0.d();
        }
        b(executorService, c8659ns0);
        c8659ns0.d();
        this.f56802j.f50691j.a();
        c8659ns0.b("Finalize library override");
        Iterator it2 = this.f56821w.a().iterator();
        while (it2.hasNext()) {
            for (C4516j1 c4516j1 : ((com.android.tools.r8.graph.H2) it2.next()).D1()) {
                if (c4516j1.k1().e()) {
                    c4516j1.a(AbstractC9530t40.f52518b);
                }
            }
        }
        c8659ns0.d();
        c8659ns0.b("Finish analysis");
        for (InterfaceC7339fx interfaceC7339fx : this.f56788c.f49412s) {
            interfaceC7339fx.a(this);
        }
        if (this.f56794f.E().S()) {
            C10444yb0 c10444yb0 = this.f56794f.f38400O;
            boolean a10 = this.f56786b.a();
            c10444yb0.f54064j = null;
            c10444yb0.f54065k = null;
            c10444yb0.f54069o.clear();
            if (!a10) {
                List unmodifiableList = Collections.unmodifiableList(c10444yb0.f54056b.f44525b.f49012b);
                GJ.b(unmodifiableList, "unmodifiableList(_resources)");
                Iterator it3 = unmodifiableList.iterator();
                while (it3.hasNext()) {
                    ((C8623ng0) it3.next()).a(false);
                }
            }
        }
        c8659ns0.d();
        if (!f56757p0 && this.f56794f.E().f50599F1.f50841R0) {
            for (com.android.tools.r8.graph.H2 h22 : this.f56821w.a()) {
                if (!f56757p0 && !this.f56795f0.a(h22)) {
                    throw new AssertionError();
                }
            }
        }
        c8659ns0.b("Finish compat building");
        if (this.f56786b.b() && this.f56784a) {
            C4798y c4798y = this.f56794f;
            C11333n3 c11333n3 = new C11333n3(this.f56777T.f57532a);
            if (!C4798y.f38385W && !c4798y.E().f50674d1) {
                throw new AssertionError();
            }
            c4798y.f38420m = c11333n3;
        } else if (!f56757p0 && this.f56777T != null) {
            throw new AssertionError();
        }
        c8659ns0.d();
        a aVar = this.f56786b;
        aVar.getClass();
        if (aVar == a.f56830g) {
            return null;
        }
        c8659ns0.b("Create result");
        C11229h0 a11 = a(this.f56792e, c8659ns0);
        this.f56809m0.a(this.f56794f);
        c8659ns0.d();
        return a11;
    }

    public final void a(C11416s2 c11416s2) {
        c11416s2.a(this.f56794f, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((com.android.tools.r8.graph.H2) obj, (C11280k1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((com.android.tools.r8.graph.F5) obj, (C11365p1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.c((com.android.tools.r8.graph.H5) obj, (H1) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22, C11280k1 c11280k1) {
        e(C11144c0.f57206a, h22, c11280k1);
    }

    public final void a(com.android.tools.r8.graph.F5 f52, C11365p1 c11365p1) {
        f(C11144c0.f57206a, f52, c11365p1);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        final C11280k1 a10 = this.f56781X.a(h22.getType());
        if (a10 != null) {
            this.f56780W.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11280k1) obj).a(C11280k1.this);
                }
            }, h22);
            if ((this.f56802j.W() || this.f56786b.c()) && !a10.f57790a.g()) {
                boolean z10 = f56757p0;
                if (!z10) {
                    a10.a(this.f56802j);
                }
                if (!z10) {
                    a10.a(this.f56802j);
                }
                a(h22, a10.f57792c, (AbstractC4365b1) null);
            }
        }
    }

    public final void d(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H2 h22, final C11280k1 c11280k1) {
        if (this.f56821w.f56875a.contains(h22)) {
            this.f56780W.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11280k1) obj).a(C11280k1.this);
                }
            }, h22);
        } else {
            this.f56781X.a(C11144c0.f57206a).a(h22.getType()).a(c11280k1);
        }
        b(abstractC11161d0, h22, c11280k1);
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        C11144c0 c11144c0 = C11144c0.f57206a;
        final C11365p1 a10 = this.f56781X.a(f52.getReference());
        if (a10 != null) {
            this.f56780W.a(f52, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11365p1) obj).a(C11365p1.this);
                }
            });
            c(c11144c0, f52, a10);
        }
    }

    public final void e(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.F5 f52, final C11365p1 c11365p1) {
        L l10 = this.f56775R;
        l10.getClass();
        if (l10.f56689a.contains(f52.d())) {
            this.f56780W.a(f52, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((C11365p1) obj).a(C11365p1.this);
                }
            });
        } else {
            this.f56781X.a(C11144c0.f57206a).a(f52.getReference()).a(c11365p1);
        }
        c(abstractC11161d0, f52, c11365p1);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, final H1 h12) {
        this.f56780W.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H1) obj).a(H1.this);
            }
        }, h52);
        c(C11144c0.f57206a, h52, h12);
    }

    public final void d(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H5 h52, final H1 h12) {
        if (!this.f56774Q.a(h52)) {
            M m10 = this.f56768K;
            m10.getClass();
            if (!m10.f56716a.contains(h52.d())) {
                this.f56781X.a(C11144c0.f57206a).a(h52.getReference()).a(h12);
                c(abstractC11161d0, h52, h12);
            }
        }
        this.f56780W.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H1) obj).a(H1.this);
            }
        }, h52);
        c(abstractC11161d0, h52, h12);
    }

    public final void a(final Y y10) {
        C11416s2 c11416s2 = (C11416s2) this.f56781X.f56370a.remove(y10);
        if (c11416s2 != null) {
            c11416s2.a(this.f56794f, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    N.this.c(y10, (com.android.tools.r8.graph.H2) obj, (C11280k1) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    N.this.d(y10, (com.android.tools.r8.graph.F5) obj, (C11365p1) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    N.this.d(y10, (com.android.tools.r8.graph.H5) obj, (H1) obj2);
                }
            });
        }
    }

    public final void b(final Q q10) {
        if (this.f56799h0.f45165b.isEmpty() && this.f56801i0.f45165b.isEmpty()) {
            return;
        }
        AbstractC8374m80 abstractC8374m80 = this.f56799h0;
        Objects.requireNonNull(q10);
        abstractC8374m80.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Q.this.b((com.android.tools.r8.graph.H5) obj);
            }
        });
        for (com.android.tools.r8.graph.H5 h52 : this.f56801i0.f45165b.values()) {
            if (this.f56797g0.a(h52)) {
                this.f56799h0.add((AbstractC8374m80) h52);
            }
        }
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((C7753iR) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        };
        if (!this.f56802j.W()) {
            biConsumer = biConsumer.andThen(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    N.this.a(q10, (C7753iR) obj, (com.android.tools.r8.graph.H5) obj2);
                }
            });
        }
        BiConsumer biConsumer2 = biConsumer;
        C4798y c4798y = this.f56794f;
        M70 m70 = this.f56809m0;
        final AbstractC7103ea c6937da = new C6937da(c4798y, biConsumer2, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((C10294xh) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return N.this.a((C7753iR) obj);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.b((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        }, q10, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
        m70.getClass();
        if (!(m70 instanceof C6520b10)) {
            c6937da = new Q70(c4798y, m70.a(), c6937da);
        }
        final Z70 z70 = new Z70();
        C5467Kr0.a(this.f56799h0, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(c6937da, z70, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f56794f.E().G(), this.f56798h);
        z70.a(this.f56794f.E().G(), this.f56798h);
        C5467Kr0.a(this.f56799h0, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a(q10, c6937da, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f56794f.E().G(), this.f56798h);
        for (com.android.tools.r8.graph.H5 h53 : this.f56801i0.f45165b.values()) {
            if (!f56757p0 && this.f56805k0 == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.H5 b10 = this.f56805k0.f41372b.b(h53, c6937da);
            this.f56805k0.a(h53, b10);
            this.f56803j0.f43368b.remove(new C7333fv(C7374g80.f48192a, b10));
            if (!this.f56774Q.f56716a.contains(b10.d())) {
                q10.a(b10);
            }
            q10.f56895c.add(b10);
        }
        List a10 = c6937da.a();
        if (!f56757p0 && !a10.isEmpty()) {
            throw new AssertionError();
        }
        this.f56801i0.f45165b.clear();
        this.f56799h0.f45165b.clear();
    }

    public final void a(Q q10, C7753iR c7753iR, com.android.tools.r8.graph.H5 h52) {
        Iterator<com.android.tools.r8.graph.M2> it = c7753iR.c().R0().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            C4514j c4514j = (C4514j) this.f56794f.f();
            c4514j.getClass();
            com.android.tools.r8.graph.E0 holder = h52.getHolder();
            if (next != holder.f36245e) {
                holder = c4514j.a(next);
            }
            if (holder == null) {
                C9406sK M12 = c7753iR.c().M1();
                CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
                while (a10.f43396b.hasNext()) {
                    com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                    synchronized (q10) {
                        q10.a(h53);
                    }
                }
                return;
            }
        }
    }

    public final void a(AbstractC7103ea abstractC7103ea, Z70 z70, com.android.tools.r8.graph.H5 h52) {
        this.f56797g0.a(abstractC7103ea, z70, h52);
    }

    public final void a(Q q10, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52) {
        this.f56797g0.a(h52, abstractC7103ea, q10.c(h52));
    }

    public final void a(C7753iR c7753iR, com.android.tools.r8.graph.H5 h52) {
        synchronized (this.f56820v) {
            this.f56820v.put(c7753iR.c(), h52);
        }
    }

    public final void a(C10294xh c10294xh, com.android.tools.r8.graph.H5 h52) {
        synchronized (this.f56820v) {
            try {
                IdentityHashMap identityHashMap = this.f56820v;
                if (!C10294xh.f53809i && c10294xh.f53817h == null) {
                    throw new AssertionError();
                }
                identityHashMap.put(c10294xh.f53817h, h52);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final InterfaceC9323rr0 a(final C7753iR c7753iR) {
        return new InterfaceC9323rr0() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
                N.this.a(c7753iR, h52, a22);
            }
        };
    }

    public final void a(C7753iR c7753iR, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        int i10;
        boolean z10 = f56757p0;
        if (!z10 && !this.f56786b.b()) {
            throw new AssertionError();
        }
        C8570nJ c8570nJ = this.f56802j;
        if (c8570nJ.f50690i1) {
            return;
        }
        if (c8570nJ.T() && this.f56802j.W()) {
            return;
        }
        com.android.tools.r8.graph.B2 b22 = c7753iR.f48943d.f49628d.f36190e;
        if (c7753iR.f48940a.E().Q()) {
            com.android.tools.r8.graph.C2 c22 = c7753iR.f48943d.f49628d;
            if (c22.f36192g && (c22.f36190e.b() || c7753iR.f48943d.f49628d.f36190e.c())) {
                return;
            }
        }
        if (b22.b() || b22.c()) {
            C8085kR c8085kR = c7753iR.f48943d;
            C4724u1 b10 = c7753iR.f48940a.b();
            com.android.tools.r8.graph.L2 t02 = c8085kR.f49628d.m0().t0();
            com.android.tools.r8.graph.L2 l22 = b10.f38091l1;
            t02.getClass();
            if (t02.b(l22.f36562f)) {
                com.android.tools.r8.graph.H0 b11 = this.f56794f.b(a22);
                boolean z11 = com.android.tools.r8.graph.H0.f36361e;
                com.android.tools.r8.graph.H5 H10 = b11 != null ? b11.H() : null;
                if (H10 == null || H10.getHolder() != h52.getHolder()) {
                    if (!z10) {
                        throw new AssertionError();
                    }
                    return;
                }
                WY T02 = H10.d().T0();
                if (!WY.f45446x && (i10 = T02.f45467v) != 3 && i10 != 4) {
                    throw new AssertionError();
                }
                T02.f45467v = 4;
            }
        }
    }

    public final C11229h0 a(C4514j c4514j, C8659ns0 c8659ns0) {
        C4798y c4798y;
        B4 b42;
        C11450u2 a10;
        C11245i c11245i;
        c8659ns0.b("Rewrite with deferred results");
        this.f56796g.a(this.f56798h);
        c8659ns0.d();
        c8659ns0.b("Remove dead protos");
        this.f56762E.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return N.this.f((com.android.tools.r8.graph.H2) obj);
            }
        });
        final Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(this.f56764G.size() + this.f56762E.size()));
        this.f56762E.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((com.android.tools.r8.graph.H2) obj).f36245e);
            }
        });
        newSetFromMap.addAll(this.f56764G);
        c8659ns0.d();
        c8659ns0.b("Prune field access mappings");
        this.f56810n.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return N.a((C4554l1) obj, (C4613o3) obj2);
            }
        });
        boolean z10 = f56757p0;
        if (!z10) {
            C4594n3 c4594n3 = this.f56810n;
            if (!C4594n3.f37506b) {
                if (c4594n3.f37507a.values().size() != C4875Al0.a(c4594n3.f37507a.values()).size()) {
                    throw new AssertionError();
                }
            } else {
                c4594n3.getClass();
            }
        }
        c8659ns0.d();
        if (!z10) {
            c(c4514j.a());
        }
        c8659ns0.b("Prune dead items");
        D4 d42 = this.f56804k;
        C4798y c4798y2 = this.f56794f;
        d42.getClass();
        c8659ns0.b("Prune keep info");
        d42.f56422a.a(c4798y2, this);
        c8659ns0.d();
        c8659ns0.b("Prune others");
        D4.a(d42.f56396f, c4798y2, this);
        c8659ns0.d();
        a aVar = this.f56786b;
        if ((aVar.b() || aVar.a()) && (b42 = (c4798y = this.f56794f).f38423p) != null) {
            if (!z10 && this.f56804k == b42) {
                throw new AssertionError();
            }
            c8659ns0.b("Prune keep info");
            b42.f56422a.a(c4798y, this);
            c8659ns0.d();
            c8659ns0.b("Prune others");
            D4.a(b42.f56396f, c4798y, this);
            c8659ns0.d();
        }
        c8659ns0.d();
        c8659ns0.b("Ensure static factory references");
        this.f56794f.b().f38001a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.e((com.android.tools.r8.graph.M2) obj);
            }
        });
        c8659ns0.d();
        c8659ns0.b("Rebuild application");
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        this.f56761D.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.b((InterfaceC4440f0) obj);
            }
        });
        for (com.android.tools.r8.graph.S s10 : this.f56760C) {
            if (s10.f0()) {
                c10.add(s10.G());
            } else if (((com.android.tools.r8.graph.E0) s10) instanceof com.android.tools.r8.graph.I0) {
                c11.add(s10.k());
            } else if (!f56757p0) {
                throw new AssertionError();
            }
        }
        C4462g3.a a11 = c4514j.a().a().c().a(c10);
        a11.getClass();
        AbstractC7552hC a12 = AbstractC7552hC.a(c11);
        if (!C4462g3.a.f37231l && a12 == null) {
            throw new AssertionError();
        }
        a11.f37232h = a12;
        a11.f37234j.clear();
        C4462g3 b10 = a11.b();
        c8659ns0.d();
        if (!f56757p0) {
            c(b10);
        }
        com.android.tools.r8.synthesis.G g10 = new com.android.tools.r8.synthesis.G() {
            @Override
            public final Set a(com.android.tools.r8.graph.H2 h22) {
                return N.this.g(h22);
            }
        };
        a();
        C11500x1 c11500x1 = this.f56780W;
        AV a13 = this.f56817s.a();
        c11500x1.getClass();
        boolean z11 = C11500x1.f57961j;
        if (!z11 && c11500x1.f57968h != AV.f38624c) {
            throw new AssertionError();
        }
        if (!z11 && a13 == null) {
            throw new AssertionError();
        }
        c11500x1.f57968h = a13;
        c8659ns0.b("Create app info with liveness");
        C11549b a14 = c4514j.g().a(b10);
        C6300Zd c6300Zd = c4514j.f37255b;
        C11349o2 f10 = c4514j.f();
        if (this.f56786b.b()) {
            C11433t2 c11433t2 = this.f56763F;
            C4798y c4798y3 = this.f56794f;
            IdentityHashMap a15 = c11433t2.a(c4798y3, g10);
            if (!a15.isEmpty()) {
                com.android.tools.r8.diagnostic.internal.m a16 = C11433t2.a(a15);
                if (c4798y3.E().f50655Y0) {
                    c4798y3.E().f50691j.warning(a16);
                } else {
                    c4798y3.E().f50691j.error(a16);
                }
            }
            c4798y3.E().f50691j.a();
            a10 = new C11450u2(C4875Al0.a(c11433t2.f57841a, c11433t2.f57842b.o(), c11433t2.f57843c));
        } else {
            a10 = this.f56763F.a(this.f56794f);
        }
        Set a17 = C4875Al0.a(this.f56821w.a(), new com.android.tools.r8.errors.q());
        Set set = this.f56768K.f56716a;
        if (C8570nJ.b()) {
            set = Collections.unmodifiableSet(set);
        }
        Set c12 = AbstractC5513Ll0.c();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            c12.add(((AbstractC4479h1) it.next()).getReference());
        }
        Set set2 = this.f56769L;
        Set set3 = this.f56770M;
        Set set4 = this.f56771N;
        Set set5 = this.f56772O;
        Set set6 = this.f56773P;
        Set set7 = this.f56774Q.f56716a;
        if (C8570nJ.b()) {
            set7 = Collections.unmodifiableSet(set7);
        }
        Set c13 = AbstractC5513Ll0.c();
        for (Iterator it2 = set7.iterator(); it2.hasNext(); it2 = it2) {
            c13.add(((AbstractC4479h1) it2.next()).getReference());
        }
        C4594n3 c4594n32 = this.f56810n;
        C4690s5 c4690s5 = this.f56812o;
        boolean z12 = C4690s5.f37724i;
        if (!z12 && c4690s5.f37725h == null) {
            throw new AssertionError();
        }
        if (c4690s5.f37787f == null) {
            c4690s5.a(c4514j);
        }
        if (!z12) {
            c4690s5.b(c4514j);
        }
        c4690s5.f37725h = null;
        IdentityHashMap identityHashMap = this.f56814p;
        C11500x1 c11500x12 = this.f56780W;
        D4 d43 = this.f56804k;
        Map map = d43.f56400j;
        Set a18 = a(d43.f56396f);
        Set a19 = a(this.f56804k.f56397g);
        Set a20 = a(this.f56804k.f56398h);
        D4 d44 = this.f56804k;
        W60 w60 = d44.f56399i;
        Set set8 = d44.f56401k;
        Set set9 = this.f56815q;
        Y10 y10 = new Y10();
        for (Iterator it3 = set8.iterator(); it3.hasNext(); it3 = it3) {
            y10.putIfAbsent((AbstractC4744v2) it3.next(), Boolean.TRUE);
            c13 = c13;
        }
        Set set10 = c13;
        Iterator it4 = set9.iterator();
        while (it4.hasNext()) {
            y10.putIfAbsent((AbstractC4744v2) it4.next(), Boolean.FALSE);
        }
        C11245i c11245i2 = new C11245i(a14, c6300Zd, f10, a10, newSetFromMap, a17, c12, set2, set3, set4, set5, set6, set10, c4594n32, c4690s5, identityHashMap, c11500x12, map, a18, a19, a20, w60, y10, Collections.EMPTY_SET, Collections.EMPTY_MAP, this.f56782Y, this.f56783Z, this.f56785a0);
        c8659ns0.d();
        c4514j.f37259f.e();
        BiConsumer<C11245i, a> biConsumer = this.f56802j.f50599F1.f50912w;
        if (biConsumer != null) {
            c11245i = c11245i2;
            biConsumer.accept(c11245i, this.f56786b);
        } else {
            c11245i = c11245i2;
        }
        return new C11229h0(c11245i);
    }

    public final void a() {
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        JI ji2 = this.f56805k0;
        if (ji2 != null) {
            ji2.a(biConsumer);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        I1 a10;
        com.android.tools.r8.graph.H5 H10 = this.f56794f.b(a23).H();
        C11500x1 c11500x1 = this.f56780W;
        C4514j c4514j = this.f56792e;
        c11500x1.getClass();
        com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(c4514j.a(a22.f38297f));
        if (a11 == null) {
            a10 = I1.f56549D;
        } else {
            C4516j1 b10 = a11.b(a22);
            if (b10 == null) {
                a10 = I1.f56549D;
            } else {
                a10 = c11500x1.a(a11, b10);
            }
        }
        this.f56780W.a(H10, a10.d().a(this.f56781X.b(C11416s2.f57793b).a((AbstractC4744v2) a22, I1.f56549D.d()).d()));
    }

    public final Set a(final Set set) {
        if (!set.isEmpty() && this.f56805k0 != null) {
            final Set c10 = AbstractC5513Ll0.c();
            this.f56805k0.a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    N.a(Set.this, c10, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
                }
            });
            set.addAll(c10);
        }
        return set;
    }

    public static void a(Set set, Set set2, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (set.contains(a22)) {
            set2.add(a23);
        }
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22, C6286Yx0 c6286Yx0, AbstractC4780x0 abstractC4780x0) {
        if (m22.E0()) {
            m22 = m22.a(this.f56794f.b());
        }
        if (!m22.I0()) {
            return true;
        }
        com.android.tools.r8.graph.E0 g10 = abstractC4780x0.g(m22);
        if (g10 == null) {
            if (!f56757p0) {
                C11433t2 c11433t2 = this.f56763F;
                if (!c11433t2.f57841a.contains(m22) && !c11433t2.f57842b.containsKey(m22) && !c11433t2.f57843c.contains(m22)) {
                    throw new AssertionError((Object) ("Expected type to be in missing types': " + ((Object) m22)));
                }
            }
        } else {
            boolean z10 = f56757p0;
            if (!z10) {
                C11433t2 c11433t22 = this.f56763F;
                if (c11433t22.f57841a.contains(m22) || c11433t22.f57842b.containsKey(m22) || c11433t22.f57843c.contains(m22)) {
                    throw new AssertionError((Object) ("Type with definition also in missing types: " + ((Object) m22)));
                }
            }
            if (!z10 && !g10.e0() && !this.f56760C.contains(g10.z())) {
                throw new AssertionError((Object) ("Expected type to be in live non-program types: " + ((Object) g10)));
            }
            c6286Yx0.b((C6286Yx0) g10);
        }
        return true;
    }

    public final void a(com.android.tools.r8.graph.E0 e02, C6286Yx0 c6286Yx0, AbstractC4780x0 abstractC4780x0) {
        for (com.android.tools.r8.graph.M2 m22 : e02.z0()) {
            if (!f56757p0 && !a(m22, c6286Yx0, abstractC4780x0)) {
                throw new AssertionError();
            }
        }
        if (!f56757p0 && !e02.e0() && !this.f56760C.contains(e02.z())) {
            throw new AssertionError((Object) ("Expected type to be in live non-program types: " + ((Object) e02)));
        }
        if (e02.e0()) {
            for (C4460g1 c4460g1 : e02.I0()) {
                if (a(c4460g1) && !f56757p0 && !a(c4460g1.getType(), c6286Yx0, abstractC4780x0)) {
                    throw new AssertionError();
                }
            }
            for (C4516j1 c4516j1 : e02.z1()) {
                if (this.f56768K.f56716a.contains(c4516j1) && !f56757p0) {
                    for (com.android.tools.r8.graph.M2 m23 : c4516j1.getReference().u0()) {
                        if (!f56757p0 && !a(m23, c6286Yx0, abstractC4780x0)) {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        C7996ju c7996ju = this.f56788c;
        L0 l02 = this.f56776S;
        for (InterfaceC8005jx interfaceC8005jx : c7996ju.f49413t) {
            interfaceC8005jx.a(this, l02, executorService, c8659ns0);
            if (l02.a()) {
                return;
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        C11433t2 c11433t2 = this.f56763F;
        new InterfaceDesugarMissingTypeDiagnostic(h22.f36244d, Position.UNKNOWN, m22.s0(), h22.getType().s0(), null);
        c11433t2.a(m22, h22);
    }

    public final void a(C11535z4 c11535z4) {
        this.f56804k.a(c11535z4);
        a((E4) c11535z4);
        C7541h80 c7541h80 = c11535z4.f56425d;
        C7541h80 c7541h802 = this.f56803j0;
        Objects.requireNonNull(c7541h802);
        c7541h80.forEach(new S9(c7541h802));
        if (this.f56784a) {
            c11535z4.f56423b.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    N.this.a((com.android.tools.r8.graph.M2) obj, (Set) obj2);
                }
            });
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Set set) {
        if (!f56757p0) {
            m22.getClass();
        }
        C4514j c4514j = (C4514j) this.f56794f.f();
        m22.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4514j.g(m22));
        if (!this.f56784a || set == null) {
            return;
        }
        a(a10, set, (AbstractC4365b1) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e1, code lost:
    
        if (com.android.tools.r8.graph.C4463g4.a(r3.d().Q0()) != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e9, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0190 A[LOOP:1: B:44:0x018e->B:45:0x0190, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, C8659ns0 c8659ns0) {
        AbstractC8374m80 abstractC8374m80;
        C8659ns0 b10;
        boolean z10 = f56757p0;
        if (!z10 && !this.f56774Q.a(h52)) {
            throw new AssertionError();
        }
        C4516j1 d10 = h52.d();
        if (!z10) {
            d10.L0();
            if (d10.f37320m.g()) {
                throw new AssertionError();
            }
        }
        c8659ns0.b("Clinit");
        if (d10.w0()) {
            k(h52.getHolder());
        }
        c8659ns0.d();
        c8659ns0.b("Trace code (non-desugared)");
        if (this.f56786b.b()) {
            C8659ns0 b11 = c8659ns0.b("Analyze needs desugaring");
            try {
                C8659ns0 b12 = c8659ns0.b("Analyze interface method desugaring");
                try {
                    try {
                        if (this.f56802j.Q()) {
                            if (h52.getHolder().isInterface() && h52.d().m1() && !h52.d().i1()) {
                                if (!C4463g4.a(h52.d().Q0())) {
                                    this.f56801i0.add((AbstractC8374m80) h52);
                                }
                                b12.d();
                            } else {
                                com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) this.f56803j0.f43368b.get(new C7333fv(C7374g80.f48192a, h52));
                                if (h53 != null) {
                                    if (!z10 && !C4463g4.a(h52.d().Q0())) {
                                        throw new AssertionError();
                                    }
                                    this.f56801i0.add((AbstractC8374m80) h53);
                                    b12.d();
                                }
                            }
                            b11.d();
                            c8659ns0.d();
                            c8659ns0.b("Super");
                            abstractC8374m80 = (AbstractC8374m80) this.f56818t.get(h52.d());
                            if (abstractC8374m80 != null) {
                                for (com.android.tools.r8.graph.H5 h54 : abstractC8374m80.f45165b.values()) {
                                    a(new O1(h52.d()), h54);
                                    d(new O1(h52.d()), h54);
                                }
                            }
                            c8659ns0.d();
                            c8659ns0.b("Notify");
                            for (BZ bz : this.f56788c.f49406m) {
                                bz.a(h52, d52, this);
                            }
                            c8659ns0.d();
                        }
                        if (this.f56797g0.a(h52)) {
                            this.f56799h0.add((AbstractC8374m80) h52);
                            b10.d();
                            b11.d();
                            c8659ns0.d();
                            c8659ns0.b("Super");
                            abstractC8374m80 = (AbstractC8374m80) this.f56818t.get(h52.d());
                            if (abstractC8374m80 != null) {
                            }
                            c8659ns0.d();
                            c8659ns0.b("Notify");
                            while (r2 < r1) {
                            }
                            c8659ns0.d();
                        }
                        b10.d();
                        b11.d();
                    } catch (Throwable th2) {
                        try {
                            b10.d();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                    b12.d();
                    b10 = c8659ns0.b("Analyze instruction desugaring");
                } catch (Throwable th4) {
                    try {
                        b12.d();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
            } catch (Throwable th6) {
                try {
                    b11.d();
                } catch (Throwable th7) {
                    th6.addSuppressed(th7);
                }
                throw th6;
            }
        }
        a(h52, c8659ns0);
        c8659ns0.d();
        c8659ns0.b("Super");
        abstractC8374m80 = (AbstractC8374m80) this.f56818t.get(h52.d());
        if (abstractC8374m80 != null) {
        }
        c8659ns0.d();
        c8659ns0.b("Notify");
        while (r2 < r1) {
        }
        c8659ns0.d();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C4666r0 c4666r0) {
        a(h52, c4666r0, EnumC4629p0.f37569e);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C8659ns0 c8659ns0) {
        c8659ns0.b("Trace code");
        InterfaceC11246i0 interfaceC11246i0 = this.f56806l;
        C4798y c4798y = this.f56794f;
        C11498x a10 = interfaceC11246i0.a(c4798y, h52, this, c4798y.f38404S);
        c8659ns0.b("Register code references");
        h52.a(a10);
        c8659ns0.d();
        c8659ns0.b("Notify processNewlyLiveCode");
        for (InterfaceC10605zZ interfaceC10605zZ : this.f56788c.f49404k) {
            ((com.android.tools.r8.internal.W2) interfaceC10605zZ).a(h52, a10);
        }
        c8659ns0.d();
        c8659ns0.d();
    }

    public final void a(com.android.tools.r8.graph.H2 h22, Supplier supplier) {
        boolean z10 = f56757p0;
        if (!z10 && !this.f56784a) {
            throw new AssertionError();
        }
        if (!z10 && !this.f56784a) {
            throw new AssertionError();
        }
        if (this.f56786b.b()) {
            C11316m3 c11316m3 = this.f56777T;
            c11316m3.getClass();
            c11316m3.f57532a.add(h22.getType());
        } else {
            if (!z10 && this.f56777T != null) {
                throw new AssertionError();
            }
            C11333n3 c11333n3 = this.f56794f.f38420m;
            if (c11333n3 == null || !c11333n3.f57555a.contains(h22.getType())) {
                return;
            }
        }
        R0 a10 = this.f56795f0.a(h22, (X1) supplier.get());
        if (h22.f36246f.H()) {
            d(h22, a10);
            return;
        }
        if (h22.isInterface()) {
            a(h22, a10);
            return;
        }
        this.f56776S.a(h22, null, 1, a10);
        if (h22.a(com.android.tools.r8.graph.M2.f36589h) != null) {
            com.android.tools.r8.graph.H5 H12 = h22.H1();
            L0 l02 = this.f56776S;
            com.android.tools.r8.graph.A2 reference = H12.getReference();
            this.f56795f0.a(H12);
            l02.a(reference, H12, R0.f56919a);
            d(C11144c0.f57206a, H12, (H1) I1.f56549D.d().h());
        }
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, VJ vj2) {
        ArrayList arrayList;
        com.android.tools.r8.graph.H2 a10;
        if (!vj2.R1()) {
            if (!f56757p0) {
                throw new AssertionError();
            }
            return;
        }
        C10340xw0 c10340xw0 = (C10340xw0) vj2.f54321f.get(1);
        if (c10340xw0.j()) {
            return;
        }
        C9103qZ u02 = c10340xw0.f53886c.u0();
        C8769oZ t02 = c10340xw0.f53886c.t0();
        if (u02 != null) {
            arrayList = u02.f54321f;
        } else {
            if (t02 == null) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(c10340xw0.b0().size());
            Iterator<AbstractC10561zE> it = c10340xw0.b0().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.internal.T3 A10 = it.next().A();
                if (A10 != null) {
                    arrayList2.add(A10.value());
                }
            }
            arrayList = arrayList2;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.M2 a11 = AbstractC4982Ch.a((C10340xw0) obj, this.f56794f);
            if (a11 != null && a11.I0() && (a10 = com.android.tools.r8.graph.H2.a(b(a11, h52))) != null && a10.isInterface()) {
                a(a10, this.f56795f0.a(a10, new T1(h52.d())));
                c6286Yx0.b((C6286Yx0) a10);
            }
        }
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            if (!f56757p0 && !h22.isInterface()) {
                throw new AssertionError();
            }
            this.f56780W.a(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ((C11280k1) ((C11280k1) obj2).h()).i();
                }
            }, h22);
            if (this.f56786b.b()) {
                final T1 t12 = new T1(h52.d());
                h22.j(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        N.this.a(h52, t12, (com.android.tools.r8.graph.H5) obj2);
                    }
                }, EnumC6871d70.f47286b);
            }
            Iterator<com.android.tools.r8.graph.M2> it2 = h22.R0().iterator();
            while (it2.hasNext()) {
                com.android.tools.r8.graph.H2 a12 = com.android.tools.r8.graph.H2.a(a(it2.next(), (com.android.tools.r8.graph.D5) h22));
                if (a12 != null && a12.isInterface()) {
                    c6286Yx0.b((C6286Yx0) a12);
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, X1 x12, com.android.tools.r8.graph.H5 h53) {
        this.f56780W.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H1) ((H1) obj).h()).i();
            }
        }, h53);
        a(h53.getReference(), true, h52, x12);
    }
}
