package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4389c6;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4553l0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4735uc;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9875v8;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.AbstractC10728t;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.ir.optimize.C10698b;
import com.android.tools.r8.ir.optimize.C10705e0;
import com.android.tools.r8.ir.optimize.C10706f;
import com.android.tools.r8.ir.optimize.C10726q;
import com.android.tools.r8.ir.optimize.C10729u;
import com.android.tools.r8.ir.optimize.C10731w;
import com.android.tools.r8.ir.optimize.C10732x;
import com.android.tools.r8.ir.optimize.C10734z;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.shaking.C11214g2;
import com.android.tools.r8.shaking.C11231h2;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11295l;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public class C8048kB {

    public static final boolean f49514H = true;

    public final C9237rJ f49518D;

    public final C4798y f49522a;

    public final S40 f49523b;

    public final C9784ue f49524c;

    public final C10731w f49525d;

    public final InterfaceC6604ba f49526e;

    public C5937Sv f49527f;

    public final C11231h2 f49528g;

    public final com.android.tools.r8.ir.optimize.M f49529h;

    public final C6183Xc f49530i;

    public final C8570nJ f49531j;

    public final C10732x f49532k;

    public final ZV f49533l;

    public final QR f49534m;

    public final com.android.tools.r8.ir.optimize.W f49535n;

    public final com.android.tools.r8.naming.E f49536o;

    public final com.android.tools.r8.ir.optimize.I f49537p;

    public final C8665nu0 f49538q;

    public AbstractC10333xu f49539r;

    public final E10 f49540s;

    public final com.android.tools.r8.ir.optimize.v0 f49541t;

    public final C10726q f49542u;

    public final com.android.tools.r8.ir.optimize.J f49543v;

    public final C10706f f49544w;

    public final com.android.tools.r8.ir.optimize.F f49545x;

    public final VW f49546y;

    public final C8195l40 f49547z = new C8195l40();

    public final C8696o40 f49515A = C8696o40.f51162b;

    public List f49516B = null;

    public final com.android.tools.r8.graph.N5 f49517C = new com.android.tools.r8.graph.N5();

    public final AtomicBoolean f49519E = new AtomicBoolean();

    public final AtomicBoolean f49520F = new AtomicBoolean();

    public String f49521G = null;

    /* JADX WARN: Removed duplicated region for block: B:83:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02cb  */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.android.tools.r8.graph.h] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.tools.r8.graph.h] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C8048kB(C4798y<?> c4798y) {
        com.android.tools.r8.ir.optimize.v0 v0Var;
        boolean z10 = f49514H;
        if (!z10 && c4798y.E() == null) {
            throw new AssertionError();
        }
        if (!z10 && c4798y.E().f50697l == null) {
            throw new AssertionError();
        }
        this.f49522a = c4798y;
        C8570nJ E10 = c4798y.E();
        this.f49531j = E10;
        this.f49532k = new C10732x(c4798y);
        ArrayList arrayList = new ArrayList();
        if (!c4798y.f().h()) {
            arrayList.add(new RQ(c4798y.N()));
        }
        arrayList.add(new C7827it0(c4798y));
        arrayList.add(new C6108Vu(c4798y));
        arrayList.add(new KQ(c4798y));
        arrayList.add(new C6602bZ(c4798y));
        arrayList.add(new C8285lf(c4798y));
        arrayList.add(new K3(c4798y));
        arrayList.add(new C6933dY(c4798y));
        arrayList.add(new C8650np0(c4798y));
        arrayList.add(new C9478sn0(c4798y));
        arrayList.add(new C5756Pr0(c4798y));
        arrayList.add(new K7(c4798y));
        arrayList.add(new C10146wn0(c4798y));
        arrayList.add(new C5143Fc0(c4798y));
        if (!c4798y.E().f50690i1) {
            arrayList.add(new com.android.tools.r8.ir.optimize.t0(c4798y));
        }
        arrayList.add(new G6(c4798y));
        arrayList.add(new com.android.tools.r8.ir.optimize.z0(c4798y));
        if (!c4798y.E().f50690i1) {
            arrayList.add(new C10313xn0(c4798y));
            arrayList.add(new C10638zk0(c4798y));
        }
        this.f49524c = new C9784ue(arrayList);
        this.f49525d = new C10731w(c4798y, this);
        this.f49545x = new com.android.tools.r8.ir.optimize.F(c4798y);
        this.f49544w = new C10706f(c4798y);
        this.f49529h = new com.android.tools.r8.ir.optimize.M(c4798y);
        this.f49518D = E10.f50582A.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8048kB.this.a((String) obj);
            }
        });
        if (E10.x().f45396a.f53764a) {
            if (!z10 && !E10.f50616L0.b()) {
                throw new AssertionError();
            }
            this.f49526e = new Z9(c4798y);
            this.f49543v = null;
            this.f49530i = null;
            this.f49527f = null;
            this.f49528g = null;
            this.f49535n = null;
            this.f49523b = new R40();
            this.f49533l = null;
            this.f49534m = null;
            this.f49536o = null;
            this.f49537p = null;
            this.f49538q = null;
            this.f49546y = null;
            this.f49539r = C5643Nt.f42726a;
            this.f49540s = new D10();
            this.f49542u = null;
            this.f49541t = null;
            return;
        }
        this.f49526e = c4798y.m() ? InterfaceC6604ba.f46789a : new Z9(c4798y);
        if (c4798y.E().a().f40654a) {
            C8570nJ E11 = c4798y.E();
            if (E11.P() && E11.a(C2.T)) {
                v0Var = new com.android.tools.r8.ir.optimize.v0(c4798y);
                this.f49541t = v0Var;
                if (c4798y.m() || !c4798y.f().i()) {
                    c4798y = c4798y.m() ? c4798y : c4798y.N();
                    this.f49542u = null;
                    this.f49530i = null;
                    this.f49543v = null;
                    this.f49527f = null;
                    this.f49528g = null;
                    this.f49535n = null;
                    this.f49523b = new R40();
                    this.f49533l = !E10.P() ? new C5390Ji(c4798y) : null;
                    this.f49534m = null;
                    this.f49536o = null;
                    this.f49537p = null;
                    this.f49538q = null;
                    this.f49546y = null;
                    this.f49539r = C5643Nt.f42726a;
                    this.f49540s = new D10();
                }
                C4798y<C11245i> M10 = c4798y.M();
                this.f49542u = new C10726q(M10);
                QR qr = new QR(M10);
                this.f49534m = qr;
                C8570nJ.h L10 = E10.L();
                com.android.tools.r8.ir.optimize.W w10 = (!L10.f50769c || L10.f50780n.f50690i1) ? null : new com.android.tools.r8.ir.optimize.W(M10, this, qr);
                this.f49535n = w10;
                this.f49530i = (!E10.f50609J || w10 == null) ? null : new C6183Xc(M10, w10);
                this.f49543v = new com.android.tools.r8.ir.optimize.J(M10);
                this.f49527f = new C5937Sv(M10);
                this.f49528g = E10.f50636S ? new C11231h2(M10) : null;
                this.f49539r = M10.E().f50603H ? new C10667zu(M10) : C5643Nt.f42726a;
                this.f49540s = M10.H().f50864c ? new I10(M10) : new D10();
                this.f49523b = M10.E().f50677e0.f50789a ? new C7198f50(M10) : new R40();
                this.f49533l = new C7107eb0(M10);
                this.f49546y = new VW(M10, this);
                if (E10.R()) {
                    this.f49536o = new com.android.tools.r8.naming.E(M10);
                } else {
                    this.f49536o = null;
                }
                this.f49537p = E10.f50600G ? new com.android.tools.r8.ir.optimize.I(M10) : null;
                this.f49538q = new C8665nu0(M10, new C6113Vw0(c4798y));
                return;
            }
        }
        v0Var = null;
        this.f49541t = v0Var;
        if (c4798y.m()) {
        }
        if (c4798y.m()) {
        }
        this.f49542u = null;
        this.f49530i = null;
        this.f49543v = null;
        this.f49527f = null;
        this.f49528g = null;
        this.f49535n = null;
        this.f49523b = new R40();
        this.f49533l = !E10.P() ? new C5390Ji(c4798y) : null;
        this.f49534m = null;
        this.f49536o = null;
        this.f49537p = null;
        this.f49538q = null;
        this.f49546y = null;
        this.f49539r = C5643Nt.f42726a;
        this.f49540s = new D10();
    }

    public final void a(AbstractC8374m80 abstractC8374m80, C7097eX c7097eX, final EW.a aVar, ExecutorService executorService) {
        if (abstractC8374m80.f45165b.isEmpty()) {
            return;
        }
        final C6862d40 c6862d40 = new C6862d40(c7097eX, this.f49522a.k(), abstractC8374m80);
        c6862d40.a(new InterfaceC6695c40() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                C8048kB.this.a(c6862d40, aVar, h52, c5035Df);
            }
        }, this.f49522a.E().G(), executorService);
    }

    public final C8659ns0 b(final com.android.tools.r8.graph.H5 h52, final AbstractC8028k40 abstractC8028k40, final AbstractC6931dX abstractC6931dX, final C5035Df c5035Df, final EW.a aVar, final C8659ns0 c8659ns0) {
        return (C8659ns0) AbstractC8333lv.a(h52.f36317b.f36244d, new MethodPosition(h52.getReference().v0()), new Supplier() {
            @Override
            public final Object get() {
                return C8048kB.this.a(h52, abstractC8028k40, abstractC6931dX, c5035Df, aVar, c8659ns0);
            }
        });
    }

    public final C8659ns0 a(com.android.tools.r8.graph.H5 h52, AbstractC8028k40 abstractC8028k40, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, EW.a aVar, C8659ns0 c8659ns0) {
        boolean z10;
        this.f49531j.getClass();
        Runnable runnable = this.f49531j.f50599F1.f50860a1;
        if (runnable != null) {
            runnable.run();
        }
        AbstractC4497i0 Q02 = h52.d().Q0();
        Q02.getClass();
        if (Q02 instanceof C4389c6) {
            z10 = false;
        } else if (this.f49522a.m() || this.f49531j.f50599F1.f50817F0) {
            z10 = true;
        } else {
            boolean z11 = f49514H;
            if (!z11 && !h52.d().Q0().t0()) {
                throw new AssertionError();
            }
            C8570nJ c8570nJ = this.f49531j;
            if (c8570nJ.f50596E1 != null) {
                if (!z11 && !aVar.a() && !aVar.b()) {
                    throw new AssertionError();
                }
                z10 = aVar.b();
            } else {
                z10 = !(c8570nJ.f50697l instanceof ClassFileConsumer);
            }
        }
        if (z10 && !this.f49531j.f50687h1) {
            C7215fB a10 = h52.a(this.f49522a, aVar);
            if (a10 == null) {
                abstractC8028k40.a(h52.d(), com.android.tools.r8.ir.optimize.O.f54786c);
                return C8659ns0.c();
            }
            return a(a10, abstractC8028k40, aVar, abstractC6931dX, c5035Df, c8659ns0);
        }
        abstractC8028k40.a(h52.d(), com.android.tools.r8.ir.optimize.O.f54786c);
        return C8659ns0.c();
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        h52.d(this.f49522a);
    }

    public static void b(com.android.tools.r8.graph.H5 h52, C8191l3 c8191l3) {
        if (!C8191l3.f49869f && c8191l3.f49873d == null) {
            throw new AssertionError();
        }
        C5122Et c5122Et = c8191l3.f49873d;
        c5122Et.getClass();
        int i10 = 0;
        while (true) {
            C4516j1 d10 = h52.d();
            if (i10 >= d10.getReference().a(d10.w0())) {
                return;
            }
            C6431aX c6431aX = new C6431aX(h52, i10);
            c5122Et.f40039b.remove(c6431aX);
            c5122Et.f40040c.remove(c6431aX);
            i10++;
        }
    }

    public final com.android.tools.r8.graph.L2 a(String str) {
        return this.f49531j.f50660a.b("L" + C4932Bl.n(str));
    }

    public final void a(C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, C8659ns0 c8659ns0) {
        if (!c7215fB.f47895b.c()) {
            new C6340Zw(this.f49522a).a(c7215fB, c8659ns0);
            new C10322xq0(this.f49522a, this.f49536o).a(c7215fB, c8659ns0);
        }
        c7215fB.x();
        this.f49545x.a(c7215fB, c8659ns0);
        a(c7215fB, abstractC8028k40, C9875v8.b(), c8659ns0, "");
    }

    public final void b(String str) {
        if (this.f49531j.f50583A0.isEmpty()) {
            return;
        }
        System.out.println("Entering phase: " + str);
    }

    public final void a(ExecutorService executorService) {
        C8570nJ c8570nJ = this.f49531j;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.L)) {
            if (!f49514H) {
                this.f49547z.b();
            }
            com.android.tools.r8.J.a(this.f49522a, this.f49522a.f().d(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8048kB.this.a((com.android.tools.r8.graph.H2) obj);
                }
            }, executorService);
        }
    }

    public final void c(final com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f49514H;
        if (!z10 && !this.f49522a.m()) {
            throw new AssertionError();
        }
        if (!z10 && h52.getHolder().b(h52.getReference()) == null) {
            throw new AssertionError();
        }
        C4798y c4798y = this.f49522a;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C8048kB.b(com.android.tools.r8.graph.H5.this, (C8191l3) obj);
            }
        };
        C8191l3 c8191l3 = c4798y.f38386A;
        if (c8191l3 != null) {
            interfaceC6160Wr0.accept(c8191l3);
        }
        this.f49539r.a(h52);
        C5937Sv c5937Sv = this.f49527f;
        if (c5937Sv != null) {
            C6224Xv c6224Xv = c5937Sv.f44334b;
            c6224Xv.getClass();
            if (h52.d().j1()) {
                c6224Xv.f45864h.add(h52.getHolder());
            }
        }
        this.f49540s.getClass();
        this.f49523b.a(h52);
        com.android.tools.r8.ir.optimize.W w10 = this.f49535n;
        if (w10 != null) {
            w10.f54817d.a(w10.f54814a.v(), h52.getReference());
        }
    }

    public static void a(com.android.tools.r8.graph.H5 h52, C8191l3 c8191l3) {
        C8859p3 c8859p3 = c8191l3.f49872c;
        if (c8859p3 != null) {
            C10601zX c10601zX = c8859p3.f51426j;
            InterfaceC10100wX interfaceC10100wX = (InterfaceC10100wX) c10601zX.f54040a.remove(c10601zX.a(h52));
            if (interfaceC10100wX == null) {
                interfaceC10100wX = null;
            }
            if (!C8191l3.f49869f && interfaceC10100wX != null && !h52.d().f37314g.D() && !AbstractC4458g.d(h52.getAccessFlags().f37196b, 2)) {
                throw new AssertionError();
            }
        }
        if (!C8191l3.f49869f && c8191l3.f49873d == null) {
            throw new AssertionError();
        }
        C5122Et c5122Et = c8191l3.f49873d;
        c5122Et.getClass();
        int i10 = 0;
        while (true) {
            C4516j1 d10 = h52.d();
            if (i10 >= d10.getReference().a(d10.w0())) {
                return;
            }
            C6431aX c6431aX = new C6431aX(h52, i10);
            c5122Et.f40039b.remove(c6431aX);
            c5122Et.f40040c.remove(c6431aX);
            i10++;
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        if (h22.l1()) {
            return;
        }
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8048kB.this.b((com.android.tools.r8.graph.H5) obj);
            }
        }, new C7233fH0());
    }

    public void a(C7215fB c7215fB) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (!f49514H && !c7215fB.b(this.f49522a)) {
            throw new AssertionError();
        }
        C8659ns0 c10 = C8659ns0.c();
        this.f49545x.a(c7215fB, c10);
        j10.a(new C9550tB(this.f49522a, this.f49545x).a(c7215fB, C9875v8.b(), c10), this.f49522a);
    }

    public final void a(ArrayList arrayList, C7097eX c7097eX, EW.a aVar, ExecutorService executorService) {
        a(AbstractC8374m80.a(new C9291rg1(arrayList)), c7097eX, aVar, executorService);
    }

    public final void a(AbstractC7552hC abstractC7552hC, C7097eX c7097eX, EW.a aVar, ExecutorService executorService) {
        AbstractC8374m80 c10 = AbstractC8374m80.c();
        Iterator<E> it = abstractC7552hC.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Objects.requireNonNull(c10);
            h22.l(new C4735uc(c10));
        }
        a(c10, c7097eX, aVar, executorService);
    }

    public final void a(C6862d40 c6862d40, EW.a aVar, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        a(h52, (AbstractC8028k40) this.f49547z, (AbstractC7431gX) c6862d40, c5035Df, aVar, C8659ns0.c());
    }

    public final C8659ns0 a(com.android.tools.r8.graph.H5 h52, AbstractC8028k40 abstractC8028k40, AbstractC7431gX abstractC7431gX, C5035Df c5035Df, EW.a aVar, C8659ns0 c8659ns0) {
        C4516j1 d10 = h52.d();
        AbstractC4497i0 Q02 = d10.Q0();
        boolean a10 = this.f49531j.a(d10);
        if (Q02 != null && a10) {
            return b(h52, abstractC8028k40, abstractC7431gX, c5035Df, aVar, c8659ns0);
        }
        d10.a(com.android.tools.r8.ir.optimize.O.f54786c);
        return C8659ns0.c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x02df, code lost:
    
        if (com.android.tools.r8.internal.InterfaceC7166ev.a(r11, r14) == false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x09c9, code lost:
    
        if (r2.a(8) == false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x09d8, code lost:
    
        if (r2.a(32) != false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x09e5, code lost:
    
        if (r2.G() != false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x019a, code lost:
    
        if ((r2 instanceof com.android.tools.r8.graph.H5) != false) goto L95;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0327 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8659ns0 a(final C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, EW.a aVar, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, C8659ns0 c8659ns0) {
        com.android.tools.r8.graph.H5 h52;
        com.android.tools.r8.graph.H5 h53;
        String str;
        int i10;
        int i11;
        boolean containsKey;
        C6845cz c6845cz;
        C5711Oy c5711Oy;
        VJ e02;
        com.android.tools.r8.graph.H0 e10;
        AbstractC10561zE abstractC10561zE;
        Iterator it;
        C10340xw0 c10340xw0;
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        final C4516j1 d10 = j10.d();
        com.android.tools.r8.graph.H2 holder = j10.getHolder();
        boolean z10 = f49514H;
        if (!z10 && holder == null) {
            throw new AssertionError();
        }
        String a10 = a(c7215fB, "Initial IR (SSA)", (String) null, this.f49531j);
        BiConsumer<C7215fB, C4798y<?>> biConsumer = this.f49531j.f50599F1.f50911v0;
        if (biConsumer != null) {
            biConsumer.accept(c7215fB, this.f49522a);
        }
        if (!this.f49531j.f50599F1.f50900q) {
            if (this.f49534m != null) {
                c8659ns0.b("Lens rewrite");
                this.f49534m.a(j10, c7215fB, abstractC6931dX);
                c8659ns0.d();
                a10 = a(c7215fB, "IR after lens code rewriting (SSA)", a10, this.f49531j);
            }
            String str2 = a10;
            int i12 = 1;
            boolean z11 = this.f49531j.f50690i1 || j10.getHolder().I1();
            if (!z10 && d10.o1() && z11) {
                throw new AssertionError((Object) ("Method already processed: " + j10.r() + System.lineSeparator() + AbstractC8333lv.a()));
            }
            if (!z10 && d10.o1() && this.f49522a.m() && !this.f49522a.a(j10).a(j10)) {
                throw new AssertionError((Object) ("Unexpected reprocessing of method: " + j10.r()));
            }
            C8665nu0 c8665nu0 = this.f49538q;
            if (c8665nu0 != null && !c8665nu0.a(c7215fB)) {
                if (!z10 && !this.f49522a.m()) {
                    throw new AssertionError();
                }
                if (!z10 && !this.f49531j.f50599F1.f50836P) {
                    throw new AssertionError();
                }
                this.f49531j.f50691j.warning(new StringDiagnostic("The method `" + d10.j0() + "` does not type check and will be assumed to be unreachable."));
                j10.d(this.f49522a);
                return c8659ns0;
            }
            if (!z10 && !c7215fB.b(this.f49522a)) {
                throw new AssertionError();
            }
            C4798y c4798y = this.f49522a;
            c4798y.getClass();
            if (!c4798y.a(j10.d())) {
                AbstractC4497i0 Q02 = j10.d().Q0();
                if (!z10) {
                    Q02.getClass();
                    if (Q02 instanceof C4389c6) {
                        throw new AssertionError();
                    }
                }
                Q02.getClass();
                if (Q02 instanceof C4553l0) {
                    if (this.f49531j.e()) {
                        com.android.tools.r8.graph.H0 b10 = this.f49522a.b(C4553l0.a((com.android.tools.r8.graph.H0) j10, this.f49522a.b()));
                        if (b10 != null) {
                        }
                    }
                }
                if (aVar.e()) {
                    this.f49545x.a(c7215fB, c8659ns0);
                    c8659ns0.b("Finalize IR");
                    a(c7215fB, abstractC8028k40, C9875v8.b(), c8659ns0, str2);
                    c8659ns0.d();
                    return c8659ns0;
                }
                if (!this.f49531j.F().c()) {
                    new C9654tq0(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                }
                C8570nJ c8570nJ = this.f49531j;
                c8570nJ.getClass();
                if (c8570nJ.a(C2.Q)) {
                    c8659ns0.b("Check for new-init issue");
                    AbstractC8495mt0.a(this.f49522a, c7215fB);
                    c8659ns0.d();
                }
                if (z11) {
                    C10732x c10732x = this.f49532k;
                    c10732x.getClass();
                    Iterator<W5> it2 = c7215fB.f47897d.iterator();
                    while (it2.hasNext()) {
                        Y5 I10 = it2.next().I();
                        while (I10.hasNext()) {
                            AbstractC10561zE n10 = I10.n();
                            AbstractC10561zE next = I10.next();
                            next.getClass();
                            if (next instanceof C7130ej) {
                                if (!C10732x.f54957b && next.f54321f.size() != i12) {
                                    throw new AssertionError();
                                }
                                C10340xw0 c10340xw02 = (C10340xw0) next.f54321f.get(0);
                                C4515j0 s10 = next.d().s();
                                Iterator<W5> it3 = it2;
                                com.android.tools.r8.graph.L2 l22 = s10.f37307b;
                                if (c10340xw02.z()) {
                                    it2 = it3;
                                } else {
                                    com.android.tools.r8.graph.H5 h54 = j10;
                                    if (c10340xw02.U() != 1 || (abstractC10561zE = c10340xw02.f53886c) == null) {
                                        i12 = 1;
                                        it2 = it3;
                                        j10 = h54;
                                    } else {
                                        if (abstractC10561zE.b() == next.b()) {
                                            if (!abstractC10561zE.getPosition().o() && !next.getPosition().o()) {
                                                B60 position = abstractC10561zE.getPosition();
                                                B60 position2 = next.getPosition();
                                                position.getClass();
                                            }
                                            Iterator it4 = abstractC10561zE.b().a(abstractC10561zE).iterator();
                                            B60 b60 = null;
                                            while (it4.hasNext()) {
                                                AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) it4.next();
                                                if (b60 == null) {
                                                    if (!abstractC10561zE2.getPosition().o()) {
                                                        b60 = abstractC10561zE2.getPosition();
                                                    }
                                                } else if (!abstractC10561zE2.getPosition().o()) {
                                                    it = it4;
                                                    if (!InterfaceC7166ev.a(b60, abstractC10561zE2.getPosition())) {
                                                    }
                                                    if (abstractC10561zE2 != next) {
                                                        c10340xw02.a(s10);
                                                        next.d().f(c10340xw02);
                                                        Set set = next.f54323h;
                                                        if (set != null) {
                                                            Iterator it5 = set.iterator();
                                                            while (it5.hasNext()) {
                                                                c10340xw0 = (C10340xw0) it5.next();
                                                                if (c10340xw0.z() && c10340xw0.s() == s10) {
                                                                    it5.remove();
                                                                    c10340xw0.c(next);
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                        c10340xw0 = null;
                                                        if (c10340xw0 != null) {
                                                            c10340xw0.a(c10340xw02.f53886c);
                                                        }
                                                        if (n10 != null && (n10.d() == null || !n10.d().z() || !next.V0().contains(n10.d()))) {
                                                            next.c(n10);
                                                        }
                                                        I10.i();
                                                    } else if (abstractC10561zE2.d() == null || !abstractC10561zE2.d().z() || abstractC10561zE2.d().s().f37307b != l22) {
                                                        it4 = it;
                                                    }
                                                }
                                                it = it4;
                                                if (abstractC10561zE2 != next) {
                                                }
                                            }
                                            throw new C5417Jv0();
                                        }
                                        it2 = it3;
                                        j10 = h54;
                                    }
                                }
                                i12 = 1;
                            }
                        }
                    }
                    h52 = j10;
                    if (!C10732x.f54957b && !c7215fB.b(c10732x.f54958a)) {
                        throw new AssertionError();
                    }
                } else {
                    h52 = j10;
                }
                C10706f c10706f = this.f49544w;
                com.android.tools.r8.ir.optimize.F f10 = this.f49545x;
                if (c10706f.f54870f) {
                    c8659ns0.b("Rewrite assertions");
                    boolean a11 = c10706f.a(d10, c7215fB);
                    c7215fB.x();
                    if (a11) {
                        f10.a(c7215fB, c8659ns0);
                    }
                    if (!C10706f.f54864g && !c7215fB.b(c10706f.f54865a)) {
                        throw new AssertionError();
                    }
                    c8659ns0.d();
                }
                String a12 = a(c7215fB, "IR after assertions rewriter (SSA)", str2, this.f49531j);
                C4798y<?> c4798y2 = this.f49522a;
                if (c4798y2.m()) {
                    C4798y<?> L10 = c4798y2.L();
                    Z5 u10 = c7215fB.u();
                    while (u10.f46159b.hasNext()) {
                        W5 w52 = (W5) u10.f46159b.next();
                        u10.f46160c = w52;
                        Y5 I11 = w52.I();
                        while (I11.hasNext()) {
                            AbstractC10561zE next2 = I11.next();
                            if (next2.P1() && (e10 = (e02 = next2.e0()).e(L10, c7215fB.j())) != null && e10.A().y()) {
                                C10340xw0 z22 = e02.z2();
                                if (e02.f1()) {
                                    e02.d().f(z22);
                                }
                                C11295l c11295l = L10.f38412e;
                                c11295l.getClass();
                                if (!c11295l.a(e10.getReference()).f40089c && !z22.u().B().d()) {
                                    I11.a(L10, z22);
                                } else {
                                    I11.i();
                                }
                            }
                        }
                    }
                    if (!AbstractC10728t.f54940a && !c7215fB.b(c4798y2)) {
                        throw new AssertionError();
                    }
                }
                String a13 = a(c7215fB, "IR after check not null converter (SSA)", a12, this.f49531j);
                c8659ns0.b("Run proto shrinking tasks");
                C4798y c4798y3 = this.f49522a;
                InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                    @Override
                    public final void accept(Object obj) {
                        C8048kB.a(C4516j1.this, c7215fB, (C5711Oy) obj);
                    }
                };
                C5658Oa0 c5658Oa0 = c4798y3.f38388C;
                if (c5658Oa0 != null && (c5711Oy = c5658Oa0.f42924c) != null) {
                    interfaceC6160Wr0.accept(c5711Oy);
                }
                String a14 = a(c7215fB, "IR after generated extension registry shrinking (SSA)", a13, this.f49531j);
                C4798y c4798y4 = this.f49522a;
                InterfaceC6160Wr0 interfaceC6160Wr02 = new InterfaceC6160Wr0() {
                    @Override
                    public final void accept(Object obj) {
                        C8048kB.a(C7215fB.this, (C6845cz) obj);
                    }
                };
                C5658Oa0 c5658Oa02 = c4798y4.f38388C;
                if (c5658Oa02 != null && (c6845cz = c5658Oa02.f42925d) != null) {
                    interfaceC6160Wr02.accept(c6845cz);
                }
                c8659ns0.d();
                String a15 = a(c7215fB, "IR after generated message lite shrinking (SSA)", a14, this.f49531j);
                if (this.f49533l != null) {
                    c8659ns0.b("Propagate member values");
                    this.f49533l.a(c7215fB);
                    c8659ns0.d();
                    a15 = a(c7215fB, "IR after member-value propagation (SSA)", a15, this.f49531j);
                }
                c8659ns0.b("Remove switch maps");
                new C6108Vu(this.f49522a).c(c7215fB);
                c8659ns0.d();
                String a16 = a(c7215fB, "IR after enum-switch optimization (SSA)", a15, this.f49531j);
                new C8057kE(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                String a17 = a(c7215fB, "IR after instance initializer outlining (SSA)", a16, this.f49531j);
                F8 j11 = h52.A().j();
                j11.getClass();
                if ((j11 instanceof C7954jg) && this.f49522a.f().i()) {
                    AbstractC9860v3.a(this.f49522a.M(), c7215fB, j11.a());
                }
                C10726q c10726q = this.f49542u;
                if (c10726q != null) {
                    c10726q.a(c7215fB, c8659ns0);
                    a17 = a(c7215fB, "IR after inserting assume instructions (SSA)", a17, this.f49531j);
                }
                String str3 = a17;
                if (this.f49535n != null && !z11) {
                    c8659ns0.b("Inlining");
                    com.android.tools.r8.ir.optimize.W w10 = this.f49535n;
                    w10.a(c7215fB.j(), c7215fB, abstractC8028k40, abstractC6931dX, c8659ns0, w10.a(abstractC6931dX));
                    c8659ns0.d();
                    if (!f49514H) {
                        c7215fB.e(this.f49522a);
                    }
                    str3 = a(c7215fB, "IR after inlining (SSA)", str3, this.f49531j);
                }
                if (this.f49522a.f().i()) {
                    c8659ns0.b("Rewrite to const class");
                    com.android.tools.r8.ir.optimize.u0.a(this.f49522a.M(), c7215fB);
                    c8659ns0.d();
                }
                if (!z11) {
                    new C5547Mc(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                    c8659ns0.b("Optimize library methods");
                    this.f49522a.f38387B.a(c7215fB, abstractC6931dX, c5035Df);
                    c8659ns0.d();
                    c7215fB.x();
                    if (!f49514H && !c7215fB.b(this.f49522a)) {
                        throw new AssertionError();
                    }
                    str3 = a(c7215fB, "IR after class library method optimizer (SSA)", str3, this.f49531j);
                }
                boolean z12 = f49514H;
                if (!z12) {
                    c7215fB.e(this.f49522a);
                }
                if (this.f49537p != null) {
                    if (!z12) {
                        c7215fB.e(this.f49522a);
                    }
                    c8659ns0.b("Devirtualize invoke interface");
                    this.f49537p.a(c7215fB);
                    c8659ns0.d();
                    str3 = a(c7215fB, "IR after devirtualizer (SSA)", str3, this.f49531j);
                }
                if (!z12) {
                    c7215fB.e(this.f49522a);
                }
                if (this.f49522a.E().f50616L0.b() && (abstractC6931dX.f() || (abstractC6931dX instanceof C5448Ki))) {
                    c8659ns0.b("Rewrite AssertionError");
                    new C10698b(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df);
                    c8659ns0.d();
                }
                this.f49524c.a(c7215fB, abstractC6931dX, c5035Df, c8659ns0, str3, this.f49531j);
                c8659ns0.b("Optimize class initializers");
                C10729u a18 = this.f49525d.a(c7215fB, abstractC8028k40);
                c8659ns0.d();
                String a19 = a(c7215fB, "IR after class initializer optimisation (SSA)", str3, this.f49531j);
                this.f49545x.a(c7215fB, c8659ns0);
                if (!z12 && !c7215fB.b(this.f49522a)) {
                    throw new AssertionError();
                }
                String a20 = a(c7215fB, "IR after dead code removal (SSA)", a19, this.f49531j);
                if (this.f49531j.f50599F1.f50893m0) {
                    Iterator<W5> it6 = c7215fB.f47897d.iterator();
                    while (it6.hasNext()) {
                        W5 next3 = it6.next();
                        if (next3.i().H1()) {
                            EB V10 = next3.i().V();
                            W5 v22 = V10.v2();
                            W5 u22 = V10.u2();
                            boolean z13 = EB.f39788m;
                            if (!z13 && V10.b().i() != V10) {
                                throw new AssertionError();
                            }
                            List<W5> n11 = V10.b().n();
                            if (!z13 && n11.size() < 2) {
                                throw new AssertionError();
                            }
                            n11.set(n11.size() - 2, u22);
                            V10.a(v22);
                            V10.f39789l = V10.f39789l.b();
                        }
                    }
                    a20 = a(c7215fB, "IR after inverting conditionals for testing (SSA)", a20, this.f49531j);
                }
                String str4 = a20;
                boolean z14 = f49514H;
                if (!z14) {
                    c7215fB.e(this.f49522a);
                }
                if (this.f49530i != null) {
                    c8659ns0.b("Inline classes");
                    this.f49530i.a(h52, c7215fB, abstractC8028k40, abstractC6931dX, c5035Df);
                    c8659ns0.d();
                    c7215fB.x();
                    if (!z14 && !c7215fB.b(this.f49522a)) {
                        throw new AssertionError();
                    }
                    if (!z14) {
                        c7215fB.e(this.f49522a);
                    }
                    str4 = a(c7215fB, "IR after class inlining (SSA)", str4, this.f49531j);
                }
                if (!z14) {
                    c7215fB.e(this.f49522a);
                }
                this.f49523b.a(c7215fB, c8659ns0);
                if (!z14) {
                    c7215fB.e(this.f49522a);
                }
                String a21 = a(c7215fB, "IR after outline handler (SSA)", str4, this.f49531j);
                if (!c7215fB.f47895b.c()) {
                    new C6340Zw(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                    a21 = a(c7215fB, "IR after filled-new-array rewriter (SSA)", a21, this.f49531j);
                }
                new C10322xq0(this.f49522a, this.f49536o).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                if (this.f49531j.P()) {
                    c8659ns0.b("Canonicalize constants");
                    h53 = h52;
                    C10734z c10734z = new C10734z(this.f49522a, h53, c7215fB);
                    c10734z.a();
                    c8659ns0.d();
                    String a22 = a(c7215fB, "IR after constant canonicalization (SSA)", a21, this.f49531j);
                    new C9147qo(this.f49522a, c10734z).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                    a21 = a(c7215fB, "IR after DEX constant optimization (SSA)", a22, this.f49531j);
                } else {
                    h53 = h52;
                }
                com.android.tools.r8.ir.optimize.v0 v0Var = this.f49541t;
                if (v0Var != null) {
                    c8659ns0.b("Compute and insert checkcast on return values");
                    v0Var.a(h53, c7215fB, v0Var.a(v0Var.f54948a.g(), h53, c7215fB));
                    c8659ns0.d();
                }
                c8659ns0.b("Canonicalize idempotent calls");
                this.f49529h.a(c7215fB);
                c8659ns0.d();
                String a23 = a(c7215fB, "IR after idempotent function call canonicalization (SSA)", a21, this.f49531j);
                if (!z14) {
                    c7215fB.e(this.f49522a);
                }
                this.f49545x.a(c7215fB, c8659ns0);
                new C10034w50(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                C9875v8.a a24 = C9875v8.a();
                if (this.f49522a.m()) {
                    c8659ns0.b("Collect optimization info");
                    str = a23;
                    i10 = 0;
                    i11 = 1;
                    a(h53, c7215fB, a18, abstractC8028k40, abstractC6931dX, a24, c8659ns0);
                    c8659ns0.d();
                } else {
                    str = a23;
                    i10 = 0;
                    i11 = 1;
                }
                c8659ns0.b("Redundant catch/rethrow elimination");
                new C5756Pr0(this.f49522a);
                Z5 u11 = c7215fB.u();
                int i13 = i10;
                while (u11.hasNext()) {
                    W5 next4 = u11.next();
                    if (next4.z()) {
                        N8 j12 = next4.j();
                        j12.getClass();
                        int i14 = i10;
                        while (true) {
                            if (i14 < j12.size()) {
                                Object obj = j12.f42511c.get(i14);
                                i14++;
                                if (!C5756Pr0.a((W5) obj)) {
                                    break;
                                }
                            } else {
                                N8 j13 = next4.j();
                                j13.getClass();
                                int i15 = i10;
                                while (i15 < j13.size()) {
                                    Object obj2 = j13.f42511c.get(i15);
                                    i15++;
                                    ((W5) obj2).R();
                                }
                                i13 = i11;
                            }
                        }
                    }
                }
                if (i13 != 0) {
                    c7215fB.a(new C10696a(), C6628bi.b());
                }
                c8659ns0.d();
                String a25 = a(c7215fB, "IR after redundant catch/rethrow elimination (SSA)", str, this.f49531j);
                if (this.f49542u != null) {
                    c8659ns0.b("Remove assume instructions");
                    C10732x.a((C4798y<?>) this.f49522a, c7215fB);
                    c7215fB.x();
                    c8659ns0.d();
                    if (!f49514H && !c7215fB.b(this.f49522a)) {
                        throw new AssertionError();
                    }
                    String a26 = a(c7215fB, "IR after removing assume instructions (SSA)", a25, this.f49531j);
                    new C6933dY(this.f49522a).a(c7215fB, abstractC6931dX, c5035Df, c8659ns0);
                    a25 = a(c7215fB, "IR after move result rewriter (SSA)", a26, this.f49531j);
                }
                boolean z15 = f49514H;
                if (!z15) {
                    c7215fB.E();
                }
                if (!z15) {
                    c7215fB.e(this.f49522a);
                }
                String a27 = a(c7215fB, "Optimized IR (SSA)", a25, this.f49531j);
                c8659ns0.b("Finalize IR");
                a(c7215fB, abstractC8028k40, a24.a(), c8659ns0, a27);
                c8659ns0.d();
                abstractC6931dX.getClass();
                if (abstractC6931dX instanceof P60) {
                    P60 a28 = abstractC6931dX.a();
                    AbstractC4497i0 Q03 = h53.d().Q0();
                    int i16 = this.f49522a.E().L().f50770d;
                    if (i16 < 0) {
                        i16 = 5;
                    }
                    if (Q03.k(i16 + 1) < 0) {
                        C8195l40 c8195l40 = this.f49547z;
                        synchronized (c8195l40) {
                            containsKey = c8195l40.f49880d.containsKey(h53.d());
                        }
                        if (containsKey) {
                            TW A10 = h53.A();
                            C8195l40 c8195l402 = this.f49547z;
                            c8195l402.getClass();
                            WY e11 = c8195l402.e(h53.d());
                            if (A10.i().equals(e11.f45451f)) {
                                if (A10.n().equals(e11.f45455j)) {
                                    if (A10.C()) {
                                    }
                                    if (!A10.D()) {
                                    }
                                    if (!A10.G()) {
                                    }
                                }
                            }
                        }
                    }
                    a28.e(h53);
                    return c8659ns0;
                }
                return c8659ns0;
            }
            if (!z10 && !this.f49522a.m()) {
                throw new AssertionError();
            }
            c8659ns0.b("Collect optimization info");
            a(j10, c7215fB, C10729u.f54942b, abstractC8028k40, abstractC6931dX, C9875v8.a(), c8659ns0);
            c8659ns0.d();
            com.android.tools.r8.ir.optimize.W w11 = this.f49535n;
            abstractC8028k40.a(c7215fB.j().d(), w11 != null ? w11.a(c7215fB) : com.android.tools.r8.ir.optimize.O.f54786c);
            return c8659ns0;
        }
        throw new RuntimeException("Forcing compilation failure for testing");
    }

    public static void a(C4516j1 c4516j1, C7215fB c7215fB, C5711Oy c5711Oy) {
        c5711Oy.getClass();
        if (c4516j1.f1() && c5711Oy.f43087d.containsKey(c4516j1.B0()) && c7215fB.f47902i.a(60)) {
            c5711Oy.a(c7215fB);
        }
    }

    public static void a(C7215fB c7215fB, C6845cz c6845cz) {
        C5650Nw0 c5650Nw0;
        c6845cz.getClass();
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (c6845cz.f47239d.a(j10.getReference())) {
            VJ a10 = C6845cz.a(c7215fB, c6845cz.f47239d);
            if (a10 != null) {
                C10340xw0 a11 = C5832Ra0.a(a10, c6845cz.f47239d);
                C5650Nw0 a12 = AbstractC5708Ow0.a(C5832Ra0.b(a10, c6845cz.f47239d), a10);
                C9773ua0 a13 = c6845cz.f47237b.a(j10, a11, a12);
                if (a13 != null) {
                    AbstractC10561zE abstractC10561zE = a11.f53886c;
                    C10340xw0 a14 = c7215fB.a(c6845cz.f47241f, (C4515j0) null);
                    C5314Ib0 c5314Ib0 = c6845cz.f47238c;
                    c5314Ib0.getClass();
                    CH ch2 = new CH(16);
                    ch2.add(a13.f52880b);
                    LinkedList linkedList = a13.f52881c;
                    ch2.add(linkedList != null ? linkedList.size() : 0);
                    if (a13.a()) {
                        Iterator it = a13.f52881c.iterator();
                        int i10 = Integer.MAX_VALUE;
                        int i11 = Integer.MIN_VALUE;
                        int i12 = 0;
                        int i13 = 0;
                        int i14 = 0;
                        while (it.hasNext()) {
                            Iterator it2 = it;
                            C8605na0 c8605na0 = (C8605na0) it.next();
                            C5650Nw0 c5650Nw02 = a12;
                            int i15 = c8605na0.f50985a;
                            if (i15 < i10) {
                                i10 = i15;
                            }
                            if (i15 > i11) {
                                i11 = i15;
                            }
                            C8939pa0 c8939pa0 = c8605na0.f50986b;
                            int i16 = i10;
                            if (c8939pa0.f51557a == 50) {
                                i14++;
                            } else if (!c8939pa0.c()) {
                                i12++;
                            }
                            if (c8939pa0.f51560d) {
                                i13++;
                            }
                            a12 = c5650Nw02;
                            it = it2;
                            i10 = i16;
                        }
                        c5650Nw0 = a12;
                        LinkedList linkedList2 = a13.f52883e;
                        ch2.add(linkedList2 != null ? linkedList2.size() : 0);
                        LinkedList linkedList3 = a13.f52882d;
                        ch2.add(linkedList3 != null ? linkedList3.size() : 0);
                        ch2.add(i10);
                        ch2.add(i11);
                        LinkedList linkedList4 = a13.f52881c;
                        ch2.add(linkedList4 != null ? linkedList4.size() : 0);
                        ch2.add(i14);
                        ch2.add(i12);
                        ch2.add(i13);
                        for (C8605na0 c8605na02 : a13.f52881c) {
                            ch2.add(c8605na02.f50985a);
                            ch2.add(c8605na02.f50986b.e());
                            if (c8605na02.b()) {
                                ch2.add(c8605na02.a());
                            }
                        }
                    } else {
                        c5650Nw0 = a12;
                    }
                    UH o10 = ch2.o(0);
                    int i17 = 1;
                    while (true) {
                        if (!o10.hasNext()) {
                            break;
                        }
                        int r10 = o10.r();
                        for (int i18 = 55296; r10 >= i18; i18 = 55296) {
                            char c10 = (char) ((r10 & 8191) | 57344);
                            r10 >>= 13;
                            com.android.tools.r8.graph.L2[] l2Arr = com.android.tools.r8.graph.L2.f36559g;
                            i17 += (c10 == 0 || c10 > '\u007f') ? c10 <= '\u07ff' ? 2 : 3 : 1;
                        }
                        char c11 = (char) r10;
                        com.android.tools.r8.graph.L2[] l2Arr2 = com.android.tools.r8.graph.L2.f36559g;
                        i17 += (c11 == 0 || c11 > '\u007f') ? c11 <= '\u07ff' ? 2 : 3 : 1;
                    }
                    byte[] bArr = new byte[i17];
                    UH o11 = ch2.o(0);
                    int i19 = 0;
                    int i20 = 0;
                    while (o11.hasNext()) {
                        int r11 = o11.r();
                        while (r11 >= 55296) {
                            i19 = com.android.tools.r8.graph.L2.a((char) ((r11 & 8191) | 57344), bArr, i19);
                            i20++;
                            r11 >>= 13;
                        }
                        i19 = com.android.tools.r8.graph.L2.a((char) r11, bArr, i19);
                    }
                    bArr[i19] = 0;
                    abstractC10561zE.d(new C9960vh(a14, c5314Ib0.f41148a.a(ch2.f39177c + i20, bArr)));
                    W5 b10 = a10.b();
                    AbstractC10561zE Y02 = a10.Y0();
                    b10.getClass();
                    Y5 y52 = new Y5(b10, Y02);
                    AbstractC10561zE previous = y52.previous();
                    y52.f45926f = a10.getPosition();
                    if (!C6845cz.f47235g && previous != a10) {
                        throw new AssertionError();
                    }
                    c6845cz.f47238c.getClass();
                    ArrayList a15 = C5314Ib0.a(a13);
                    C10340xw0 a16 = y52.a(c7215fB, c6845cz.f47236a.E(), a15.size(), AbstractC8999pu0.k());
                    C10340xw0 a17 = c7215fB.a(c6845cz.f47240e, (C4515j0) null);
                    C8570nJ.o b02 = c6845cz.f47236a.E().b0();
                    if (!C8570nJ.o.f50802c && !C8570nJ.this.P()) {
                        throw new AssertionError();
                    }
                    if (C8570nJ.this.c(C2.N) && a15.size() < 200) {
                        ArrayList arrayList = new ArrayList(a15.size());
                        for (int i21 = 0; i21 < a15.size(); i21++) {
                            AbstractC10561zE a18 = ((AbstractC4905Ba0) a15.get(i21)).a(c6845cz.f47236a, c7215fB);
                            y52.add(a18);
                            arrayList.add(a18.d());
                        }
                        y52.add(new C9103qZ(c6845cz.f47236a.b().f38092l2, a17, arrayList));
                    } else {
                        y52.add(new C8769oZ(a17, a16, c6845cz.f47236a.b().f38092l2));
                        for (int i22 = 0; i22 < a15.size(); i22++) {
                            C10340xw0 a19 = y52.a(c7215fB, c6845cz.f47236a.E(), i22, AbstractC8999pu0.k());
                            AbstractC10561zE a20 = ((AbstractC4905Ba0) a15.get(i22)).a(c6845cz.f47236a, c7215fB);
                            y52.add(a20);
                            y52.add(T3.a(YV.f45995b, a17, a19, a20.d()));
                        }
                    }
                    C5832Ra0.a(a10, a17, c6845cz.f47239d);
                    if (c5650Nw0 != null) {
                        AbstractC7716iB.a(c5650Nw0.f42743c.f53886c);
                    }
                } else if (!C6845cz.f47235g) {
                    throw new AssertionError();
                }
            }
            c7215fB.x();
            if (!C6845cz.f47235g && !c7215fB.b(c6845cz.f47236a)) {
                throw new AssertionError();
            }
            return;
        }
        if (c6845cz.f47236a.f().i()) {
            c6845cz.a(c6845cz.f47236a.M(), c7215fB);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:414:0x09c3, code lost:
    
        if (r1.a(r4, r5, com.android.tools.r8.internal.M1.a(r4, r5), com.android.tools.r8.internal.C10394yE.f53978a) != false) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x09df, code lost:
    
        if (com.android.tools.r8.internal.VW.a(r1, r11) != false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0a70, code lost:
    
        if (r15.b(r1, r5, com.android.tools.r8.internal.M1.a(r1, r5), com.android.tools.r8.internal.C10394yE.f53978a) != false) goto L503;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:296:0x07e8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0760  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0aef  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0b4c  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0b65  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0b8e  */
    /* JADX WARN: Removed duplicated region for block: B:523:0x0bbe  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0bed  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0c2a  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0c4f  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0bf3  */
    /* JADX WARN: Removed duplicated region for block: B:551:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:577:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final com.android.tools.r8.graph.H5 h52, final C7215fB c7215fB, C10729u c10729u, AbstractC8028k40 abstractC8028k40, final AbstractC6931dX abstractC6931dX, C9875v8.a aVar, final C8659ns0 c8659ns0) {
        AbstractC5461Ko0 abstractC5461Ko0;
        UD ud2;
        VW vw;
        com.android.tools.r8.ir.optimize.J j10;
        C4516j1 d10;
        com.android.tools.r8.graph.H5 j11;
        com.android.tools.r8.graph.H5 j12;
        int i10;
        com.android.tools.r8.graph.A2 a22;
        BitSet bitSet;
        List<C10340xw0> d11;
        BitSet bitSet2;
        int i11;
        BitSet bitSet3;
        C8024k3 v10;
        com.android.tools.r8.graph.H5 h53;
        BitSet bitSet4;
        C8024k3 v11;
        AbstractC7224fE abstractC7224fE;
        AbstractC7391gE abstractC7391gE;
        Iterator<W5> it;
        AbstractC8849p abstractC8849p;
        AbstractC8849p abstractC8849p2;
        AbstractC8849p abstractC8849p3;
        AbstractC8849p abstractC8849p4;
        C6974dm0 a10;
        C7920jS c7920jS;
        C9126qh a11;
        C9523t2 a12;
        C9126qh a13;
        C9523t2 a14;
        C9126qh a15;
        C9523t2 a16;
        C9126qh a17;
        C5918Sl0 d12;
        A40 b10;
        A40 b11;
        C9126qh a18;
        C5686Ol0 c10;
        C9523t2 a19;
        A40 b12;
        C10471yk0 G02;
        F1 c4997Co0;
        UD w00;
        com.android.tools.r8.graph.M2 m22;
        com.android.tools.r8.graph.E0 g10;
        C4798y c4798y = this.f49522a;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                ((C8191l3) obj).a(com.android.tools.r8.graph.H5.this, c7215fB, abstractC6931dX, c8659ns0);
            }
        };
        C8191l3 c8191l3 = c4798y.f38386A;
        if (c8191l3 != null) {
            interfaceC6160Wr0.accept(c8191l3);
        }
        if (abstractC6931dX.f()) {
            this.f49539r.a(c7215fB);
            this.f49540s.a(c7215fB);
        }
        com.android.tools.r8.ir.optimize.W w10 = this.f49535n;
        if (w10 != null) {
            w10.f54818e.a(h52, c7215fB, abstractC6931dX, c8659ns0);
        }
        if (this.f49528g != null) {
            c8659ns0.b("Analyze library method overrides");
            C11231h2 c11231h2 = this.f49528g;
            if (!c11231h2.f57364b.isEmpty()) {
                C7832iv c7832iv = new C7832iv(c11231h2.f57363a, C11214g2.f57335a);
                for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
                    if (abstractC10561zE.c2() && (g10 = c11231h2.f57363a.g((m22 = abstractC10561zE.w0().f52627k))) != null && g10.e0() && c11231h2.f57364b.contains(m22) && c7832iv.b(c7215fB, abstractC10561zE.d())) {
                        c11231h2.f57364b.remove(m22);
                    }
                }
            }
            c8659ns0.d();
        }
        if (this.f49527f != null) {
            c8659ns0.b("Analyze field accesses");
            this.f49527f.a(c7215fB, aVar, abstractC8028k40, abstractC6931dX);
            C6224Xv c6224Xv = this.f49527f.f44334b;
            if (c6224Xv != null) {
                c6224Xv.a(c10729u);
            }
            c8659ns0.d();
        }
        if (this.f49531j.f50690i1 || this.f49522a.a(c7215fB.j()).h(this.f49531j)) {
            return;
        }
        if (!h52.d().i1()) {
            abstractC5461Ko0 = null;
        } else if (h52.d().f1()) {
            C4798y c4798y2 = this.f49522a;
            boolean z10 = C5113Eo0.f40024k;
            if (!z10 && !c4798y2.f().i()) {
                throw new AssertionError();
            }
            if (!z10 && !c4798y2.m()) {
                throw new AssertionError();
            }
            if (!z10 && !c7215fB.j().d().f1()) {
                throw new AssertionError();
            }
            if (!c4798y2.E().f50594E) {
                abstractC5461Ko0 = C5287Ho0.f40876a;
            } else {
                c8659ns0.b("Analyze class initializer");
                C5113Eo0 c5113Eo0 = new C5113Eo0(c4798y2.M(), c7215fB, abstractC8028k40);
                c5113Eo0.a(c10729u);
                abstractC5461Ko0 = c5113Eo0.f40025i.a();
                c8659ns0.d();
            }
        } else {
            C4798y c4798y3 = this.f49522a;
            c8659ns0.b("Analyze instance initializer");
            boolean z11 = ZD.f46200m;
            if (!z11 && !c4798y3.f().i()) {
                throw new AssertionError();
            }
            if (!z11 && !c4798y3.m()) {
                throw new AssertionError();
            }
            if (!z11 && !c7215fB.j().d().j1()) {
                throw new AssertionError();
            }
            QJ a20 = AbstractC7716iB.a(c4798y3.b(), c7215fB.m());
            if (a20 == null) {
                w00 = C5817Qt.f43747a;
            } else {
                com.android.tools.r8.graph.H0 e10 = a20.e(c4798y3, c7215fB.j());
                if (e10 == null) {
                    w00 = C5817Qt.f43747a;
                } else {
                    ZD zd2 = new ZD(c4798y3.M(), c7215fB, abstractC8028k40, e10, a20);
                    zd2.a(c10729u);
                    zd2.c();
                    TD td2 = zd2.f46201i;
                    if (td2.f44420a.isEmpty()) {
                        w00 = C5817Qt.f43747a;
                    } else {
                        w00 = new W00(td2.f44420a);
                    }
                }
            }
            c8659ns0.d();
            ud2 = w00;
            abstractC5461Ko0 = null;
            this.f49539r.a(h52.getHolder(), abstractC5461Ko0);
            if (this.f49522a.E().a0().a()) {
                C8438ma0 c8438ma0 = this.f49522a.f38388C.f42928g;
                com.android.tools.r8.graph.H2 holder = h52.getHolder();
                c8438ma0.getClass();
                if (abstractC5461Ko0 != null && (abstractC5461Ko0 instanceof C5403Jo0)) {
                    boolean z12 = C8438ma0.f50332d;
                    if (!z12 && !holder.o1()) {
                        throw new AssertionError();
                    }
                    C5403Jo0 a21 = abstractC5461Ko0.a();
                    if (!z12 && !holder.o1()) {
                        throw new AssertionError();
                    }
                    if (holder.f36245e == c8438ma0.f50333a.f42003o ? true : holder.R0().a(c8438ma0.f50333a.f41991c)) {
                        c8438ma0.f50335c.put(holder.f36245e, a21);
                    }
                }
            }
            vw = this.f49546y;
            j10 = this.f49543v;
            vw.getClass();
            d10 = h52.d();
            c8659ns0.b("Identify bridge info");
            abstractC8028k40.a(h52, L7.a(h52.d(), c7215fB));
            c8659ns0.d();
            c8659ns0.b("Identify returns argument");
            j11 = c7215fB.j();
            if (vw.f45070a.a(j11).a(vw.f45070a, j11)) {
                C4516j1 d13 = j11.d();
                List<W5> f10 = c7215fB.f();
                if (f10.isEmpty()) {
                    abstractC8028k40.b(j11);
                } else {
                    C10471yk0 G03 = f10.get(0).i().G0();
                    if (!G03.v2()) {
                        C10340xw0 w22 = G03.w2();
                        for (int i12 = 1; i12 < f10.size(); i12++) {
                            if (f10.get(i12).i().G0().w2() != w22) {
                                w22 = null;
                            }
                        }
                        if (w22 != null) {
                            C10340xw0 i13 = w22.i();
                            if (!i13.j()) {
                                AbstractC10561zE abstractC10561zE2 = i13.f53886c;
                                if (abstractC10561zE2.k1()) {
                                    abstractC8028k40.a(d13, abstractC10561zE2.v().b(true));
                                }
                                F1 a23 = abstractC10561zE2.a(vw.f45070a, j11, M1.f42128a);
                                if (a23.b0()) {
                                    abstractC8028k40.a(d13, vw.f45070a, a23);
                                    C8109kc c8109kc = vw.f45071b;
                                    if (c8109kc != null) {
                                        c8109kc.a(j11, a23, abstractC6931dX);
                                    }
                                } else if (w22.u().y()) {
                                    Q30 b13 = R30.b(vw.f45070a, j11, i13);
                                    C4798y c4798y4 = vw.f45070a;
                                    boolean z13 = C4997Co0.f39365c;
                                    if (b13.e()) {
                                        c4997Co0 = C10504yv0.f54195b;
                                    } else {
                                        c4997Co0 = new C4997Co0(b13);
                                    }
                                    abstractC8028k40.a(d13, c4798y4, c4997Co0);
                                }
                            }
                        }
                    }
                }
            }
            c8659ns0.d();
            C4724u1 b14 = vw.f45070a.b();
            j12 = c7215fB.j();
            if (j12.getAccessFlags().n() && j12.v() == 1 && j12.b(0).a(b14.f37884J1) && j12.E().a(b14.f37884J1)) {
                c7920jS = new C7920jS(c7215fB.k(), 0);
                C8024k3 v12 = c7920jS.next().v();
                if (AbstractC5614Nf.f42661a && v12 == null) {
                    throw new AssertionError();
                }
                a11 = c7920jS.next().a(306783378L);
                if (a11 != null && (a12 = c7920jS.next().a(v12.d(), a11.d())) != null && (a13 = c7920jS.next().a(613566756L)) != null && (a14 = c7920jS.next().a(v12.d(), a13.d())) != null && (a15 = c7920jS.next().a(-920350135L)) != null && (a16 = c7920jS.next().a(v12.d(), a15.d())) != null && (a17 = c7920jS.next().a(1L)) != null && (d12 = c7920jS.next().d(a14.d(), a17.d())) != null && (b10 = c7920jS.next().b(a12.d(), d12.d())) != null && (b11 = c7920jS.next().b(a16.d(), b10.d())) != null && (a18 = c7920jS.next().a(1L)) != null && (c10 = c7920jS.next().c(a12.d(), a18.d())) != null && (a19 = c7920jS.next().a(c10.d(), a14.d())) != null && (b12 = c7920jS.next().b(b11.d(), a19.d())) != null && (G02 = c7920jS.next().G0()) != null && G02.w2() == b12.d()) {
                    abstractC8028k40.a(c7215fB.j().d(), new C6249Yf(new C6431aX(c7215fB.j(), 0)));
                }
            }
            if (vw.f45073d.f50609J) {
                c8659ns0.b("Compute class inlining constraint");
                abstractC8028k40.a(h52, AbstractC6446ad.a(vw.f45070a, h52, c7215fB, c8659ns0));
                c8659ns0.d();
            }
            c8659ns0.b("Compute enum unboxer method classification");
            if (!vw.f45070a.w()) {
                if (vw.f45070a.I().a()) {
                    abstractC8028k40.c(h52);
                } else {
                    boolean z14 = VW.f45069e;
                    if (!z14) {
                        AbstractC4892Au o10 = h52.A().o();
                        o10.getClass();
                        if (o10 instanceof C9945vc) {
                            AbstractC4892Au a24 = AbstractC4950Bu.a(vw.f45070a, h52, c7215fB, abstractC6931dX);
                            if (!z14 && !(a24 instanceof C9945vc)) {
                                throw new AssertionError();
                            }
                            if (!z14 && a24.a().f53153a != o10.a().f53153a) {
                                throw new AssertionError();
                            }
                        } else if (!z14 && !(o10 instanceof C8000jv0)) {
                            throw new AssertionError();
                        }
                    }
                }
            } else {
                abstractC8028k40.a(h52, AbstractC4950Bu.a(vw.f45070a, h52, c7215fB, abstractC6931dX));
            }
            c8659ns0.d();
            if (vw.f45070a.E().f50606I) {
                i10 = 0;
            } else {
                c8659ns0.b("Compute simple inlining constraint");
                C6319Zl0 c6319Zl0 = new C6319Zl0(vw.f45070a, h52);
                if (c6319Zl0.f46346c.getReference().w0() == 0) {
                    a10 = C6974dm0.f47511c;
                } else if (c6319Zl0.f46347d.f50690i1) {
                    a10 = C6974dm0.f47511c;
                } else {
                    W5 k10 = c7215fB.k();
                    i10 = 0;
                    a10 = c6319Zl0.a(k10, 0, 0, k10.l().j(c7215fB.l()));
                    AbstractC6205Xl0 abstractC6205Xl0 = a10.f47513b != 0 ? a10.f47512a : C8602nZ.f50980b;
                    AbstractC6205Xl0 abstractC6205Xl02 = a10.f47512a;
                    abstractC8028k40.a(h52, abstractC6205Xl0);
                    abstractC8028k40.b(h52, abstractC6205Xl02);
                    c8659ns0.d();
                }
                i10 = 0;
                if (a10.f47513b != 0) {
                }
                AbstractC6205Xl0 abstractC6205Xl022 = a10.f47512a;
                abstractC8028k40.a(h52, abstractC6205Xl0);
                abstractC8028k40.b(h52, abstractC6205Xl022);
                c8659ns0.d();
            }
            c8659ns0.b("Compute dynamic return type");
            if (j10 == null && h52.E().Q0() && vw.f45070a.a(h52).a(vw.f45070a, h52)) {
                if (!com.android.tools.r8.ir.optimize.J.f54761b && !h52.E().Q0()) {
                    throw new AssertionError();
                }
                ArrayList arrayList = new ArrayList();
                Iterator<W5> it2 = c7215fB.f47897d.iterator();
                while (it2.hasNext()) {
                    AbstractC9408sL i14 = it2.next().i();
                    if (i14.g2()) {
                        arrayList.add(i14.G0().w2().a(j10.f54762a));
                    }
                }
                C4798y c4798y5 = j10.f54762a;
                boolean z15 = AbstractC10330xt.f53865a;
                C10664zt c10664zt = C10664zt.f54560c;
                int size = arrayList.size();
                AbstractC10330xt abstractC10330xt = c10664zt;
                int i15 = i10;
                while (i15 < size) {
                    Object obj = arrayList.get(i15);
                    i15++;
                    abstractC10330xt = abstractC10330xt.a(c4798y5, (AbstractC10330xt) obj, null, null);
                }
                a22 = null;
                C11295l c11295l = j10.f54762a.f38412e;
                c11295l.getClass();
                if (c11295l.a(h52.getReference()).f40087a.d().d()) {
                    abstractC10330xt = abstractC10330xt.a(C8854p10.b());
                }
                if (!abstractC10330xt.g() && !abstractC10330xt.l()) {
                    if (abstractC10330xt.k()) {
                        C4516j1 d14 = h52.d();
                        C4798y c4798y6 = vw.f45070a;
                        G1 g12 = c4798y6.f38427t;
                        com.android.tools.r8.graph.M2 E10 = h52.E();
                        g12.getClass();
                        abstractC8028k40.a(d14, c4798y6, G1.b(E10));
                        abstractC8028k40.a(vw.f45070a, h52.d(), abstractC10330xt);
                    } else if (abstractC10330xt.j()) {
                        abstractC8028k40.a(vw.f45070a, h52.d(), abstractC10330xt);
                    } else {
                        com.android.tools.r8.graph.M2 E11 = h52.E();
                        C4798y c4798y7 = vw.f45070a;
                        E11.getClass();
                        if (abstractC10330xt.a().b(vw.f45070a, AbstractC10330xt.a(c4798y7, AbstractC8999pu0.a(E11, C8854p10.h(), (C4798y<?>) c4798y7)))) {
                            abstractC8028k40.a(vw.f45070a, h52.d(), abstractC10330xt);
                        }
                    }
                }
            } else {
                a22 = null;
            }
            c8659ns0.d();
            if (vw.f45073d.f50615L) {
                c8659ns0.b("Compute initialized classes on normal exits");
                if (vw.f45073d.f50615L) {
                    ((C11245i) vw.f45070a.f()).i();
                    C4798y<C11245i> M10 = vw.f45070a.M();
                    C6993dt c6993dt = new C6993dt(c7215fB, 2);
                    C10391yD c10391yD = new C10391yD(M10, c7215fB.j());
                    if (!C6993dt.f47533f && c6993dt.f47538e) {
                        throw new AssertionError();
                    }
                    for (W5 w52 : c6993dt.a(c6993dt.f47536c)) {
                        if (!w52.z()) {
                            Y5 it3 = w52.l().iterator();
                            while (it3.hasNext()) {
                                it3.next().a(c10391yD);
                            }
                        }
                    }
                    Set unmodifiableSet = Collections.unmodifiableSet(c10391yD.f53975c);
                    if (unmodifiableSet != null && !unmodifiableSet.isEmpty()) {
                        abstractC8028k40.a(unmodifiableSet, d10);
                    }
                }
                c8659ns0.d();
            }
            c8659ns0.b("Compute instance initializer info");
            if (d10.j1()) {
                if (!VW.f45069e && ud2 == null) {
                    throw new AssertionError();
                }
                if (!d10.f37314g.J() && !((C11245i) vw.f45070a.f()).f57408w.containsKey(d10.getReference())) {
                    C5701Ot c5701Ot = C5701Ot.f43063a;
                    com.android.tools.r8.graph.H5 j13 = c7215fB.j();
                    com.android.tools.r8.graph.H2 holder2 = j13.getHolder();
                    C4724u1 c4724u1 = vw.f45073d.f50660a;
                    holder2.getClass();
                    if (holder2.c(c4724u1.f37859F4.f38229g) == null) {
                        D4 d42 = D4.f39431a;
                        C10340xw0 m10 = c7215fB.m();
                        Iterator<W5> it4 = c7215fB.f47897d.iterator();
                        int i16 = 7;
                        int i17 = i10;
                        com.android.tools.r8.graph.A2 a25 = a22;
                        AbstractC8849p abstractC8849p5 = c5701Ot;
                        while (it4.hasNext()) {
                            W5 next = it4.next();
                            if (next.z()) {
                                i17 = 1;
                            }
                            Y5 it5 = next.l().iterator();
                            while (it5.hasNext()) {
                                AbstractC10561zE next2 = it5.next();
                                switch (next2.r2()) {
                                    case 0:
                                    case 4:
                                    case 7:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 16:
                                    case 20:
                                    case 21:
                                    case 27:
                                    case 29:
                                    case 45:
                                    case 47:
                                    case 53:
                                    case 55:
                                    case 57:
                                    case 58:
                                    case 63:
                                    case 65:
                                    case 67:
                                    case 68:
                                        it = it4;
                                        C4798y c4798y8 = vw.f45070a;
                                        abstractC8849p4 = abstractC8849p5;
                                        break;
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 8:
                                    case 13:
                                    case 14:
                                    case 17:
                                    case 18:
                                    case 19:
                                    case 22:
                                    case 23:
                                    case 26:
                                    case 32:
                                    case 35:
                                    case 37:
                                    case 39:
                                    case 41:
                                    case 42:
                                    case 43:
                                    case 44:
                                    case 46:
                                    case 48:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 54:
                                    case 60:
                                    case 61:
                                    case 64:
                                    case 66:
                                    default:
                                        i16 = 0;
                                        abstractC8849p5 = C8835ov0.f51388a;
                                    case 5:
                                    case 9:
                                    case 15:
                                    case 24:
                                    case 56:
                                        it = it4;
                                        abstractC8849p4 = abstractC8849p5;
                                        abstractC8849p3 = abstractC8849p4;
                                        it4 = it;
                                        abstractC8849p2 = abstractC8849p3;
                                        abstractC8849p5 = abstractC8849p2;
                                    case 6:
                                        it = it4;
                                        i16 &= -3;
                                        abstractC8849p4 = abstractC8849p5;
                                        abstractC8849p3 = abstractC8849p4;
                                        it4 = it;
                                        abstractC8849p2 = abstractC8849p3;
                                        abstractC8849p5 = abstractC8849p2;
                                    case 25:
                                    case 31:
                                    case 62:
                                        i16 &= -2;
                                        abstractC8849p2 = abstractC8849p5;
                                        abstractC8849p5 = abstractC8849p2;
                                    case 28:
                                    case 59:
                                        it = it4;
                                        AbstractC7670hw S10 = next2.S();
                                        com.android.tools.r8.graph.F0 p10 = ((C11245i) vw.f45070a.f()).c(S10.getField()).p();
                                        if (p10 == null) {
                                            break;
                                        } else {
                                            boolean d15 = abstractC8849p5.d();
                                            AbstractC8849p abstractC8849p6 = abstractC8849p5;
                                            if (d15) {
                                                if (abstractC8849p5 instanceof C5701Ot) {
                                                    abstractC8849p6 = new C9123qg(p10.d());
                                                } else {
                                                    abstractC8849p5.a().f51848a.add(p10.d());
                                                    abstractC8849p6 = abstractC8849p5;
                                                }
                                            }
                                            if (!X00.f45599a && !abstractC8849p6.a(p10)) {
                                                throw new AssertionError();
                                            }
                                            C4798y c4798y9 = vw.f45070a;
                                            abstractC8849p4 = abstractC8849p6;
                                            if (S10.b(c4798y9, j13, M1.a(c4798y9, j13), C10394yE.f53978a)) {
                                                i16 &= -3;
                                                abstractC8849p4 = abstractC8849p6;
                                                if (S10 instanceof C5576Mo0) {
                                                    abstractC8849p4 = C8835ov0.f51388a;
                                                }
                                            }
                                            abstractC8849p3 = abstractC8849p4;
                                            it4 = it;
                                            abstractC8849p2 = abstractC8849p3;
                                            abstractC8849p5 = abstractC8849p2;
                                        }
                                        break;
                                    case 30:
                                        it = it4;
                                        C9225rE m11 = next2.m();
                                        if (((C11245i) vw.f45070a.f()).c(m11.getField()).q() == null) {
                                            break;
                                        } else {
                                            C10340xw0 n10 = m11.n();
                                            n10.getClass();
                                            C6371a70 c6371a70 = EnumC6871d70.f47287c;
                                            if (n10.a(d42, c6371a70) == m10) {
                                                C4798y c4798y10 = vw.f45070a;
                                                break;
                                            }
                                            i16 &= -3;
                                            C10340xw0 value = m11.value();
                                            value.getClass();
                                            C10340xw0 a26 = value.a(d42, c6371a70);
                                            if (!a26.X()) {
                                                i16 &= -2;
                                            }
                                            abstractC8849p4 = abstractC8849p5;
                                            break;
                                        }
                                    case 33:
                                        it = it4;
                                        QJ c02 = next2.c0();
                                        com.android.tools.r8.graph.A2 B22 = c02.B2();
                                        C4516j1 b15 = B22.b(vw.f45070a.g(B22.f38297f));
                                        if (b15 == null) {
                                            break;
                                        } else if (b15.j1() && c02.C2().i() == m10) {
                                            if ((a25 != null) && a25 != b15.getReference()) {
                                                break;
                                            } else {
                                                C4724u1 c4724u12 = vw.f45072c;
                                                if (B22 != c4724u12.f37943R4.f36492k && B22 != c4724u12.f37859F4.f38228f) {
                                                    b15.L0();
                                                    AbstractC7224fE a27 = b15.f37320m.a(c02);
                                                    AbstractC8849p f11 = a27.f();
                                                    boolean z16 = abstractC8849p5 instanceof C8835ov0;
                                                    AbstractC8849p abstractC8849p7 = abstractC8849p5;
                                                    if (!z16) {
                                                        f11.getClass();
                                                        abstractC8849p7 = abstractC8849p5;
                                                        if (!(f11 instanceof C5701Ot)) {
                                                            if (f11 instanceof C8835ov0) {
                                                                abstractC8849p7 = C8835ov0.f51388a;
                                                            } else {
                                                                C9123qg a28 = f11.a();
                                                                if (abstractC8849p5 instanceof C5701Ot) {
                                                                    C9123qg c9123qg = new C9123qg();
                                                                    c9123qg.f51848a.addAll(a28.f51848a);
                                                                    abstractC8849p7 = c9123qg;
                                                                } else {
                                                                    abstractC8849p5.a().f51848a.addAll(a28.f51848a);
                                                                    abstractC8849p7 = abstractC8849p5;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    if (a27.d()) {
                                                        i16 &= -2;
                                                    }
                                                    if (a27.e()) {
                                                        i16 &= -3;
                                                    }
                                                    if (!a27.g()) {
                                                        i16 &= -5;
                                                    }
                                                    for (int i18 = 1; i18 < c02.f54321f.size(); i18++) {
                                                        C10340xw0 c10340xw0 = (C10340xw0) c02.f54321f.get(i18);
                                                        c10340xw0.getClass();
                                                        C10340xw0 a29 = c10340xw0.a(d42, EnumC6871d70.f47287c);
                                                        if (VW.a(a29, m10)) {
                                                            i16 &= -5;
                                                        }
                                                        if (!a29.X()) {
                                                            i16 &= -2;
                                                        }
                                                    }
                                                    abstractC8849p = abstractC8849p7;
                                                    abstractC8849p = abstractC8849p7;
                                                    abstractC8849p = abstractC8849p7;
                                                    if (!X00.f45599a && a25 != null && a25 != B22) {
                                                        throw new AssertionError();
                                                    }
                                                } else {
                                                    abstractC8849p = abstractC8849p5;
                                                    abstractC8849p = abstractC8849p5;
                                                    abstractC8849p = abstractC8849p5;
                                                    if (!X00.f45599a && a25 != null && a25 != B22) {
                                                        throw new AssertionError();
                                                    }
                                                }
                                                a25 = B22;
                                                abstractC8849p3 = abstractC8849p;
                                                it4 = it;
                                                abstractC8849p2 = abstractC8849p3;
                                                abstractC8849p5 = abstractC8849p2;
                                            }
                                        } else {
                                            C8835ov0 c8835ov0 = C8835ov0.f51388a;
                                            int i19 = i16 & (-3);
                                            ArrayList arrayList2 = c02.f54321f;
                                            int size2 = arrayList2.size();
                                            int i20 = 0;
                                            while (true) {
                                                if (i20 < size2) {
                                                    Object obj2 = arrayList2.get(i20);
                                                    i20++;
                                                    if (VW.a((C10340xw0) obj2, m10)) {
                                                        i16 &= -7;
                                                        abstractC8849p4 = c8835ov0;
                                                    }
                                                } else {
                                                    i16 = i19;
                                                    abstractC8849p4 = c8835ov0;
                                                }
                                            }
                                            abstractC8849p3 = abstractC8849p4;
                                            it4 = it;
                                            abstractC8849p2 = abstractC8849p3;
                                            abstractC8849p5 = abstractC8849p2;
                                        }
                                        break;
                                    case 34:
                                    case 38:
                                    case 40:
                                        it = it4;
                                        VJ e02 = next2.e0();
                                        C8835ov0 c8835ov02 = C8835ov0.f51388a;
                                        i16 &= -3;
                                        ArrayList arrayList3 = e02.f54321f;
                                        int size3 = arrayList3.size();
                                        int i21 = 0;
                                        while (i21 < size3) {
                                            Object obj3 = arrayList3.get(i21);
                                            i21++;
                                            if (VW.a((C10340xw0) obj3, m10)) {
                                                abstractC8849p5 = c8835ov02;
                                                i16 &= -5;
                                                abstractC8849p4 = abstractC8849p5;
                                                abstractC8849p3 = abstractC8849p4;
                                                it4 = it;
                                                abstractC8849p2 = abstractC8849p3;
                                                abstractC8849p5 = abstractC8849p2;
                                            }
                                        }
                                        abstractC8849p5 = c8835ov02;
                                        it4 = it;
                                    case 36:
                                        it = it4;
                                        C9103qZ u02 = next2.u0();
                                        C4798y c4798y11 = vw.f45070a;
                                        u02.getClass();
                                        if (u02.b(c4798y11, j13, M1.a(c4798y11, j13), C10394yE.f53978a)) {
                                            i16 &= -3;
                                        }
                                        ArrayList arrayList4 = u02.f54321f;
                                        int size4 = arrayList4.size();
                                        int i22 = 0;
                                        while (i22 < size4) {
                                            Object obj4 = arrayList4.get(i22);
                                            i22++;
                                            if (VW.a((C10340xw0) obj4, m10)) {
                                                i16 &= -5;
                                                abstractC8849p4 = abstractC8849p5;
                                                abstractC8849p3 = abstractC8849p4;
                                                it4 = it;
                                                abstractC8849p2 = abstractC8849p3;
                                                abstractC8849p5 = abstractC8849p2;
                                            }
                                        }
                                        abstractC8849p3 = abstractC8849p5;
                                        it4 = it;
                                        abstractC8849p2 = abstractC8849p3;
                                        abstractC8849p5 = abstractC8849p2;
                                    case 49:
                                        C9603tZ w02 = next2.w0();
                                        C4798y c4798y12 = vw.f45070a;
                                        w02.getClass();
                                        it = it4;
                                        abstractC8849p4 = abstractC8849p5;
                                        if (w02.b(c4798y12, j13, M1.a(c4798y12, j13), C10394yE.f53978a)) {
                                            abstractC8849p5 = C8835ov0.f51388a;
                                            i16 &= -3;
                                            abstractC8849p3 = abstractC8849p5;
                                            it4 = it;
                                            abstractC8849p2 = abstractC8849p3;
                                            abstractC8849p5 = abstractC8849p2;
                                        }
                                        abstractC8849p3 = abstractC8849p4;
                                        it4 = it;
                                        abstractC8849p2 = abstractC8849p3;
                                        abstractC8849p5 = abstractC8849p2;
                                }
                            }
                            abstractC8849p5 = abstractC8849p5;
                        }
                        if (i17 != 0 && (i16 & (-3)) == 0) {
                            i16 &= -2;
                        }
                        if (ud2.a() && i16 == 0 && (abstractC8849p5 instanceof C8835ov0) && a25 == null) {
                            abstractC7224fE = C5044Dj.f39605a;
                        } else {
                            abstractC7224fE = new Y00(i16, ud2, abstractC8849p5, a25);
                        }
                        if (abstractC7224fE == null && (abstractC7224fE instanceof Y00)) {
                            abstractC7391gE = new C7127ei(abstractC7224fE.a());
                        } else {
                            abstractC7391gE = C5875Rt.f44015a;
                        }
                        abstractC8028k40.a(d10, abstractC7391gE);
                    }
                    abstractC7224fE = null;
                    if (abstractC7224fE == null) {
                    }
                    abstractC7391gE = C5875Rt.f44015a;
                    abstractC8028k40.a(d10, abstractC7391gE);
                }
            }
            c8659ns0.d();
            c8659ns0.b("Compute may have side effects");
            vw.a(abstractC8028k40, d10, c7215fB);
            c8659ns0.d();
            c8659ns0.b("Return value only depends on argument");
            if (vw.f45073d.f50621N && C5340Im.a(vw.f45070a.M(), c7215fB)) {
                abstractC8028k40.c(d10);
            }
            c8659ns0.d();
            c8659ns0.b("Compute non-null-param-or-throw");
            d10.L0();
            if (d10.f37320m.s() == null) {
                List<C10340xw0> d16 = c7215fB.d();
                BitSet bitSet5 = new BitSet();
                for (int i23 = !d10.w0(); i23 < d16.size(); i23++) {
                    C10340xw0 c10340xw02 = d16.get(i23);
                    if (c10340xw02.P() && vw.a(c7215fB, c10340xw02)) {
                        bitSet5.set(i23);
                    }
                }
                if (!bitSet5.isEmpty()) {
                    abstractC8028k40.a(d10, bitSet5);
                    bitSet = bitSet5;
                    c8659ns0.d();
                    c8659ns0.b("Compute non-null-param-on-normal-exits");
                    Set c11 = AbstractC5513Ll0.c();
                    c11.addAll(c7215fB.f());
                    C6993dt c6993dt2 = new C6993dt(c7215fB, 2);
                    d11 = c7215fB.d();
                    bitSet2 = new BitSet();
                    if (bitSet != null) {
                        bitSet2.or(bitSet);
                    }
                    for (i11 = !c7215fB.j().d().w0() ? 1 : 0; i11 < d11.size(); i11++) {
                        if (!bitSet2.get(i11)) {
                            C10340xw0 c10340xw03 = d11.get(i11);
                            if (c10340xw03.u().y() && vw.a(c7215fB, c10340xw03, c6993dt2, c11)) {
                                bitSet2.set(i11);
                            }
                        }
                    }
                    if (!bitSet2.isEmpty()) {
                        abstractC8028k40.b(c7215fB.v(), bitSet2);
                    }
                    c8659ns0.d();
                    c8659ns0.b("Compute parameters with bitwise operations");
                    bitSet3 = new BitSet(h52.C().size());
                    AE H10 = c7215fB.k().H();
                    for (v10 = H10.next().v(); v10 != null; v10 = H10.next().v()) {
                        if (VW.a(v10)) {
                            bitSet3.set(v10.b(true) - C8704o7.a(!h52.d().w0()));
                        }
                    }
                    if (bitSet3.isEmpty()) {
                        h53 = h52;
                    } else {
                        h53 = h52;
                        abstractC8028k40.b(h53, bitSet3);
                    }
                    c8659ns0.d();
                    c8659ns0.b("Compute unused arguments");
                    C4516j1 d17 = h52.d();
                    bitSet4 = new BitSet(d17.getReference().a(d17.w0()));
                    AE H11 = c7215fB.k().H();
                    for (v11 = H11.next().v(); v11 != null; v11 = H11.next().v()) {
                        if (!v11.d().w()) {
                            bitSet4.set(v11.b(true));
                        }
                    }
                    if (!bitSet4.isEmpty()) {
                        abstractC8028k40.a(h53, bitSet4);
                    }
                    c8659ns0.d();
                }
            }
            bitSet = null;
            c8659ns0.d();
            c8659ns0.b("Compute non-null-param-on-normal-exits");
            Set c112 = AbstractC5513Ll0.c();
            c112.addAll(c7215fB.f());
            C6993dt c6993dt22 = new C6993dt(c7215fB, 2);
            d11 = c7215fB.d();
            bitSet2 = new BitSet();
            if (bitSet != null) {
            }
            while (i11 < d11.size()) {
            }
            if (!bitSet2.isEmpty()) {
            }
            c8659ns0.d();
            c8659ns0.b("Compute parameters with bitwise operations");
            bitSet3 = new BitSet(h52.C().size());
            AE H102 = c7215fB.k().H();
            while (v10 != null) {
            }
            if (bitSet3.isEmpty()) {
            }
            c8659ns0.d();
            c8659ns0.b("Compute unused arguments");
            C4516j1 d172 = h52.d();
            bitSet4 = new BitSet(d172.getReference().a(d172.w0()));
            AE H112 = c7215fB.k().H();
            while (v11 != null) {
            }
            if (!bitSet4.isEmpty()) {
            }
            c8659ns0.d();
        }
        ud2 = null;
        this.f49539r.a(h52.getHolder(), abstractC5461Ko0);
        if (this.f49522a.E().a0().a()) {
        }
        vw = this.f49546y;
        j10 = this.f49543v;
        vw.getClass();
        d10 = h52.d();
        c8659ns0.b("Identify bridge info");
        abstractC8028k40.a(h52, L7.a(h52.d(), c7215fB));
        c8659ns0.d();
        c8659ns0.b("Identify returns argument");
        j11 = c7215fB.j();
        if (vw.f45070a.a(j11).a(vw.f45070a, j11)) {
        }
        c8659ns0.d();
        C4724u1 b142 = vw.f45070a.b();
        j12 = c7215fB.j();
        if (j12.getAccessFlags().n()) {
            c7920jS = new C7920jS(c7215fB.k(), 0);
            C8024k3 v122 = c7920jS.next().v();
            if (AbstractC5614Nf.f42661a) {
            }
            a11 = c7920jS.next().a(306783378L);
            if (a11 != null) {
                abstractC8028k40.a(c7215fB.j().d(), new C6249Yf(new C6431aX(c7215fB.j(), 0)));
            }
        }
        if (vw.f45073d.f50609J) {
        }
        c8659ns0.b("Compute enum unboxer method classification");
        if (!vw.f45070a.w()) {
        }
        c8659ns0.d();
        if (vw.f45070a.E().f50606I) {
        }
        c8659ns0.b("Compute dynamic return type");
        if (j10 == null) {
        }
        a22 = null;
        c8659ns0.d();
        if (vw.f45073d.f50615L) {
        }
        c8659ns0.b("Compute instance initializer info");
        if (d10.j1()) {
        }
        c8659ns0.d();
        c8659ns0.b("Compute may have side effects");
        vw.a(abstractC8028k40, d10, c7215fB);
        c8659ns0.d();
        c8659ns0.b("Return value only depends on argument");
        if (vw.f45073d.f50621N) {
            abstractC8028k40.c(d10);
        }
        c8659ns0.d();
        c8659ns0.b("Compute non-null-param-or-throw");
        d10.L0();
        if (d10.f37320m.s() == null) {
        }
        bitSet = null;
        c8659ns0.d();
        c8659ns0.b("Compute non-null-param-on-normal-exits");
        Set c1122 = AbstractC5513Ll0.c();
        c1122.addAll(c7215fB.f());
        C6993dt c6993dt222 = new C6993dt(c7215fB, 2);
        d11 = c7215fB.d();
        bitSet2 = new BitSet();
        if (bitSet != null) {
        }
        while (i11 < d11.size()) {
        }
        if (!bitSet2.isEmpty()) {
        }
        c8659ns0.d();
        c8659ns0.b("Compute parameters with bitwise operations");
        bitSet3 = new BitSet(h52.C().size());
        AE H1022 = c7215fB.k().H();
        while (v10 != null) {
        }
        if (bitSet3.isEmpty()) {
        }
        c8659ns0.d();
        c8659ns0.b("Compute unused arguments");
        C4516j1 d1722 = h52.d();
        bitSet4 = new BitSet(d1722.getReference().a(d1722.w0()));
        AE H1122 = c7215fB.k().H();
        while (v11 != null) {
        }
        if (!bitSet4.isEmpty()) {
        }
        c8659ns0.d();
    }

    public final void a(C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, C9875v8 c9875v8, C8659ns0 c8659ns0, String str) {
        if (this.f49531j.f50599F1.f50867d) {
            C7215fB a10 = a(a(c7215fB, new C9257rT(), "indirect phis", c8659ns0), new C8034k60(), "inline phis", c8659ns0);
            AE o10 = c7215fB.o();
            AE o11 = a10.o();
            while (o10.hasNext() && o11.hasNext()) {
                AbstractC10561zE next = o10.next();
                AbstractC10561zE next2 = o11.next();
                C9374s8 c9374s8 = (C9374s8) c9875v8.f53018a.remove(next);
                if (c9374s8 != null) {
                    c9875v8.f53018a.put(next2, c9374s8);
                }
            }
            if (!f49514H && (o10.hasNext() || o11.hasNext())) {
                throw new AssertionError();
            }
            c7215fB = a10;
        }
        c7215fB.j().a(c7215fB.f47895b.a(this.f49522a, this.f49545x).a(c7215fB, c9875v8, c8659ns0, str), this.f49522a);
        com.android.tools.r8.ir.optimize.W w10 = this.f49535n;
        abstractC8028k40.a(c7215fB.j().d(), w10 != null ? w10.a(c7215fB) : com.android.tools.r8.ir.optimize.O.f54786c);
        a(c7215fB.j(), "After finalization", this.f49531j);
    }

    public final C7215fB a(C7215fB c7215fB, AbstractC9591tT abstractC9591tT, String str, C8659ns0 c8659ns0) {
        c8659ns0.b("IR->LIR (" + str + ")");
        WS a10 = UA.a(C9875v8.b(), c7215fB, this.f49522a.E(), abstractC9591tT.a());
        c8659ns0.d();
        a10.getClass();
        String j10 = new C7922jT(a10).j();
        if (!f49514H && j10.isEmpty()) {
            throw new AssertionError();
        }
        c8659ns0.b("LIR->IR (" + str + ")");
        C7215fB a11 = HS.a(c7215fB.j(), a10, abstractC9591tT.a(a10, new C10523z10()), this.f49522a, null, com.android.tools.r8.graph.proto.j.f37620d, c7215fB.f47895b);
        c8659ns0.d();
        return a11;
    }

    public static String a(C7215fB c7215fB, String str, String str2, C8570nJ c8570nJ) {
        if (!c8570nJ.f50583A0.isEmpty()) {
            if (c8570nJ.f50583A0.contains(c7215fB.v().getReference().j0())) {
                String c7215fB2 = c7215fB.toString();
                PrintStream printStream = System.out;
                printStream.println();
                printStream.println("-----------------------------------------------------------------------");
                printStream.println(str);
                printStream.println("-----------------------------------------------------------------------");
                if (str2 != null && str2.equals(c7215fB2)) {
                    printStream.println("Unchanged");
                } else {
                    printStream.println(c7215fB2);
                }
                printStream.println("-----------------------------------------------------------------------");
                return c7215fB2;
            }
        }
        return str2;
    }

    public static void a(com.android.tools.r8.graph.H5 h52, String str, C8570nJ c8570nJ) {
        if (c8570nJ.f50583A0.size() <= 0 || !c8570nJ.f50583A0.contains(h52.getReference().j0())) {
            return;
        }
        String M02 = h52.d().M0();
        PrintStream printStream = System.out;
        printStream.println();
        printStream.println("-----------------------------------------------------------------------");
        printStream.println(str);
        printStream.println("-----------------------------------------------------------------------");
        printStream.println(M02);
        printStream.println("-----------------------------------------------------------------------");
    }

    public final void a(final com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f49514H;
        if (!z10 && !this.f49522a.m()) {
            throw new AssertionError();
        }
        if (!z10 && h52.getHolder().b(h52.getReference()) != null) {
            throw new AssertionError();
        }
        C4798y c4798y = this.f49522a;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C8048kB.a(com.android.tools.r8.graph.H5.this, (C8191l3) obj);
            }
        };
        C8191l3 c8191l3 = c4798y.f38386A;
        if (c8191l3 != null) {
            interfaceC6160Wr0.accept(c8191l3);
        }
        this.f49539r.b(h52);
        C5937Sv c5937Sv = this.f49527f;
        if (c5937Sv != null) {
            C6224Xv c6224Xv = c5937Sv.f44334b;
            c6224Xv.getClass();
            if (h52.d().j1()) {
                c6224Xv.f45864h.add(h52.getHolder());
            }
        }
        this.f49540s.getClass();
        this.f49523b.b(h52);
        com.android.tools.r8.ir.optimize.W w10 = this.f49535n;
        if (w10 != null) {
            w10.f54817d.a(w10.f54814a.v(), h52.getReference());
            C10705e0 c10705e0 = w10.f54818e;
            if (!C10705e0.f54860d) {
                if (c10705e0.f54862b.f43368b.containsKey(new C7333fv(C7374g80.f48192a, h52))) {
                    throw new AssertionError();
                }
            } else {
                c10705e0.getClass();
            }
        }
    }
}
