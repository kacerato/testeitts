package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C6382aB {

    public static final boolean f46438D = true;

    public boolean f46445d;

    public final C10523z10 f46453l;

    public final C10523z10 f46454m;

    public final com.android.tools.r8.graph.H5 f46455n;

    public com.android.tools.r8.graph.H5 f46456o;

    public final C4798y f46457p;

    public final AbstractC5308Hz f46458q;

    public final com.android.tools.r8.graph.proto.j f46459r;

    public C10340xw0 f46460s;

    public ArrayList f46461t;

    public InterfaceC8811on0 f46462u;

    public final DG f46442a = new DG();

    public final C9115qd0 f46443b = new C9115qd0();

    public final LinkedList f46444c = new LinkedList();

    public boolean[] f46446e = null;

    public HashSet f46447f = null;

    public final LinkedList f46448g = new LinkedList();

    public final LinkedList f46449h = new LinkedList();

    public W5 f46450i = null;

    public W5 f46451j = null;

    public int f46452k = -1;

    public boolean f46463v = false;

    public C10340xw0 f46464w = null;

    public final ArrayList f46465x = new ArrayList();

    public C6899dH f46466y = null;

    public ArrayList f46467z = null;

    public boolean f46439A = false;

    public boolean f46440B = false;

    public final C8382mB f46441C = new C8382mB();

    public C6382aB(com.android.tools.r8.graph.H5 h52, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, InterfaceC8811on0 interfaceC8811on0, com.android.tools.r8.graph.proto.j jVar, C10523z10 c10523z10) {
        if (!f46438D && c10523z10 == null) {
            throw new AssertionError();
        }
        this.f46455n = h52;
        this.f46457p = c4798y;
        this.f46462u = interfaceC8811on0;
        this.f46458q = abstractC5308Hz;
        this.f46459r = jVar;
        this.f46453l = c10523z10;
        this.f46454m = new C10523z10();
    }

    public static AbstractC8999pu0 a(YV yv) {
        switch (yv) {
            case f45995b:
                return AbstractC8999pu0.f();
            case f45996c:
            case f45997d:
            case f45998e:
            case f45999f:
                return AbstractC8999pu0.k();
            case f46000g:
                return AbstractC8999pu0.j();
            case f46001h:
                return AbstractC8999pu0.l();
            case f46002i:
                return AbstractC8999pu0.i();
            case f46003j:
                return AbstractC8999pu0.o();
            case f46004k:
                return AbstractC8999pu0.q();
            default:
                throw new C5417Jv0("Unexpected member type: " + ((Object) yv));
        }
    }

    public static boolean d(AbstractC10561zE abstractC10561zE) {
        return !abstractC10561zE.k1();
    }

    public final void b(int i10, C4515j0 c4515j0) {
        boolean z10 = f46438D;
        if (!z10 && c4515j0 == null) {
            throw new AssertionError();
        }
        if (c()) {
            if (!z10 && !c()) {
                throw new AssertionError();
            }
            EnumC5592Mw0 a10 = EnumC5592Mw0.a(c4515j0.f37308c);
            W5 w52 = this.f46451j;
            U5 u52 = U5.f44667b;
            C7201f60.a aVar = C7201f60.a.f47868c;
            e(i10);
            C10340xw0 c10340xw0 = (C10340xw0) w52.f45302o.get(Integer.valueOf(i10));
            if (c10340xw0 == null) {
                c10340xw0 = a(i10, w52, u52, a10, aVar);
            }
            if (c10340xw0.s() == c4515j0 && !this.f46451j.f45293f.isEmpty() && this.f46451j.l().b().d() == c10340xw0) {
                return;
            }
            a(this.f46462u.g(), new C7130ej(a(i10, c10340xw0.u(), 1, c4515j0), c10340xw0));
        }
    }

    public final boolean c() {
        return this.f46457p.E().f50690i1 || this.f46455n.getHolder().I1();
    }

    public final void e(T10 t10, int i10, int i11, int i12) {
        boolean z10 = (t10 == T10.f44372h || t10 == T10.f44371g) ? false : true;
        C6161Ws c6161Ws = new C6161Ws(t10, a(i10, z10 ? 2 : 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        if (!f46438D && c6161Ws.o() != z10) {
            throw new AssertionError();
        }
        a(c6161Ws);
    }

    public final void f(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        boolean z11 = (t10 == T10.f44372h || t10 == T10.f44371g) ? false : true;
        C6161Ws c6161Ws = new C6161Ws(t10, a(i10, z11 ? 2 : 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), a(i12));
        if (!z10 && c6161Ws.o() != z11) {
            throw new AssertionError();
        }
        a(c6161Ws);
    }

    public final void g(T10 t10, int i10, int i11, int i12) {
        C7433gY c7433gY = new C7433gY(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        c7433gY.x2();
        if (!f46438D && c7433gY.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c7433gY);
    }

    public final void h(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        C7433gY c7433gY = new C7433gY(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), a(i12));
        c7433gY.x2();
        if (!z10 && c7433gY.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c7433gY);
    }

    public final void i(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !a(t10)) {
            throw new AssertionError();
        }
        A40 a40 = new A40(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        a40.x2();
        if (!z10 && a40.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), a40);
    }

    public final void j(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        A40 a40 = new A40(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), a(i12));
        a40.x2();
        if (!z10 && a40.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), a40);
    }

    public final void k(T10 t10, int i10, int i11, int i12) {
        boolean z10 = (t10 == T10.f44372h || t10 == T10.f44371g) ? false : true;
        C7786if0 c7786if0 = new C7786if0(t10, a(i10, z10 ? 2 : 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        if (!f46438D && c7786if0.o() != z10) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c7786if0);
    }

    public final void l(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        boolean z11 = (t10 == T10.f44372h || t10 == T10.f44371g) ? false : true;
        C7786if0 c7786if0 = new C7786if0(t10, a(i10, z11 ? 2 : 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), a(i12));
        if (!z10 && c7786if0.o() != z11) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c7786if0);
    }

    public final void m(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && t10 == T10.f44372h) {
            throw new AssertionError();
        }
        C5812Qq0 c5812Qq0 = new C5812Qq0(t10, a(i10, 1, D70.a(t10)), a(i12), b(i11, EnumC5592Mw0.a(t10)));
        if (!z10 && c5812Qq0.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c5812Qq0);
    }

    public final void n(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !a(t10)) {
            throw new AssertionError();
        }
        C5686Ol0 c5686Ol0 = new C5686Ol0(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.f42462c));
        if (!z10 && c5686Ol0.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c5686Ol0);
    }

    public final void o(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !a(t10)) {
            throw new AssertionError();
        }
        C5918Sl0 c5918Sl0 = new C5918Sl0(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.f42462c));
        if (!z10 && c5918Sl0.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c5918Sl0);
    }

    public final void p(T10 t10, int i10, int i11, int i12) {
        C5812Qq0 c5812Qq0 = new C5812Qq0(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        if (!f46438D && c5812Qq0.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c5812Qq0);
    }

    public final void q(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !a(t10)) {
            throw new AssertionError();
        }
        C8504mw0 c8504mw0 = new C8504mw0(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.f42462c));
        if (!z10 && c8504mw0.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c8504mw0);
    }

    public final void r(T10 t10, int i10, int i11, int i12) {
        AbstractC10561zE abstractC10561zE;
        boolean z10 = f46438D;
        if (!z10 && !a(t10)) {
            throw new AssertionError();
        }
        C10340xw0 b10 = b(i11, EnumC5592Mw0.a(t10));
        C10340xw0 b11 = b(i12, EnumC5592Mw0.a(t10));
        C10340xw0 a10 = a(i10, 1, D70.a(t10));
        C8570nJ E10 = this.f46457p.E();
        E10.getClass();
        if (E10.c(C2.L) && b11.K()) {
            C9126qh J10 = b11.n().J();
            J10.getClass();
            if (!C9126qh.f51850m && t10 != T10.f44369e && t10 != T10.f44370f) {
                throw new AssertionError();
            }
            if (t10 != T10.f44369e ? J10.v2() == -1 : J10.u2() == -1) {
                abstractC10561zE = new C7019e10(t10, a10, b10);
                if (z10 && abstractC10561zE.o()) {
                    throw new AssertionError();
                }
                a(this.f46462u.g(), abstractC10561zE);
            }
        }
        C7343fy0 c7343fy0 = new C7343fy0(t10, a10, b10, b11);
        c7343fy0.x2();
        abstractC10561zE = c7343fy0;
        if (z10) {
        }
        a(this.f46462u.g(), abstractC10561zE);
    }

    public final void s(T10 t10, int i10, int i11, int i12) {
        AbstractC10561zE abstractC10561zE;
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        C10340xw0 b10 = b(i11, EnumC5592Mw0.a(t10));
        C8570nJ E10 = this.f46457p.E();
        E10.getClass();
        if (E10.c(C2.L) && i12 == -1) {
            abstractC10561zE = new C7019e10(t10, a(i10, 1, D70.a(t10)), b10);
        } else {
            C7343fy0 c7343fy0 = new C7343fy0(t10, a(i10, 1, D70.a(t10)), b10, a(i12));
            c7343fy0.x2();
            abstractC10561zE = c7343fy0;
        }
        if (!z10 && abstractC10561zE.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), abstractC10561zE);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("blocks:\n");
        Iterator<E> it = this.f46449h.iterator();
        while (it.hasNext()) {
            sb2.append(((W5) it.next()).Q());
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final void d(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        C9523t2 c9523t2 = new C9523t2(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), a(i12));
        c9523t2.x2();
        if (!z10 && c9523t2.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c9523t2);
    }

    public static void c(AbstractC10561zE abstractC10561zE) {
        if (!f46438D && abstractC10561zE.j()) {
            throw new AssertionError();
        }
    }

    public final void c(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !a(t10)) {
            throw new AssertionError();
        }
        C9523t2 c9523t2 = new C9523t2(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        c9523t2.x2();
        if (!z10 && c9523t2.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c9523t2);
    }

    public final void e(int i10) {
        if (i10 >= 0) {
            if (this.f46462u.b(i10)) {
                return;
            }
            throw new C5325If("Invalid use of register " + i10);
        }
        throw new C6570bJ("Invalid register");
    }

    public final VA f(int i10) {
        VA va2;
        boolean z10;
        boolean z11 = f46438D;
        if (!z11 && i10 == -1) {
            throw new AssertionError();
        }
        VA va3 = (VA) this.f46442a.get(i10);
        if (va3 != null) {
            return va3;
        }
        if (i10 >= 0) {
            if (i10 >= 0) {
                int c10 = this.f46462u.c(i10);
                boolean[] zArr = this.f46446e;
                if (c10 < zArr.length) {
                    z10 = zArr[c10];
                } else {
                    if (this.f46447f == null) {
                        this.f46447f = new HashSet();
                    }
                    z10 = this.f46447f.contains(Integer.valueOf(c10));
                }
            } else if (i10 == -2) {
                z10 = this.f46445d;
            } else {
                if (!z11 && i10 != -3) {
                    throw new AssertionError();
                }
                z10 = true;
            }
            if (z10) {
                int d10 = this.f46442a.a(i10) ? i10 : ((AG) this.f46442a.c(i10)).d();
                VA va4 = (VA) this.f46442a.get(d10);
                DG dg2 = this.f46442a;
                va2 = new VA(va4.f44996f);
                va2.f44992b = new FH(Collections.singleton(Integer.valueOf(d10)));
                W5 w52 = va2.f44991a;
                w52.f45300m++;
                w52.f45299l++;
                FH fh2 = va4.f44993c;
                fh2.getClass();
                EH eh2 = new EH(fh2);
                while (eh2.hasNext()) {
                    VA va5 = (VA) dg2.get(eh2.r());
                    va5.f44992b.remove(d10);
                    va5.f44992b.add(i10);
                }
                va2.f44993c = va4.f44993c;
                va4.f44993c = new FH(Collections.singleton(Integer.valueOf(i10)));
                FH fh3 = va2.f44995e;
                fh3.getClass();
                EH eh3 = new EH(fh3);
                while (eh3.hasNext()) {
                    ((VA) dg2.get(eh3.r())).f44994d.add(i10);
                }
                va2.f44995e = new FH((InterfaceC8568nI) va4.f44995e);
                this.f46442a.a(i10, va2);
                this.f46443b.b(i10, va2.f44991a);
                return va2;
            }
        }
        va2 = new VA(this);
        this.f46442a.a(i10, va2);
        this.f46443b.b(i10, va2.f44991a);
        return va2;
    }

    public static C6382aB a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, InterfaceC8811on0 interfaceC8811on0) {
        AbstractC5308Hz a10 = h52.d().Q0().a(c4798y);
        return new C6382aB(h52, c4798y, a10, interfaceC8811on0, c4798y.v().f(a10, h52.getReference()), new C10523z10());
    }

    public final void d(int i10) {
        EnumC5592Mw0 a10;
        com.android.tools.r8.graph.proto.k kVar;
        com.android.tools.r8.graph.M2 u12 = this.f46455n.d().u1();
        if (u12.S0()) {
            if (!f46438D && ((kVar = this.f46459r.f37624c) == null || !kVar.f37628d.S0())) {
                throw new AssertionError();
            }
            a();
            return;
        }
        if (this.f46459r.b()) {
            a10 = EnumC5592Mw0.a(this.f46459r.f37624c.f());
        } else {
            a10 = EnumC5592Mw0.a((char) u12.f36592f.f36562f[0]);
        }
        AbstractC9408sL c10471yk0 = new C10471yk0(b(i10, a10));
        b(c10471yk0);
        this.f46462u.a(this);
        a(c10471yk0);
    }

    public final void c(int i10) {
        C8854p10 b10;
        AbstractC8999pu0 a10;
        NJ a02 = this.f46451j.l().b().a0();
        boolean z10 = f46438D;
        if (!z10 && a02.d() != null) {
            throw new AssertionError();
        }
        if (!z10) {
            a02.getClass();
        }
        com.android.tools.r8.graph.M2 v22 = a02.v2();
        if (!a02.a2() && !(a02 instanceof XJ)) {
            b10 = C8854p10.h();
        } else {
            b10 = C8854p10.b();
        }
        if (a02 instanceof OJ) {
            a10 = a02.a(this.f46457p);
        } else {
            a10 = AbstractC8999pu0.a(v22, b10, (C4798y<?>) this.f46457p);
        }
        a02.d(a(i10, 2, a10));
    }

    public final void a(int i10, C4516j1 c4516j1, BiConsumer biConsumer) {
        int i11;
        com.android.tools.r8.graph.M2 a10;
        AbstractC8999pu0 abstractC8999pu0;
        com.android.tools.r8.graph.proto.c cVar = this.f46459r.f37623b;
        if (c4516j1.w0()) {
            i11 = 0;
        } else {
            if (!f46438D && cVar.b(0) != 0) {
                throw new AssertionError();
            }
            biConsumer.accept(Integer.valueOf(i10), c4516j1.B0());
            com.android.tools.r8.graph.H5 h52 = this.f46456o;
            C10340xw0 a11 = a(i10, AbstractC8999pu0.a(this.f46455n.p(), (h52 == null || h52 == this.f46455n) ? C8854p10.b() : C8854p10.h(), (C4798y<?>) this.f46457p), 1, c() ? this.f46462u.d(i10) : null);
            a(this.f46462u.g(), new C8024k3(a11, this.f46451j.f45293f.size(), false));
            this.f46460s = a11;
            boolean z10 = C10340xw0.f53884o;
            if (!z10 && !a11.H()) {
                throw new AssertionError();
            }
            if (!z10 && a11.f53893j) {
                throw new AssertionError();
            }
            a11.f53893j = true;
            i10++;
            i11 = 1;
        }
        int a12 = ((com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, cVar.f37604a) + c4516j1.V0().size()) + (!c4516j1.w0())) - this.f46459r.f37622a.size();
        int i12 = 0;
        while (i11 < a12) {
            com.android.tools.r8.graph.proto.b a13 = cVar.a(i11);
            if (a13.c()) {
                com.android.tools.r8.graph.proto.g a14 = a13.a();
                biConsumer.accept(Integer.valueOf(i10), a14.e());
                abstractC8999pu0 = AbstractC8999pu0.a(a14.e(), C8854p10.h(), (C4798y<?>) this.f46457p);
                a(i10, abstractC8999pu0);
                i12++;
            } else {
                int a15 = cVar.f37606c.a(i11 - i12);
                if (a13 instanceof com.android.tools.r8.graph.proto.k) {
                    com.android.tools.r8.graph.proto.k b10 = a13.b();
                    if (!f46438D && c4516j1.getReference().a(a15, c4516j1.w0()) != b10.e()) {
                        throw new AssertionError();
                    }
                    a10 = b10.f();
                } else {
                    a10 = c4516j1.getReference().a(a15, c4516j1.w0());
                }
                biConsumer.accept(Integer.valueOf(i10), a10);
                AbstractC8999pu0 a16 = AbstractC8999pu0.a(a10, C8854p10.h(), (C4798y<?>) this.f46457p);
                if (a10.F0()) {
                    C8024k3 c8024k3 = new C8024k3(a(i10, AbstractC8999pu0.k(), 1, c() ? this.f46462u.d(i10) : null), this.f46451j.f45293f.size(), true);
                    if (this.f46461t == null) {
                        this.f46461t = new ArrayList();
                    }
                    a(this.f46462u.g(), c8024k3);
                    this.f46461t.add(c8024k3.d());
                } else {
                    a(i10, a16);
                }
                abstractC8999pu0 = a16;
            }
            i11++;
            i10 += abstractC8999pu0.C();
        }
        for (AbstractC4952Bv abstractC4952Bv : this.f46459r.f37622a) {
            com.android.tools.r8.graph.M2 a17 = c4516j1.getReference().a(cVar.f37606c.a(i11 - i12), c4516j1.w0());
            if (abstractC4952Bv.a()) {
                C8024k3 c8024k32 = new C8024k3(new C10340xw0(this.f46453l.a(), a17.Q0() ? AbstractC8999pu0.m() : a17.b(this.f46457p), null), this.f46451j.f45293f.size(), false);
                if (this.f46461t == null) {
                    this.f46461t = new ArrayList();
                }
                a(this.f46462u.g(), c8024k32);
                this.f46461t.add(c8024k32.d());
            } else {
                a(i10, abstractC4952Bv.a(this.f46457p, a17));
            }
            i11++;
            i10 += a17.B0();
        }
    }

    public final void b(T10 t10, int i10, int i11, int i12) {
        boolean z10 = f46438D;
        if (!z10 && !b(t10)) {
            throw new AssertionError();
        }
        C6855d2 a10 = C6855d2.a(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), a(i12));
        if (!z10 && a10.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), a10);
    }

    public final void b(YV yv, int i10, int i11, int i12) {
        T3 a10 = T3.a(yv, b(i11, EnumC5592Mw0.f42461b), b(i12, EnumC5592Mw0.f42462c), b(i10, EnumC5592Mw0.a(yv)));
        if (!yv.a()) {
            if (this.f46467z == null) {
                this.f46467z = new ArrayList();
            }
            this.f46467z.add(a10);
        }
        a(a10);
    }

    public final void b(int i10, int i11, C4554l1 c4554l1) {
        a(new C9225rE(c4554l1, b(i11, EnumC5592Mw0.f42461b), b(i10, EnumC5592Mw0.a(c4554l1.f37449i)), false));
    }

    public final void b(int i10) {
        boolean z10 = f46438D;
        if (!z10 && this.f46451j.u().isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f46451j.u().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6382aB.a((W5) obj);
            }
        })) {
            throw new AssertionError();
        }
        C10340xw0 b10 = b(i10, EnumC5592Mw0.f42461b);
        if (z10) {
            return;
        }
        if (!b10.j()) {
            if (z10) {
                return;
            }
            AbstractC10561zE abstractC10561zE = b10.f53886c;
            abstractC10561zE.getClass();
            if (!(abstractC10561zE instanceof C6600bY)) {
                throw new AssertionError();
            }
            return;
        }
        for (C10340xw0 c10340xw0 : b10.l().c0()) {
            if (!f46438D) {
                AbstractC10561zE abstractC10561zE2 = c10340xw0.f53886c;
                abstractC10561zE2.getClass();
                if (!(abstractC10561zE2 instanceof C6600bY)) {
                    throw new AssertionError();
                }
            }
        }
    }

    public final void b(int i10, C4554l1 c4554l1) {
        a(new C5634No0(c4554l1, b(i10, EnumC5592Mw0.a(c4554l1.f37449i))));
    }

    public final void b(T10 t10, int i10, int i11) {
        C10340xw0 d10;
        AbstractC10561zE abstractC10561zE;
        C10340xw0 b10 = b(i11, EnumC5592Mw0.a(t10));
        C10340xw0 a10 = a(i10, 1, D70.a(t10));
        C8570nJ E10 = this.f46457p.E();
        E10.getClass();
        if (E10.c(C2.L)) {
            abstractC10561zE = new C7019e10(t10, a10, b10);
        } else {
            EnumC5592Mw0 a11 = EnumC5592Mw0.a(t10);
            if (a11 == EnumC5592Mw0.f42462c) {
                d10 = a(-1L);
            } else {
                if (!f46438D && a11 != EnumC5592Mw0.f42466g) {
                    throw new AssertionError();
                }
                C9126qh c9126qh = new C9126qh(new C10340xw0(this.f46453l.a(), AbstractC8999pu0.l(), null), -1L);
                a(c9126qh);
                d10 = c9126qh.d();
            }
            C7343fy0 c7343fy0 = new C7343fy0(t10, a10, b10, d10);
            c7343fy0.x2();
            abstractC10561zE = c7343fy0;
        }
        if (!f46438D && abstractC10561zE.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), abstractC10561zE);
    }

    public final C10340xw0 b(int i10, EnumC5592Mw0 enumC5592Mw0) {
        Set unmodifiableSet;
        AbstractC10561zE abstractC10561zE;
        C4515j0 e10 = c() ? this.f46462u.e(i10) : null;
        W5 w52 = this.f46451j;
        U5 u52 = U5.f44667b;
        C7201f60.a aVar = C7201f60.a.f47867b;
        e(i10);
        C10340xw0 c10340xw0 = (C10340xw0) w52.f45302o.get(Integer.valueOf(i10));
        if (c10340xw0 == null) {
            c10340xw0 = a(i10, w52, u52, enumC5592Mw0, aVar);
        }
        if (e10 != null && c10340xw0.s() != e10 && ((abstractC10561zE = c10340xw0.f53886c) == null || !(abstractC10561zE instanceof C6964dj))) {
            throw new IJ("Attempt to read local " + ((Object) e10) + " but no local information was associated with the value being read.");
        }
        if (!f46438D && c10340xw0.z()) {
            C10006vw0 c10006vw0 = c10340xw0.f53895l;
            if (c10006vw0 == null) {
                unmodifiableSet = Collections.EMPTY_SET;
            } else {
                unmodifiableSet = Collections.unmodifiableSet(c10006vw0.f53378b);
            }
            if (unmodifiableSet == null) {
                InterfaceC8811on0 interfaceC8811on0 = this.f46462u;
                c10340xw0.s();
                if (!interfaceC8811on0.c()) {
                    throw new AssertionError();
                }
            }
        }
        c10340xw0.a(enumC5592Mw0, this.f46455n, this.f46457p.E().f50691j);
        c10340xw0.S();
        return c10340xw0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x0290, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0040, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, EW.a aVar) {
        W5 w52;
        boolean contains;
        boolean contains2;
        if (!f46438D && this.f46462u == null) {
            throw new AssertionError();
        }
        this.f46462u.d();
        this.f46456o = h52;
        VA va2 = new VA(this);
        this.f46442a.a(-1, va2);
        this.f46443b.b(-1, va2.f44991a);
        int f10 = this.f46462u.f();
        this.f46446e = new boolean[f10];
        int i10 = 0;
        this.f46444c.add(0);
        while (true) {
            if (!this.f46444c.isEmpty()) {
                int intValue = ((Integer) this.f46444c.remove()).intValue();
                if (intValue == -2 || intValue == -3) {
                    if (!f46438D && intValue != -2) {
                        throw new AssertionError();
                    }
                    if (!this.f46445d) {
                        this.f46445d = true;
                        a(-2, -3, true);
                        a(-2, -2, false);
                    }
                } else {
                    int c10 = this.f46462u.c(intValue);
                    boolean[] zArr = this.f46446e;
                    if (c10 < zArr.length) {
                        contains = zArr[c10];
                    } else {
                        if (this.f46447f == null) {
                            this.f46447f = new HashSet();
                        }
                        contains = this.f46447f.contains(Integer.valueOf(c10));
                    }
                    if (contains) {
                        continue;
                    } else {
                        while (true) {
                            if (c10 >= f10) {
                                break;
                            }
                            if (!f46438D) {
                                boolean[] zArr2 = this.f46446e;
                                if (c10 < zArr2.length) {
                                    contains2 = zArr2[c10];
                                } else {
                                    if (this.f46447f == null) {
                                        this.f46447f = new HashSet();
                                    }
                                    contains2 = this.f46447f.contains(Integer.valueOf(c10));
                                }
                                if (contains2) {
                                    throw new AssertionError();
                                }
                            }
                            boolean[] zArr3 = this.f46446e;
                            if (c10 < zArr3.length) {
                                zArr3[c10] = true;
                            } else {
                                if (this.f46447f == null) {
                                    this.f46447f = new HashSet();
                                }
                                this.f46447f.add(Integer.valueOf(c10));
                            }
                            int a10 = this.f46462u.a(c10, this);
                            if (a10 != -1) {
                                int i11 = a10 + 1;
                                if (i11 < f10) {
                                    f(this.f46462u.g(i11));
                                }
                            } else {
                                c10++;
                                if (c10 < f10) {
                                    int g10 = this.f46462u.g(c10);
                                    if (this.f46442a.get(g10) != null) {
                                        a(intValue, g10, true);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                this.f46446e = null;
                W5 w53 = ((VA) this.f46442a.get(-1)).f44991a;
                this.f46451j = w53;
                this.f46450i = w53;
                this.f46462u.b(this);
                a(this.f46451j, 0);
                while (true) {
                    ZA za2 = (ZA) this.f46448g.poll();
                    if (za2 != null) {
                        if (!za2.f46187a.f45296i) {
                            if (!f46438D && !this.f46465x.isEmpty()) {
                                throw new AssertionError();
                            }
                            W5 w54 = za2.f46187a;
                            this.f46451j = w54;
                            this.f46449h.add(w54);
                            this.f46451j.d(this.f46454m.a());
                            if (za2 instanceof WA) {
                                WA wa2 = (WA) za2;
                                int c11 = this.f46462u.c(wa2.f45331f);
                                int f11 = this.f46462u.f(c11);
                                B60 a11 = this.f46462u.a(wa2.f45331f);
                                if (f11 >= 0) {
                                    C6600bY c6600bY = new C6600bY(a(f11, AbstractC8999pu0.a(wa2.f45329d, C8854p10.b(), (C4798y<?>) this.f46457p), 1, (C4515j0) null), wa2.f45329d, this.f46457p.E());
                                    c6600bY.b(a11);
                                    this.f46451j.a(c6600bY, this.f46441C);
                                }
                                this.f46462u.a(this, wa2.f45330e, wa2.f45331f, true);
                                W5 w55 = ((VA) this.f46442a.get(wa2.f45331f)).f44991a;
                                this.f46451j.g(w55);
                                a(a11, new C4960Bz());
                                a(w55, c11);
                                b();
                            } else {
                                if (za2 instanceof XA) {
                                    XA xa2 = (XA) za2;
                                    this.f46462u.a(this, xa2.f45633d, xa2.f45634e, false);
                                    if (za2.f46188b == -1) {
                                        a(xa2.f45635f, new C4960Bz());
                                        b();
                                    } else if (!this.f46465x.isEmpty()) {
                                        a(this.f46462u.g(), new C6797cj());
                                    }
                                }
                                int f12 = this.f46462u.f();
                                int i12 = za2.f46188b;
                                while (true) {
                                    if (i12 < f12 && this.f46451j != null) {
                                        int g11 = this.f46462u.g(i12);
                                        VA va3 = (VA) this.f46442a.get(g11);
                                        if (va3 != null && (w52 = va3.f44991a) != this.f46451j) {
                                            a(w52, i12);
                                            W5 w56 = va3.f44991a;
                                            boolean z10 = f46438D;
                                            if (!z10 && this.f46451j == null) {
                                                throw new AssertionError();
                                            }
                                            if (!z10 && this.f46451j.b(w56)) {
                                                throw new AssertionError();
                                            }
                                            this.f46451j.g(w56);
                                            a((AbstractC9408sL) new C4960Bz());
                                        } else {
                                            this.f46452k = g11;
                                            this.f46462u.a(this, i12, i12 == za2.f46188b);
                                            i12++;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        boolean z11 = f46438D;
                        if (!z11 && this.f46451j != null) {
                            throw new AssertionError();
                        }
                        if (!z11) {
                            Iterator<E> it = this.f46449h.iterator();
                            while (it.hasNext()) {
                                W5 w57 = (W5) it.next();
                                boolean z12 = f46438D;
                                if (!z12) {
                                    if (!z12) {
                                        boolean z13 = W5.f45287q;
                                        if (!z13 && w57.f45299l != w57.f45290c.size()) {
                                            throw new AssertionError();
                                        }
                                        if (!z13) {
                                            if (w57.f45300m != 0) {
                                                throw new AssertionError();
                                            }
                                        } else {
                                            w57.getClass();
                                        }
                                    }
                                    CG cg2 = new CG(((C8731oG) this.f46442a.values()).f51202b);
                                    while (true) {
                                        if (!cg2.hasNext()) {
                                            break;
                                        }
                                        VA va4 = (VA) cg2.a().f44051c;
                                        if (va4 != null && va4.f44991a == w57) {
                                            if (!f46438D) {
                                                int i13 = va4.f44992b.f40170c + va4.f44994d.f40170c;
                                                Set c12 = AbstractC5513Ll0.c();
                                                for (W5 w58 : w57.u()) {
                                                    if (this.f46443b.containsKey(w58)) {
                                                        c12.add(w58);
                                                    } else {
                                                        boolean z14 = f46438D;
                                                        if (!z14 && w58.v().size() != 1) {
                                                            throw new AssertionError();
                                                        }
                                                        if (!z14 && w58.u().size() != 1) {
                                                            throw new AssertionError();
                                                        }
                                                        if (!z14) {
                                                            Y5 it2 = w58.l().iterator();
                                                            while (it2.hasNext()) {
                                                                AbstractC10561zE next = it2.next();
                                                                if (!f46438D) {
                                                                    next.getClass();
                                                                    if (!(next instanceof C6600bY) && !next.G1() && !next.A1()) {
                                                                        throw new AssertionError();
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        if (w58.u().get(0).b(w58)) {
                                                            c12.add(w58.u().get(0));
                                                        } else {
                                                            c12.add(w58);
                                                        }
                                                    }
                                                }
                                                if (i13 != c12.size()) {
                                                    throw new AssertionError();
                                                }
                                            }
                                            boolean z15 = f46438D;
                                            if (!z15 && va4.f44993c.f40170c != w57.p().size()) {
                                                throw new AssertionError();
                                            }
                                            if (!w57.z() && !z15 && w57.a() && !va4.f44995e.isEmpty()) {
                                                FH fh2 = va4.f44995e;
                                                if (fh2.f40170c != 1 || new EH(fh2).r() >= 0) {
                                                    throw new AssertionError();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (c()) {
                            Iterator<E> it3 = this.f46449h.iterator();
                            while (it3.hasNext()) {
                                Y5 I10 = ((W5) it3.next()).I();
                                B60 b60 = null;
                                while (I10.hasNext()) {
                                    AbstractC10561zE next2 = I10.next();
                                    B60 position = next2.getPosition();
                                    if (!next2.k1()) {
                                        if (next2 instanceof C6600bY) {
                                            if (!f46438D && b60 != null) {
                                                throw new AssertionError();
                                            }
                                        } else if (next2 instanceof C7631hj) {
                                            position.getClass();
                                            if (InterfaceC7166ev.a(position, b60)) {
                                                I10.i();
                                            }
                                        } else if (!position.o() && !(position instanceof B60.c) && !InterfaceC7166ev.a(position, b60)) {
                                            C7631hj c7631hj = new C7631hj();
                                            c7631hj.b(position);
                                            I10.previous();
                                            I10.add(c7631hj);
                                            I10.next();
                                        }
                                        b60 = position;
                                    }
                                }
                            }
                        }
                        if (this.f46466y != null) {
                            B60 t10 = this.f46450i.t();
                            Y5 I11 = this.f46450i.I();
                            I11.a(new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    return C6382aB.d((AbstractC10561zE) obj);
                                }
                            });
                            I11.previous();
                            C6732cH c6732cH = new C6732cH(((VG) this.f46466y.values()).f45009b);
                            while (c6732cH.hasNext()) {
                                for (C10340xw0 c10340xw0 : (List) c6732cH.f47013h.f47341c[c6732cH.a()]) {
                                    if (c10340xw0.P()) {
                                        C6964dj c6964dj = new C6964dj(c10340xw0);
                                        c6964dj.b(t10);
                                        I11.add(c6964dj);
                                    }
                                }
                            }
                        }
                        Iterator<E> it4 = this.f46449h.iterator();
                        while (it4.hasNext()) {
                            W5 w59 = (W5) it4.next();
                            w59.f45302o = null;
                            Iterator<C7201f60> it5 = w59.s().iterator();
                            while (it5.hasNext()) {
                                it5.next().f47866t = null;
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        Iterator<E> it6 = this.f46449h.iterator();
                        while (it6.hasNext()) {
                            W5 w510 = (W5) it6.next();
                            if (w510.f45298k.isEmpty()) {
                                if (!(w510.f45293f.a() instanceof C6600bY)) {
                                    ArrayList arrayList2 = new ArrayList();
                                    HashMap hashMap = new HashMap();
                                    HashMap hashMap2 = new HashMap();
                                    if (w510.s().size() > 0) {
                                        C7201f60 c7201f60 = w510.s().get(i10);
                                        for (int i14 = i10; i14 < c7201f60.c0().size(); i14++) {
                                            List<C7201f60> s10 = w510.s();
                                            YA ya2 = new YA();
                                            Iterator<C7201f60> it7 = s10.iterator();
                                            while (it7.hasNext()) {
                                                ya2.f45950a.add((C10340xw0) it7.next().f47863q.get(i14));
                                            }
                                            W5 w511 = w510.u().get(i14);
                                            if (hashMap.containsKey(ya2)) {
                                                Integer num = (Integer) hashMap.get(ya2);
                                                int intValue2 = num.intValue();
                                                W5 w512 = (W5) hashMap2.get(num);
                                                if (w512 == null) {
                                                    w512 = W5.a(this.f46454m.a(), w510.t(), this.f46441C, w510);
                                                    hashMap2.put(num, w512);
                                                    arrayList.add(w512);
                                                    W5 w513 = w510.u().get(intValue2);
                                                    w512.m().add(w513);
                                                    w513.b(w510, w512);
                                                    w510.m().set(intValue2, w512);
                                                }
                                                w512.m().add(w511);
                                                w511.b(w510, w512);
                                                arrayList2.add(Integer.valueOf(i14));
                                            } else {
                                                hashMap.put(ya2, Integer.valueOf(i14));
                                            }
                                        }
                                    }
                                    if (!arrayList2.isEmpty()) {
                                        List<W5> m10 = w510.m();
                                        ArrayList arrayList3 = new ArrayList(m10);
                                        m10.clear();
                                        int size = arrayList2.size();
                                        int i15 = 0;
                                        int i16 = 0;
                                        while (i15 < size) {
                                            Object obj = arrayList2.get(i15);
                                            i15++;
                                            int intValue3 = ((Integer) obj).intValue();
                                            m10.addAll(arrayList3.subList(i16, intValue3));
                                            i16 = intValue3 + 1;
                                        }
                                        m10.addAll(arrayList3.subList(i16, arrayList3.size()));
                                    }
                                    w510.a((List) arrayList2);
                                    i10 = 0;
                                }
                            } else {
                                throw new C5325If("Undefined value encountered during compilation. This is typically caused by invalid dex input that uses a register that is not defined on all control-flow paths leading to the use.");
                            }
                        }
                        this.f46449h.addAll(arrayList);
                        C7215fB c7215fB = new C7215fB(this.f46457p.E(), this.f46455n, this.f46462u.a(0), this.f46449h, this.f46453l, this.f46454m, this.f46441C, aVar);
                        if (!f46438D) {
                            Iterator<W5> it8 = c7215fB.f47897d.iterator();
                            while (it8.hasNext()) {
                                W5 next3 = it8.next();
                                List<W5> u10 = next3.u();
                                if (u10.size() > 1) {
                                    for (W5 w514 : u10) {
                                        boolean z16 = C7215fB.f47893k;
                                        if (!z16) {
                                            if (!(w514.f45289b.size() == 1 && w514.i().G1())) {
                                                throw new AssertionError();
                                            }
                                        }
                                        if (!z16 && w514.v().get(0) != next3) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                                if (next3.z()) {
                                    for (W5 w515 : next3.j().a()) {
                                        boolean z17 = C7215fB.f47893k;
                                        if (!z17 && w515.u().size() != 1) {
                                            throw new AssertionError();
                                        }
                                        if (!z17 && w515.u().get(0) != next3) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                            }
                        }
                        Iterator<E> it9 = this.f46449h.iterator();
                        while (it9.hasNext()) {
                            ((W5) it9.next()).e();
                        }
                        c7215fB.a(this, (C10696a) null);
                        c7215fB.a(new C10696a(), C6628bi.b());
                        if (!this.f46439A && this.f46467z == null) {
                            if ((!this.f46457p.m() && this.f46462u.a()) && !this.f46440B) {
                                boolean z18 = f46438D;
                                if (!z18) {
                                    if (!(!this.f46457p.m() && this.f46462u.a()) || this.f46440B) {
                                        throw new AssertionError();
                                    }
                                }
                                if (!z18) {
                                    a(c7215fB);
                                }
                                new C8331lu0(this.f46457p, c7215fB, false).b();
                            } else {
                                new C8331lu0(this.f46457p, c7215fB, false).c();
                            }
                        } else {
                            if (!f46438D && !(this.f46462u instanceof C8157ks)) {
                                throw new AssertionError();
                            }
                            C8832ou0 c8832ou0 = new C8832ou0(this.f46457p, this);
                            ArrayList arrayList4 = this.f46467z;
                            ArrayList arrayList5 = new ArrayList();
                            Iterator<W5> it10 = c7215fB.f47897d.iterator();
                            while (it10.hasNext()) {
                                W5 next4 = it10.next();
                                for (C7201f60 c7201f602 : next4.s()) {
                                    if (!c7201f602.u().w()) {
                                        arrayList5.add(c7201f602);
                                    }
                                    Iterator<C10340xw0> it11 = c7201f602.c0().iterator();
                                    while (it11.hasNext()) {
                                        c8832ou0.a(c8832ou0.a(c7201f602), c8832ou0.a(it11.next()));
                                    }
                                }
                                Y5 it12 = next4.l().iterator();
                                while (it12.hasNext()) {
                                    AbstractC10561zE next5 = it12.next();
                                    if (next5.d() != null && !next5.a().w()) {
                                        arrayList5.add(next5.d());
                                    }
                                    if (next5.H1() && next5.f54321f.size() == 2) {
                                        EB V10 = next5.V();
                                        if (!C8832ou0.f51378d && V10.x2()) {
                                            throw new AssertionError();
                                        }
                                        NB nb2 = V10.f39789l;
                                        if (nb2 == NB.f42527b || nb2 == NB.f42532g) {
                                            c8832ou0.a(c8832ou0.a((C10340xw0) V10.f54321f.get(0)), c8832ou0.a((C10340xw0) V10.f54321f.get(1)));
                                        }
                                    }
                                }
                            }
                            ArrayList arrayList6 = new ArrayList(arrayList5.size());
                            int size2 = arrayList5.size();
                            int i17 = 0;
                            while (i17 < size2) {
                                Object obj2 = arrayList5.get(i17);
                                i17++;
                                C10340xw0 c10340xw02 = (C10340xw0) obj2;
                                C6382aB c6382aB = c8832ou0.f51380b;
                                c10340xw02.a(c8832ou0.a(false, c10340xw02), c6382aB.f46455n, c6382aB.f46457p.E().f50691j);
                                if (!c10340xw02.u().w()) {
                                    arrayList6.add(c10340xw02);
                                }
                            }
                            new C8331lu0(c8832ou0.f51379a, c7215fB, true).c();
                            c8832ou0.a(c7215fB, arrayList4, arrayList6);
                        }
                        c7215fB.x();
                        if (!f46438D) {
                            c7215fB.r();
                        }
                        this.f46462u.clear();
                        this.f46462u = null;
                        return c7215fB;
                    }
                }
            }
        }
    }

    public final void b(AbstractC10561zE abstractC10561zE) {
        if (!c()) {
            boolean z10 = f46438D;
            if (!z10 && this.f46464w != null) {
                throw new AssertionError();
            }
            if (!z10 && !this.f46465x.isEmpty()) {
                throw new AssertionError();
            }
            return;
        }
        C10340xw0 c10340xw0 = this.f46464w;
        if (c10340xw0 != null && c10340xw0.s() == abstractC10561zE.q()) {
            if (!f46438D && abstractC10561zE.d() == null) {
                throw new AssertionError();
            }
            this.f46464w.a(abstractC10561zE);
        }
        ArrayList arrayList = this.f46465x;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((C10340xw0) obj).a(abstractC10561zE);
        }
        this.f46464w = null;
        this.f46465x.clear();
    }

    public final void b() {
        boolean z10 = f46438D;
        if (!z10 && this.f46451j == null) {
            throw new AssertionError();
        }
        this.f46451j.a(this);
        this.f46451j = null;
        this.f46463v = false;
        this.f46452k = -1;
        if (!z10 && !this.f46465x.isEmpty()) {
            throw new AssertionError();
        }
    }

    public static boolean b(T10 t10) {
        return (t10 == T10.f44371g || t10 == T10.f44372h || t10 == T10.f44370f) ? false : true;
    }

    public final void a(W5 w52, int i10) {
        if (w52.f45296i) {
            return;
        }
        this.f46448g.add(new ZA(w52, i10));
    }

    public static void a(C7215fB c7215fB) {
        c7215fB.q().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6382aB.c((AbstractC10561zE) obj);
            }
        });
    }

    public static boolean a(W5 w52) {
        AbstractC10561zE a10 = w52.f45293f.a();
        a10.getClass();
        return a10 instanceof C6600bY;
    }

    public final void a(AbstractC10561zE abstractC10561zE) {
        if (!f46438D && abstractC10561zE.U1()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), abstractC10561zE);
    }

    public final void a(int i10, C4515j0 c4515j0) {
        boolean z10 = f46438D;
        if (!z10 && c4515j0 == null) {
            throw new AssertionError();
        }
        if (c()) {
            if (!z10 && !c()) {
                throw new AssertionError();
            }
            EnumC5592Mw0 a10 = EnumC5592Mw0.a(c4515j0.f37308c);
            W5 w52 = this.f46451j;
            U5 u52 = U5.f44667b;
            C7201f60.a aVar = C7201f60.a.f47868c;
            e(i10);
            C10340xw0 c10340xw0 = (C10340xw0) w52.f45302o.get(Integer.valueOf(i10));
            if (c10340xw0 == null) {
                c10340xw0 = a(i10, w52, u52, a10, aVar);
            }
            AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
            if ((abstractC10561zE == null || !(abstractC10561zE instanceof C6964dj)) && c10340xw0.s() == c4515j0) {
                this.f46465x.add(c10340xw0);
            }
        }
    }

    public final void a(B60 b60) {
        if (c()) {
            boolean z10 = f46438D;
            if (!z10 && this.f46464w != null) {
                throw new AssertionError();
            }
            if (!z10) {
                B60 g10 = this.f46462u.g();
                g10.getClass();
                if (!InterfaceC7166ev.a(g10, b60)) {
                    throw new AssertionError();
                }
            }
            if (!this.f46465x.isEmpty()) {
                if (this.f46451j.l().isEmpty()) {
                    a(this.f46462u.g(), new C6797cj());
                } else {
                    if (!z10 && this.f46465x.contains(this.f46451j.l().b().d())) {
                        throw new AssertionError();
                    }
                    b(this.f46451j.l().b());
                }
            }
            a(this.f46462u.g(), new C7631hj());
        }
    }

    public final void a(YV yv, int i10, int i11, int i12) {
        AbstractC8999pu0 a10;
        C10340xw0 b10 = b(i11, EnumC5592Mw0.f42461b);
        C10340xw0 b11 = b(i12, EnumC5592Mw0.f42462c);
        if (yv == YV.f45995b && !this.f46457p.m() && this.f46462u.a()) {
            AbstractC8999pu0 u10 = b10.u();
            u10.getClass();
            if (u10 instanceof C6301Zd0) {
                a10 = AbstractC8999pu0.m();
            } else if (b10.u().r()) {
                a10 = b10.u().a().F();
            } else {
                if (!f46438D) {
                    AbstractC8999pu0 u11 = b10.u();
                    u11.getClass();
                    if (!(u11 instanceof C10540z7) || !this.f46440B) {
                        throw new AssertionError();
                    }
                }
                a10 = a(yv);
            }
        } else {
            a10 = a(yv);
        }
        N3 n32 = new N3(yv, a(i10, 2, a10), b10, b11);
        if (!yv.a()) {
            if (this.f46467z == null) {
                this.f46467z = new ArrayList();
            }
            this.f46467z.add(n32);
        }
        a(n32);
    }

    public final void a(int i10, com.android.tools.r8.graph.M2 m22, boolean z10) {
        C10340xw0 b10 = b(i10, EnumC5592Mw0.f42461b);
        C10340xw0 a10 = a(i10, 2, AbstractC8999pu0.a(m22, b10.u().B(), (C4798y<?>) this.f46457p));
        a(z10 ? new C5800Qk0(a10, b10, m22) : new C7942jc(a10, b10, m22));
    }

    public final void a(AbstractC8999pu0 abstractC8999pu0, int i10, long j10) {
        C9126qh c9126qh = new C9126qh(a(i10, 1, abstractC8999pu0), j10);
        if (!f46438D && c9126qh.o()) {
            throw new AssertionError();
        }
        a(c9126qh);
    }

    public final void a(int i10, com.android.tools.r8.graph.M2 m22) {
        C4798y c4798y = this.f46457p;
        C8854p10 b10 = C8854p10.b();
        boolean z10 = AbstractC8999pu0.f51660a;
        a(new C7957jh(a(i10, 2, AbstractC8999pu0.a(c4798y.b().f38180w2, b10, (C4798y<?>) c4798y).b()), m22, false));
    }

    public final void a(int i10, com.android.tools.r8.graph.C2 c22) {
        if (!f46438D) {
            C8570nJ E10 = this.f46457p.E();
            E10.getClass();
            if (!E10.c(C2.P)) {
                throw new AssertionError();
            }
        }
        a(new C8458mh(a(i10, 2, AbstractC8999pu0.a(this.f46457p.b().f37920O2, C8854p10.b(), (C4798y<?>) this.f46457p)), c22));
    }

    public final void a(int i10, com.android.tools.r8.graph.I2 i22) {
        if (!f46438D) {
            C8570nJ E10 = this.f46457p.E();
            E10.getClass();
            if (!E10.c(C2.P)) {
                throw new AssertionError();
            }
        }
        a(new C8625nh(a(i10, 2, AbstractC8999pu0.a(this.f46457p.b().f37941R2, C8854p10.b(), (C4798y<?>) this.f46457p)), i22));
    }

    public final void a(EnumC5592Mw0 enumC5592Mw0, int i10, int i11) {
        C10340xw0 b10 = b(i11, enumC5592Mw0);
        if (c()) {
            C4515j0 d10 = c() ? this.f46462u.d(i10) : null;
            if (d10 != null && d10 != b10.s()) {
                a(this.f46462u.g(), new C7130ej(a(i10, 1, b10.u()), b10));
                return;
            } else if (!this.f46465x.isEmpty()) {
                a(this.f46462u.g(), new C6797cj());
            }
        }
        this.f46451j.a(i10, b10, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0218, code lost:
    
        if (r2 == com.android.tools.r8.internal.C10340xw0.f53883n) goto L121;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f9  */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.android.tools.r8.internal.f60] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10340xw0 a(int i10, W5 w52, U5 u52, EnumC5592Mw0 enumC5592Mw0, C7201f60.a aVar) {
        U5 u53;
        W5 w53;
        C10340xw0 c10340xw0;
        ArrayList arrayList;
        C7368g60 c7368g60;
        C10340xw0 c10340xw02;
        W5 w54;
        U5 u54;
        C10340xw0 c10340xw03;
        W5 w55 = w52;
        int i11 = 0;
        if (w55.f45297j && w52.u().size() == 1) {
            ArrayList arrayList2 = new ArrayList(this.f46449h.size());
            U5 u55 = u52;
            while (true) {
                if (!f46438D) {
                    boolean z10 = W5.f45287q;
                    if (!z10 && w55.f45299l != w55.f45290c.size()) {
                        throw new AssertionError();
                    }
                    if (!z10 && w55.f45300m != 0) {
                        throw new AssertionError();
                    }
                }
                w54 = w55.u().get(0);
                if (!W5.f45287q && w54.f45289b.indexOf(w55) < 0) {
                    throw new AssertionError();
                }
                u54 = w54.b(w55) ? U5.f44669d : U5.f44668c;
                e(i10);
                c10340xw03 = u54 == U5.f44669d ? (C10340xw0) w54.f45302o.get(Integer.valueOf(-(i10 + 1))) : null;
                if (c10340xw03 != null) {
                    if (c10340xw03 == C10340xw0.f53883n) {
                        c10340xw03 = null;
                    }
                } else {
                    c10340xw03 = (C10340xw0) w54.f45302o.get(Integer.valueOf(i10));
                }
                if (c10340xw03 != null) {
                    w53 = w55;
                    arrayList = arrayList2;
                    c10340xw0 = c10340xw03;
                    u53 = u55;
                    break;
                }
                arrayList2.add(new C8699o50(w55, u55));
                if (!w54.f45297j || w54.u().size() != 1) {
                    break;
                }
                w55 = w54;
                u55 = u54;
            }
            arrayList = arrayList2;
            c10340xw0 = c10340xw03;
            u53 = u54;
            w53 = w54;
        } else {
            u53 = u52;
            w53 = w55;
            c10340xw0 = null;
            arrayList = null;
        }
        if (c10340xw0 != null) {
            r10 = c10340xw0;
        } else if (w53 == this.f46450i && aVar == C7201f60.a.f47868c) {
            if (!f46438D && !w53.u().isEmpty()) {
                throw new AssertionError();
            }
            r10 = a(i10, enumC5592Mw0);
        } else {
            C4515j0 a10 = c() ? this.f46462u.a(i10, this.f46443b.b(w53)) : null;
            AbstractC8999pu0 a11 = C8832ou0.a(enumC5592Mw0);
            this.f46439A |= !a11.w();
            if (!this.f46457p.m() && this.f46462u.a() && !this.f46440B) {
                com.android.tools.r8.graph.M2 a12 = this.f46462u.a(i10, this.f46443b.b(w53), aVar);
                if (a12 != null) {
                    c7368g60 = new C7368g60(this.f46453l.a(), w53, AbstractC8999pu0.a(a12, C8854p10.h(), (C4798y<?>) this.f46457p), a10, aVar);
                    C7368g60 c7201f60 = c7368g60 != null ? new C7201f60(this.f46453l.a(), w53, a11, a10, aVar) : c7368g60;
                    if (w53.f45297j) {
                        int i12 = (u53 == U5.f44669d ? (C10340xw0) w53.f45302o.get(Integer.valueOf(-(i10 + 1))) : null) != null ? -(i10 + 1) : i10;
                        if (!W5.f45287q && w53.f45298k.containsKey(Integer.valueOf(i12))) {
                            throw new AssertionError();
                        }
                        w53.f45298k.put(Integer.valueOf(i12), c7201f60);
                        c10340xw02 = c7201f60;
                    } else {
                        w53.a(i10, c7201f60, u53);
                        c7201f60.a(i10, this);
                        C10340xw0 c10340xw04 = u53 == U5.f44669d ? (C10340xw0) w53.f45302o.get(Integer.valueOf(-(i10 + 1))) : null;
                        if (c10340xw04 != null) {
                            c10340xw02 = c10340xw04;
                        } else {
                            r10 = (C10340xw0) w53.f45302o.get(Integer.valueOf(i10));
                        }
                    }
                    r10 = c10340xw02;
                } else if (aVar != C7201f60.a.f47868c) {
                    if (!f46438D && !this.f46455n.d().P0().b(C5313Ib.f41138i)) {
                        throw new AssertionError();
                    }
                    this.f46440B = true;
                } else {
                    throw new IJ("Information in locals-table is invalid with respect to the stack map table. Local refers to non-present stack map type for register: " + i10 + " with constraint " + ((Object) enumC5592Mw0) + ".");
                }
            }
            c7368g60 = null;
            if (c7368g60 != null) {
            }
            if (w53.f45297j) {
            }
            r10 = c10340xw02;
        }
        if (arrayList != null) {
            int size = arrayList.size();
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                C8699o50 c8699o50 = (C8699o50) obj;
                ((W5) c8699o50.a()).a(i10, r10, (U5) c8699o50.b());
            }
        }
        w53.a(i10, r10, u53);
        return r10;
    }

    public final void a(int i10, int i11, C4554l1 c4554l1) {
        a(this.f46462u.g(), new C6558bE(a(i10, 2, AbstractC8999pu0.a(c4554l1.f37449i, C8854p10.h(), (C4798y<?>) this.f46457p)), b(i11, EnumC5592Mw0.f42461b), c4554l1));
    }

    public final void a(C4554l1[] c4554l1Arr, CH ch2, int i10) {
        if (!f46438D && c4554l1Arr.length != ch2.f39177c) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(ch2.f39177c);
        Iterator o10 = ch2.o(0);
        while (o10.hasNext()) {
            arrayList.add(b(((X) o10).r(), EnumC5592Mw0.f42461b));
        }
        a(new C9278rc0(c4554l1Arr, a(i10, 2, AbstractC8999pu0.a(this.f46457p.b().f38092l2, C8854p10.b(), (C4798y<?>) this.f46457p)), arrayList));
    }

    public final void a(EnumC8071kK enumC8071kK, AbstractC4592n1 abstractC4592n1, com.android.tools.r8.graph.I2 i22, ArrayList arrayList, boolean z10) {
        boolean z11 = f46438D;
        if (!z11 && enumC8071kK == EnumC8071kK.f49587k) {
            if (!z11 && !(abstractC4592n1 instanceof com.android.tools.r8.graph.A2)) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) abstractC4592n1;
            if (a22.f38297f == this.f46457p.b().f37920O2 && !z11) {
                C8570nJ E10 = this.f46457p.E();
                E10.getClass();
                if (!E10.c(C2.O)) {
                    throw new AssertionError();
                }
            }
            if (a22.f38297f == this.f46457p.b().f37913N2 && !z11) {
                C8570nJ E11 = this.f46457p.E();
                E11.getClass();
                if (!E11.c(C2.O)) {
                    throw new AssertionError();
                }
            }
        }
        a(NJ.a(enumC8071kK, abstractC4592n1, i22, null, arrayList, z10));
    }

    public final void a(EnumC8071kK enumC8071kK, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, int i10, int[] iArr) {
        String l02;
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        if (enumC8071kK != EnumC8071kK.f49582f) {
            int i12 = iArr[0];
            EnumC5592Mw0 enumC5592Mw0 = EnumC5592Mw0.f42461b;
            arrayList.add(b(i12, enumC5592Mw0));
            i11 = enumC5592Mw0.a();
        }
        if (enumC8071kK == EnumC8071kK.f49587k) {
            l02 = i22.l0();
        } else {
            l02 = a22.f36127i.l0();
        }
        for (int i13 = 1; i13 < l02.length(); i13++) {
            EnumC5592Mw0 a10 = EnumC5592Mw0.a(l02.charAt(i13));
            arrayList.add(b(iArr[i11], a10));
            i11 += a10.a();
        }
        a(i11, i10);
        if (!f46438D && !this.f46457p.E().P()) {
            throw new AssertionError();
        }
        a(enumC8071kK, (AbstractC4592n1) a22, i22, arrayList, false);
    }

    public final void a(EnumC8071kK enumC8071kK, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, int i10, int i11) {
        int i12;
        String l02;
        ArrayList arrayList = new ArrayList(i10);
        if (enumC8071kK != EnumC8071kK.f49582f) {
            EnumC5592Mw0 enumC5592Mw0 = EnumC5592Mw0.f42461b;
            arrayList.add(b(i11, enumC5592Mw0));
            i12 = enumC5592Mw0.a() + i11;
        } else {
            i12 = i11;
        }
        if (enumC8071kK == EnumC8071kK.f49587k) {
            l02 = i22.l0();
        } else {
            l02 = a22.f36127i.l0();
        }
        for (int i13 = 1; i13 < l02.length(); i13++) {
            EnumC5592Mw0 a10 = EnumC5592Mw0.a(l02.charAt(i13));
            arrayList.add(b(i12, a10));
            i12 += a10.a();
        }
        a(i12, i11 + i10);
        if (!f46438D && !this.f46457p.E().P()) {
            throw new AssertionError();
        }
        a(enumC8071kK, (AbstractC4592n1) a22, i22, arrayList, false);
    }

    public static void a(int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        throw new C5325If("Invalid invoke instruction. Expected use of " + i10 + " argument registers, found actual use of " + i11);
    }

    public final void a() {
        AbstractC9408sL c10471yk0 = new C10471yk0();
        b(c10471yk0);
        this.f46462u.a(this);
        a(c10471yk0);
    }

    public final void a(int i10, C4554l1 c4554l1) {
        a(this.f46462u.g(), new C5576Mo0(c4554l1, a(i10, 2, AbstractC8999pu0.a(c4554l1.f37449i, C8854p10.h(), (C4798y<?>) this.f46457p))));
    }

    public final void a(int i10, int[] iArr, int i11, int[] iArr2) {
        int i12;
        int length = iArr2.length;
        boolean z10 = f46438D;
        if (!z10 && iArr.length != 1 && iArr.length != length) {
            throw new AssertionError();
        }
        if (length == 0) {
            a(i11);
            return;
        }
        C10340xw0 b10 = b(i10, EnumC5592Mw0.f42462c);
        CH ch2 = new CH(length);
        CH ch3 = new CH(length);
        if (iArr.length == 1) {
            int i13 = iArr[0];
            i12 = 0;
            for (int i14 = 0; i14 < length; i14++) {
                if (iArr2[i14] != i11) {
                    ch2.add(i13);
                    ch3.add(iArr2[i14]);
                } else {
                    i12++;
                }
                i13++;
            }
        } else {
            if (!z10 && iArr.length != length) {
                throw new AssertionError();
            }
            i12 = 0;
            for (int i15 = 0; i15 < length; i15++) {
                if (iArr2[i15] != i11) {
                    ch2.add(iArr[i15]);
                    ch3.add(iArr2[i15]);
                } else {
                    i12++;
                }
            }
        }
        W5 w52 = ((VA) this.f46442a.get(i11)).f44991a;
        w52.f45300m -= i12;
        w52.f45299l -= i12;
        if (i12 == length) {
            if (!f46438D && ch2.f39177c != 0) {
                throw new AssertionError();
            }
            a(i11);
            return;
        }
        int[] a10 = ch2.a((int[]) null);
        int[] a11 = ch3.a((int[]) null);
        if (!f46438D && a10.length != a11.length) {
            throw new AssertionError();
        }
        int[] iArr3 = new int[a11.length];
        HashMap hashMap = new HashMap();
        W5 w53 = ((VA) this.f46442a.get(i11)).f44991a;
        this.f46451j.g(w53);
        a(w53, this.f46462u.c(i11));
        int size = this.f46451j.v().size() - 1;
        hashMap.put(Integer.valueOf(i11), Integer.valueOf(size));
        for (int i16 = 0; i16 < a11.length; i16++) {
            int i17 = a11[i16];
            W5 w54 = ((VA) this.f46442a.get(i17)).f44991a;
            Integer num = (Integer) hashMap.get(Integer.valueOf(i17));
            if (num == null) {
                this.f46451j.g(w54);
                a(w54, this.f46462u.c(i17));
                int size2 = this.f46451j.v().size() - 1;
                hashMap.put(Integer.valueOf(i17), Integer.valueOf(size2));
                iArr3[i16] = size2;
            } else {
                w54.d();
                iArr3[i16] = num.intValue();
            }
        }
        a((AbstractC9408sL) new C9569tI(b10, a10, iArr3, size));
    }

    public final C10340xw0 a(int i10, EnumC5592Mw0 enumC5592Mw0) {
        if (!this.f46457p.E().f50701m0) {
            if (!f46438D) {
                enumC5592Mw0.getClass();
                if (enumC5592Mw0 == EnumC5592Mw0.f42464e || enumC5592Mw0 == EnumC5592Mw0.f42468i || enumC5592Mw0 == EnumC5592Mw0.f42465f) {
                    throw new AssertionError();
                }
            }
            enumC5592Mw0.getClass();
            AbstractC8999pu0 m10 = enumC5592Mw0 == EnumC5592Mw0.f42461b ? AbstractC8999pu0.m() : enumC5592Mw0.b();
            if (this.f46466y == null) {
                this.f46466y = new C6899dH(16);
            }
            List<C10340xw0> list = (List) this.f46466y.get(i10);
            if (list != null) {
                for (C10340xw0 c10340xw0 : list) {
                    if (c10340xw0.u() == m10) {
                        return c10340xw0;
                    }
                }
            } else {
                list = new ArrayList(2);
                this.f46466y.a(i10, list);
            }
            C10340xw0 c10340xw02 = new C10340xw0(this.f46453l.a(), m10, null);
            list.add(c10340xw02);
            return c10340xw02;
        }
        throw new IJ("Information in locals-table is invalid. Local refers to uninitialized register: " + i10 + " with constraint " + ((Object) enumC5592Mw0) + ".");
    }

    public final void a(T10 t10, int i10, int i11, int i12) {
        C6855d2 a10 = C6855d2.a(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        if (!f46438D && a10.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), a10);
    }

    public final void a(T10 t10, EnumC9283re enumC9283re, int i10, int i11, int i12) {
        C9450se c9450se = new C9450se(t10, enumC9283re, a(i10, 1, AbstractC8999pu0.k()), b(i11, EnumC5592Mw0.a(t10)), b(i12, EnumC5592Mw0.a(t10)));
        if (!f46438D && c9450se.o()) {
            throw new AssertionError();
        }
        a(c9450se);
    }

    public final void a(T10 t10, T10 t102, int i10, int i11) {
        C10022w10 c10022w10 = new C10022w10(t102, t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t102)));
        if (!f46438D && c10022w10.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c10022w10);
    }

    public final void a(T10 t10, int i10, int i11) {
        C7268fZ c7268fZ = new C7268fZ(t10, a(i10, 1, D70.a(t10)), b(i11, EnumC5592Mw0.a(t10)));
        if (!f46438D && c7268fZ.o()) {
            throw new AssertionError();
        }
        a(this.f46462u.g(), c7268fZ);
    }

    public final C10340xw0 a(long j10) {
        C9126qh c9126qh = new C9126qh(new C10340xw0(this.f46453l.a(), AbstractC8999pu0.k(), null), j10);
        a(c9126qh);
        return c9126qh.d();
    }

    public final C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0, int i11, C4515j0 c4515j0) {
        C10340xw0 c10340xw0 = new C10340xw0(this.f46453l.a(), abstractC8999pu0, c4515j0);
        e(i10);
        this.f46451j.a(i10, c10340xw0, i11);
        return c10340xw0;
    }

    public final C10340xw0 a(int i10, int i11, AbstractC8999pu0 abstractC8999pu0) {
        C10340xw0 c10340xw0 = null;
        C4515j0 e10 = c() ? this.f46462u.e(i10) : null;
        C4515j0 d10 = c() ? this.f46462u.d(i10) : null;
        if (e10 != null && e10 == d10) {
            if (!f46438D && !c()) {
                throw new AssertionError();
            }
            EnumC5592Mw0 a10 = EnumC5592Mw0.a(e10.f37308c);
            W5 w52 = this.f46451j;
            U5 u52 = U5.f44667b;
            C7201f60.a aVar = C7201f60.a.f47868c;
            e(i10);
            c10340xw0 = (C10340xw0) w52.f45302o.get(Integer.valueOf(i10));
            if (c10340xw0 == null) {
                c10340xw0 = a(i10, w52, u52, a10, aVar);
            }
        }
        this.f46464w = c10340xw0;
        return a(i10, abstractC8999pu0, i11, d10);
    }

    public final void a(int i10, AbstractC8999pu0 abstractC8999pu0) {
        C8024k3 c8024k3 = new C8024k3(a(i10, abstractC8999pu0, 1, c() ? this.f46462u.d(i10) : null), this.f46451j.f45293f.size(), false);
        if (this.f46461t == null) {
            this.f46461t = new ArrayList();
        }
        a(this.f46462u.g(), c8024k3);
        this.f46461t.add(c8024k3.d());
    }

    public final void a(B60 b60, AbstractC10561zE abstractC10561zE) {
        boolean z10 = f46438D;
        if (!z10) {
            if (!z10 && abstractC10561zE.d() != null && !abstractC10561zE.n1() && !abstractC10561zE.a(this.f46457p).equals(abstractC10561zE.a())) {
                throw new AssertionError();
            }
            if (!z10 && abstractC10561zE.d() != null && abstractC10561zE.n1() && !abstractC10561zE.a(this.f46457p).equals(abstractC10561zE.a())) {
                AbstractC8999pu0 a10 = abstractC10561zE.a();
                a10.getClass();
                if (!(a10 instanceof C10540z7) || !abstractC10561zE.a(this.f46457p).y()) {
                    throw new AssertionError();
                }
            }
        }
        int i10 = 0;
        this.f46439A |= (abstractC10561zE.d() == null || abstractC10561zE.a().w()) ? false : true;
        abstractC10561zE.b(b60);
        b(abstractC10561zE);
        this.f46451j.a(abstractC10561zE, this.f46441C);
        if (abstractC10561zE.o()) {
            if (!z10 && !this.f46462u.b()) {
                throw new AssertionError();
            }
            N8 e10 = this.f46462u.e();
            if (e10 != null) {
                if (!z10 && this.f46463v) {
                    throw new AssertionError();
                }
                this.f46463v = true;
                final ArrayList arrayList = new ArrayList(e10.f42511c.size());
                final Set c10 = AbstractC5513Ll0.c();
                e10.a(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C6382aB.this.a(arrayList, c10, (com.android.tools.r8.graph.M2) obj, (Integer) obj2);
                    }
                });
                W5 w52 = this.f46451j;
                AbstractC7552hC abstractC7552hC = e10.f42510b;
                w52.getClass();
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    W5 w53 = (W5) obj;
                    int indexOf = w52.f45289b.indexOf(w53);
                    if (indexOf < 0) {
                        indexOf = w52.f45289b.size();
                        w52.g(w53);
                    }
                    arrayList2.add(Integer.valueOf(indexOf));
                }
                w52.f45292e = new N8(abstractC7552hC, arrayList2);
            }
        }
    }

    public final void a(List list, Set set, com.android.tools.r8.graph.M2 m22, Integer num) {
        W5 w52 = new W5(this.f46451j.f45303p);
        w52.f45300m++;
        w52.f45299l++;
        this.f46448g.add(new WA(w52, m22, this.f46452k, num.intValue()));
        list.add(w52);
        W5 w53 = ((VA) this.f46442a.get(num.intValue())).f44991a;
        if (set.add(w53)) {
            return;
        }
        w53.f45300m++;
        w53.f45299l++;
    }

    public final void a(int i10, int i11, boolean z10) {
        boolean z11;
        if (i11 >= 0) {
            int c10 = this.f46462u.c(i11);
            boolean[] zArr = this.f46446e;
            if (c10 < zArr.length) {
                z11 = zArr[c10];
            } else {
                if (this.f46447f == null) {
                    this.f46447f = new HashSet();
                }
                z11 = this.f46447f.contains(Integer.valueOf(c10));
            }
        } else if (i11 == -2) {
            z11 = this.f46445d;
        } else {
            if (!f46438D && i11 != -3) {
                throw new AssertionError();
            }
            z11 = true;
        }
        if (!z11) {
            this.f46444c.add(Integer.valueOf(i11));
        }
        VA f10 = f(i11);
        if (!this.f46442a.a(i10)) {
            i10 = ((AG) this.f46442a.c(i10)).d();
        }
        VA va2 = (VA) this.f46442a.get(i10);
        if (z10) {
            va2.f44993c.add(i11);
            f10.f44992b.add(i10);
        } else {
            va2.f44995e.add(i11);
            f10.f44994d.add(i10);
        }
        W5 w52 = f10.f44991a;
        w52.f45300m++;
        w52.f45299l++;
    }

    public final void a(int i10) {
        W5 w52 = ((VA) this.f46442a.get(i10)).f44991a;
        if (!f46438D && this.f46451j.b(w52)) {
            throw new AssertionError();
        }
        this.f46451j.g(w52);
        a(w52, this.f46462u.c(i10));
        a((AbstractC9408sL) new C4960Bz());
    }

    public final void a(AbstractC9408sL abstractC9408sL) {
        boolean z10 = f46438D;
        if (!z10 && abstractC9408sL.o()) {
            throw new AssertionError();
        }
        if (!z10 && this.f46451j == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f46451j.l().isEmpty() && this.f46451j.l().b().U1()) {
            throw new AssertionError();
        }
        if (!z10 && this.f46451j == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f46451j.f45293f.isEmpty() && this.f46451j.l().b().U1()) {
            throw new AssertionError();
        }
        VA va2 = (VA) this.f46442a.get(this.f46443b.b(this.f46451j));
        B60 g10 = this.f46462u.g();
        int i10 = va2.f44993c.f40170c;
        if (i10 <= 1 && (i10 != 1 || va2.f44995e.isEmpty())) {
            FH fh2 = va2.f44993c;
            if (fh2.f40170c == 1) {
                this.f46462u.a(this, this.f46452k, new EH(fh2).r(), false);
            } else if (!z10) {
                FH fh3 = new FH(va2.f44995e.f40170c + va2.f44993c.f40170c);
                fh3.a(va2.f44993c);
                fh3.a(va2.f44995e);
                if (!fh3.isEmpty()) {
                    throw new AssertionError();
                }
            }
        } else {
            FH fh4 = va2.f44993c;
            fh4.getClass();
            EH eh2 = new EH(fh4);
            while (eh2.hasNext()) {
                int r10 = eh2.r();
                VA va3 = (VA) this.f46442a.get(r10);
                if (va3.f44992b.f40170c + va3.f44994d.f40170c == 1) {
                    ZA za2 = null;
                    for (ZA za3 : this.f46448g) {
                        if (za3.f46187a == va3.f44991a) {
                            za2 = za3;
                        }
                    }
                    if (!f46438D && za2.f46188b != this.f46462u.c(r10)) {
                        throw new AssertionError();
                    }
                    this.f46448g.remove(za2);
                    this.f46448g.add(new XA(za2.f46188b, za2.f46187a, g10, this.f46452k, r10));
                } else {
                    W5 w52 = this.f46451j;
                    W5 w53 = va3.f44991a;
                    W5 w54 = new W5(w52.f45303p);
                    w54.f45300m++;
                    w54.f45299l++;
                    w54.m().add(w52);
                    w54.n().add(w53);
                    w52.b(w53, w54);
                    w53.a(w52, w54);
                    this.f46448g.add(new XA(-1, w54, g10, this.f46452k, r10));
                }
            }
        }
        a(this.f46462u.g(), abstractC9408sL);
        b();
    }

    public static boolean a(T10 t10) {
        return (t10 == T10.f44371g || t10 == T10.f44372h) ? false : true;
    }
}
