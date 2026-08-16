package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class C10340xw0 implements Comparable<C10340xw0>, GE {

    public static final C10340xw0 f53883n = new C10340xw0(-1, AbstractC8999pu0.f(), null);

    public static final boolean f53884o = true;

    public final int f53885b;

    public FT f53891h;

    public C8091kU f53894k;

    public C10006vw0 f53895l;

    public AbstractC8999pu0 f53896m;

    public AbstractC10561zE f53886c = null;

    public LinkedList f53887d = new LinkedList();

    public QC f53888e = null;

    public LinkedList f53889f = new LinkedList();

    public QC f53890g = null;

    public int f53892i = -1;

    public boolean f53893j = false;

    public C10340xw0(int i10, AbstractC8999pu0 abstractC8999pu0, C4515j0 c4515j0) {
        if (!f53884o && abstractC8999pu0 == null) {
            throw new AssertionError();
        }
        this.f53885b = i10;
        this.f53895l = c4515j0 != null ? new C10006vw0(c4515j0) : null;
        this.f53896m = abstractC8999pu0;
    }

    public static boolean a(C7201f60 c7201f60, C7201f60 c7201f602) {
        return c7201f602 == c7201f60;
    }

    public final boolean A() {
        return D() || B();
    }

    public final boolean B() {
        return !this.f53889f.isEmpty();
    }

    public final boolean C() {
        return b0().size() == 1;
    }

    public boolean D() {
        return !this.f53887d.isEmpty();
    }

    public final boolean F() {
        return this.f53887d != null;
    }

    public final boolean G() {
        return this.f53894k != null || K();
    }

    public boolean H() {
        return d(new NN0());
    }

    public final boolean I() {
        if (!M()) {
            return false;
        }
        AbstractC8291lh n10 = n();
        n10.getClass();
        return n10 instanceof C7957jh;
    }

    public final boolean J() {
        if (!f53884o) {
            AbstractC8999pu0 abstractC8999pu0 = this.f53896m;
            abstractC8999pu0.getClass();
            if (!(abstractC8999pu0 instanceof C9736uI)) {
                throw new AssertionError();
            }
        }
        return !z() && d(new C8009jy0());
    }

    public boolean K() {
        return M() && n().w1();
    }

    public final boolean L() {
        return M() && n().x1();
    }

    public boolean M() {
        return this.f53886c.e2() && !z();
    }

    public final boolean N() {
        if (!M()) {
            return false;
        }
        AbstractC8291lh n10 = n();
        n10.getClass();
        return n10 instanceof C9820uq;
    }

    public boolean O() {
        if (f53884o || this.f53896m.y()) {
            return d(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC10561zE) obj).r1();
                }
            }) || this.f53896m.t();
        }
        throw new AssertionError();
    }

    public final boolean P() {
        if (!this.f53887d.isEmpty() || !this.f53889f.isEmpty()) {
            return true;
        }
        C10006vw0 c10006vw0 = this.f53895l;
        return (c10006vw0 == null ? 0 : c10006vw0.f53378b.size()) > 0;
    }

    public boolean Q() {
        return this instanceof C8146ko0;
    }

    public final boolean R() {
        return M() && n().w1() && n().J().A2();
    }

    public void S() {
        if (!f53884o && j()) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean T() {
        boolean z10;
        boolean z11 = f53884o;
        if (!z11 && this.f53892i < 0) {
            throw new AssertionError();
        }
        if (!z11 && F() && U() <= 100) {
            boolean z12 = this.f53892i > 0;
            if (K() && V() <= 0) {
                Iterator<AbstractC10561zE> it = b0().iterator();
                while (it.hasNext()) {
                    if (it.next().c(this)) {
                    }
                }
                z10 = false;
                if (z12 != z10) {
                    throw new AssertionError();
                }
            }
            z10 = true;
            if (z12 != z10) {
            }
        }
        return this.f53892i > 0;
    }

    public int U() {
        int V10 = V() + W();
        C10006vw0 c10006vw0 = this.f53895l;
        return (c10006vw0 == null ? 0 : c10006vw0.f53378b.size()) + V10;
    }

    public final int V() {
        int size = this.f53889f.size();
        return size <= 1 ? size : a0().size();
    }

    public final int W() {
        int size = this.f53887d.size();
        return size <= 1 ? size : b0().size();
    }

    public final boolean X() {
        if (j()) {
            return false;
        }
        int r22 = this.f53886c.r2();
        if (r22 == 5) {
            return true;
        }
        if (r22 == 10) {
            return this.f53886c.D().n().X();
        }
        if (r22 == 12 || r22 == 20) {
            return true;
        }
        return r22 != 29 ? r22 == 15 || r22 == 16 : ((C10340xw0) this.f53886c.Y().f54321f.get(0)).X();
    }

    public EnumC5477Kw0 Y() {
        return EnumC5477Kw0.a(this.f53896m);
    }

    public final AbstractC10561zE Z() {
        boolean z10 = f53884o;
        if (!z10 && !C()) {
            throw new AssertionError();
        }
        if (z10 || !this.f53887d.isEmpty()) {
            return (AbstractC10561zE) this.f53887d.getFirst();
        }
        throw new AssertionError();
    }

    public final Set a0() {
        QC qc2 = this.f53890g;
        if (qc2 != null) {
            return qc2;
        }
        QC a10 = QC.a(this.f53889f);
        this.f53890g = a10;
        return a10;
    }

    public final C10340xw0 b(Predicate predicate) {
        C10340xw0 a10 = a(C9132qj.f51861a, predicate);
        if (predicate.test(a10)) {
            return a10;
        }
        return null;
    }

    public Set<AbstractC10561zE> b0() {
        QC qc2 = this.f53888e;
        if (qc2 != null) {
            return qc2;
        }
        QC a10 = QC.a(this.f53887d);
        this.f53888e = a10;
        return a10;
    }

    public C7838ix c() {
        return null;
    }

    @Override
    public final int compareTo(C10340xw0 c10340xw0) {
        return Integer.compare(this.f53885b, c10340xw0.f53885b);
    }

    public final boolean d(C10340xw0 c10340xw0) {
        return c10340xw0 == this;
    }

    public final void e() {
        this.f53887d = null;
        this.f53888e = null;
        this.f53889f = null;
        this.f53890g = null;
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 != null) {
            c10006vw0.f53378b = null;
        }
    }

    public void f(C10340xw0 c10340xw0) {
        a(c10340xw0, (Set) null);
    }

    public final Set g() {
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 == null) {
            return null;
        }
        return Collections.unmodifiableSet(c10006vw0.f53378b);
    }

    @Override
    public final C10340xw0 h() {
        return this;
    }

    public final int hashCode() {
        return this.f53885b;
    }

    public C10340xw0 i() {
        return a(C9132qj.f51861a, EnumC6871d70.f47287c);
    }

    public final AbstractC8291lh n() {
        if (f53884o || M()) {
            return this.f53886c.a1();
        }
        throw new AssertionError();
    }

    public final int o() {
        if (f53884o || J()) {
            return this.f53886c.J().u2();
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.L2 q() {
        if (z() || !d(new C6869d61())) {
            return null;
        }
        return this.f53886c.K().u2();
    }

    public final AbstractC10561zE r() {
        if (f53884o || !j()) {
            return this.f53886c;
        }
        throw new AssertionError();
    }

    public final C4515j0 s() {
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 == null) {
            return null;
        }
        return c10006vw0.f53377a;
    }

    public int t() {
        return this.f53885b;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("v");
        sb2.append(this.f53885b);
        AbstractC10561zE abstractC10561zE = this.f53886c;
        boolean z10 = abstractC10561zE != null && abstractC10561zE.w1();
        if (z10 || z()) {
            sb2.append("(");
            if (z10 && this.f53886c.J().e1()) {
                C9126qh J10 = this.f53886c.J();
                if (J10.a().z()) {
                    final C10340xw0 d10 = J10.d();
                    int w22 = (int) J10.w2();
                    if ((d10.f53889f == null || !d10.B()) && d10.f53888e != null && d10.b0().stream().allMatch(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return C10340xw0.a(C10340xw0.this, (AbstractC10561zE) obj);
                        }
                    })) {
                        sb2.append("0b");
                        sb2.append(Integer.toBinaryString(w22));
                    } else {
                        sb2.append(w22);
                    }
                } else {
                    sb2.append(J10.w2());
                }
            }
            if (z10 && z()) {
                sb2.append(", ");
            }
            if (z()) {
                sb2.append((Object) s());
            }
            sb2.append(")");
        }
        C8091kU c8091kU = this.f53894k;
        if (c8091kU != null) {
            sb2.append((Object) c8091kU);
        }
        return sb2.toString();
    }

    public AbstractC8999pu0 u() {
        return this.f53896m;
    }

    public final C8091kU v() {
        if (!K()) {
            return this.f53894k;
        }
        if (this.f53896m.z()) {
            int u22 = n().J().u2();
            return new C8091kU(u22, u22);
        }
        if (!f53884o && !this.f53896m.A()) {
            throw new AssertionError();
        }
        long v22 = n().J().v2();
        return new C8091kU(v22, v22);
    }

    public final boolean w() {
        return D() || B() || y();
    }

    public boolean x() {
        return this.f53886c.f54317b != null;
    }

    public final boolean y() {
        C10006vw0 c10006vw0 = this.f53895l;
        return (c10006vw0 == null || c10006vw0.f53378b.isEmpty()) ? false : true;
    }

    public final boolean z() {
        return s() != null;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 == abstractC10561zE;
    }

    public final boolean c(Predicate predicate) {
        Iterator<AbstractC10561zE> it = b0().iterator();
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                return true;
            }
        }
        return false;
    }

    public final void d() {
        this.f53887d.clear();
        this.f53888e = null;
        this.f53889f.clear();
        this.f53890g = null;
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 != null) {
            c10006vw0.f53378b.clear();
        }
    }

    public void f() {
        boolean z10;
        if (!f53884o && this.f53892i >= 0) {
            throw new AssertionError();
        }
        if (K() && V() <= 0) {
            Iterator<AbstractC10561zE> it = b0().iterator();
            while (it.hasNext()) {
                if (it.next().c(this)) {
                }
            }
            z10 = false;
            a(z10);
        }
        z10 = true;
        a(z10);
    }

    public void a(EnumC5592Mw0 enumC5592Mw0, com.android.tools.r8.graph.H5 h52, C5094Ef0 c5094Ef0) {
        AbstractC8999pu0 a10 = a(enumC5592Mw0);
        if (a10 != null) {
            if (U30.a(a10, this.f53896m)) {
                a(a10);
                return;
            }
            return;
        }
        c5094Ef0.a(null, new StringDiagnostic("Cannot constrain type: " + ((Object) this.f53896m) + " for value: " + ((Object) this) + " by constraint: " + ((Object) enumC5592Mw0), h52.f36317b.f36244d, new MethodPosition(h52.w())));
        throw c5094Ef0.f39969c;
    }

    public final void b(final AbstractC10561zE abstractC10561zE) {
        this.f53887d.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10340xw0.a(AbstractC10561zE.this, (AbstractC10561zE) obj);
            }
        });
        this.f53888e = null;
    }

    public final boolean c(C4798y c4798y) {
        if (z()) {
            return false;
        }
        if (this.f53896m.B().e()) {
            return true;
        }
        if (this.f53896m.s() && c4798y.f().i()) {
            return this.f53896m.b().E().a(c4798y.M());
        }
        return false;
    }

    public W5 b() {
        return this.f53886c.b();
    }

    public AbstractC8999pu0 b(C4798y c4798y) {
        AbstractC8999pu0 abstractC8999pu0;
        C10340xw0 b10 = b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean d10;
                d10 = ((C10340xw0) obj).d(new C9019q01());
                return d10;
            }
        });
        C10340xw0 i10 = i();
        if (b10 != null) {
            abstractC8999pu0 = b10.r().B().f39117k.a().n();
        } else if (i10.j()) {
            abstractC8999pu0 = i10.b(c4798y);
        } else {
            abstractC8999pu0 = this.f53896m;
        }
        if (!this.f53896m.t() || !abstractC8999pu0.v()) {
            return abstractC8999pu0;
        }
        if (f53884o || abstractC8999pu0.y()) {
            return abstractC8999pu0.d().D();
        }
        throw new AssertionError();
    }

    public void e(C10340xw0 c10340xw0) {
        if (this == c10340xw0) {
            return;
        }
        Iterator it = a0().iterator();
        while (it.hasNext()) {
            ((C7201f60) it.next()).a(this, c10340xw0, (Set) null);
        }
        this.f53889f.clear();
        this.f53890g = null;
    }

    public boolean d(Predicate<AbstractC10561zE> predicate) {
        return predicate.test(this.f53886c);
    }

    public final void c(AbstractC10561zE abstractC10561zE) {
        Set set;
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 != null && (set = c10006vw0.f53378b) != null) {
            set.remove(abstractC10561zE);
        } else if (!f53884o) {
            throw new AssertionError();
        }
    }

    public final C10664zt a(C4798y c4798y) {
        if (!AbstractC10330xt.f53865a && !u().y()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 b10 = b(c4798y);
        return AbstractC10330xt.a(c4798y, b10, a(c4798y, b10, b10.B()));
    }

    public final AbstractC8999pu0 a(EnumC5592Mw0 enumC5592Mw0) {
        if (enumC5592Mw0 == EnumC5592Mw0.f42465f && !this.f53896m.A()) {
            return this.f53896m;
        }
        int ordinal = enumC5592Mw0.ordinal();
        if (ordinal == 0) {
            AbstractC8999pu0 abstractC8999pu0 = this.f53896m;
            abstractC8999pu0.getClass();
            if (abstractC8999pu0 instanceof C10328xs0) {
                AbstractC10561zE abstractC10561zE = this.f53886c;
                if (abstractC10561zE != null && abstractC10561zE.w1()) {
                    if (f53884o || this.f53886c.J().A2()) {
                        return AbstractC8999pu0.m();
                    }
                    throw new AssertionError();
                }
                return AbstractC8999pu0.f();
            }
            if (this.f53896m.y()) {
                return this.f53896m;
            }
            AbstractC8999pu0 abstractC8999pu02 = this.f53896m;
            abstractC8999pu02.getClass();
            if (!(abstractC8999pu02 instanceof C10540z7)) {
                return null;
            }
            if (!f53884o && !j()) {
                AbstractC10561zE abstractC10561zE2 = this.f53886c;
                abstractC10561zE2.getClass();
                if (!(abstractC10561zE2 instanceof C7130ej) && (!this.f53886c.n1() || this.f53886c.y().f42487k != YV.f45995b)) {
                    throw new AssertionError();
                }
            }
            return this.f53896m;
        }
        if (ordinal == 1) {
            AbstractC8999pu0 abstractC8999pu03 = this.f53896m;
            abstractC8999pu03.getClass();
            if (!(abstractC8999pu03 instanceof C10328xs0)) {
                if (!this.f53896m.z()) {
                    return null;
                }
                AbstractC8999pu0 abstractC8999pu04 = this.f53896m;
                abstractC8999pu04.getClass();
                if (abstractC8999pu04 instanceof C5188Fx) {
                    return null;
                }
            }
            return AbstractC8999pu0.k();
        }
        if (ordinal == 2) {
            AbstractC8999pu0 abstractC8999pu05 = this.f53896m;
            abstractC8999pu05.getClass();
            if (!(abstractC8999pu05 instanceof C10328xs0)) {
                if (!this.f53896m.z()) {
                    return null;
                }
                AbstractC8999pu0 abstractC8999pu06 = this.f53896m;
                abstractC8999pu06.getClass();
                if (abstractC8999pu06 instanceof C9736uI) {
                    return null;
                }
            }
            return AbstractC8999pu0.j();
        }
        if (ordinal == 3) {
            AbstractC8999pu0 abstractC8999pu07 = this.f53896m;
            abstractC8999pu07.getClass();
            if (abstractC8999pu07 instanceof C10328xs0) {
                return AbstractC8999pu0.o();
            }
            if (this.f53896m.z()) {
                return this.f53896m;
            }
            return null;
        }
        if (ordinal == 5) {
            if (!this.f53896m.A()) {
                return null;
            }
            AbstractC8999pu0 abstractC8999pu08 = this.f53896m;
            abstractC8999pu08.getClass();
            if (abstractC8999pu08 instanceof C8160kt) {
                return null;
            }
            return AbstractC8999pu0.l();
        }
        if (ordinal == 6) {
            if (!this.f53896m.A()) {
                return null;
            }
            AbstractC8999pu0 abstractC8999pu09 = this.f53896m;
            abstractC8999pu09.getClass();
            if (abstractC8999pu09 instanceof C9593tU) {
                return null;
            }
            return AbstractC8999pu0.i();
        }
        if (ordinal == 7) {
            if (this.f53896m.A()) {
                return this.f53896m;
            }
            return null;
        }
        throw new C5417Jv0("Unexpected constraint: " + ((Object) enumC5592Mw0));
    }

    public final void a(EnumC5477Kw0 enumC5477Kw0) {
        EnumC5592Mw0 a10 = EnumC5592Mw0.a(enumC5477Kw0);
        if (!f53884o && a(a10) == null) {
            throw new AssertionError();
        }
    }

    public final AbstractC10561zE a(Predicate predicate) {
        AbstractC10561zE abstractC10561zE = this.f53886c;
        if (abstractC10561zE == null || !predicate.test(abstractC10561zE)) {
            return null;
        }
        return this.f53886c;
    }

    public final C10340xw0 a(InterfaceC7021e2 interfaceC7021e2, Predicate predicate) {
        C10340xw0 c10340xw0;
        if (!f53884o && predicate == null) {
            throw new AssertionError();
        }
        Set c10 = AbstractC5513Ll0.c();
        C10340xw0 c10340xw02 = this;
        while (!c10340xw02.j() && !predicate.test(c10340xw02)) {
            AbstractC10561zE abstractC10561zE = c10340xw02.f53886c;
            if (interfaceC7021e2.b(abstractC10561zE)) {
                c10340xw0 = interfaceC7021e2.a(abstractC10561zE);
                if (!f53884o && !c10.add(c10340xw0)) {
                    throw new AssertionError();
                }
            } else {
                c10340xw0 = c10340xw02;
            }
            if (c10340xw0 == c10340xw02) {
                if (!f53884o && !c10340xw0.j()) {
                    AbstractC10561zE abstractC10561zE2 = c10340xw0.f53886c;
                    abstractC10561zE2.getClass();
                    if (abstractC10561zE2 instanceof C4) {
                        throw new AssertionError();
                    }
                }
                return c10340xw0;
            }
            c10340xw02 = c10340xw0;
        }
        return c10340xw02;
    }

    public final void a(C4515j0 c4515j0) {
        boolean z10 = f53884o;
        if (!z10 && c4515j0 == null) {
            throw new AssertionError();
        }
        if (!z10 && this.f53895l != null) {
            throw new AssertionError();
        }
        this.f53895l = new C10006vw0(c4515j0);
    }

    public void a(AbstractC10561zE abstractC10561zE) {
        if (!f53884o && abstractC10561zE == null) {
            throw new AssertionError();
        }
        this.f53895l.f53378b.add(abstractC10561zE);
        if (!AbstractC10561zE.f54316j) {
            abstractC10561zE.getClass();
            if (!z()) {
                throw new AssertionError();
            }
        }
        if (abstractC10561zE.f54323h == null) {
            abstractC10561zE.f54323h = AbstractC5513Ll0.c();
        }
        abstractC10561zE.f54323h.add(this);
    }

    public final boolean a(W5 w52) {
        if (B() || y()) {
            return false;
        }
        Iterator<AbstractC10561zE> it = b0().iterator();
        while (it.hasNext()) {
            if (it.next().b() != w52) {
                return false;
            }
        }
        return true;
    }

    public static void a(InterfaceC7021e2 interfaceC7021e2, C10340xw0 c10340xw0, Set set) {
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            if (set.add(abstractC10561zE) && interfaceC7021e2.b(abstractC10561zE)) {
                a(interfaceC7021e2, abstractC10561zE.d(), set);
            }
        }
    }

    public final void a(final C7201f60 c7201f60) {
        this.f53889f.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10340xw0.a(C7201f60.this, (C7201f60) obj);
            }
        });
        this.f53890g = null;
    }

    public final C10696a a() {
        final C10696a c10696a = new C10696a();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10696a.this.a((C10340xw0) obj);
            }
        };
        for (AbstractC10561zE abstractC10561zE : b0()) {
            if (abstractC10561zE.e1()) {
                consumer.accept(abstractC10561zE.d());
            }
        }
        a0().forEach(consumer);
        return c10696a;
    }

    public final void a(C10696a c10696a) {
        Objects.requireNonNull(c10696a);
        XE0 xe0 = new XE0(c10696a);
        for (AbstractC10561zE abstractC10561zE : b0()) {
            if (abstractC10561zE.e1()) {
                xe0.accept(abstractC10561zE.d());
            }
        }
        a0().forEach(xe0);
    }

    public final void a(C10340xw0 c10340xw0, Set set) {
        if (this == c10340xw0) {
            return;
        }
        Iterator<AbstractC10561zE> it = b0().iterator();
        while (it.hasNext()) {
            it.next().a(this, c10340xw0, set);
        }
        Iterator it2 = a0().iterator();
        while (it2.hasNext()) {
            ((C7201f60) it2.next()).a(this, c10340xw0, set);
        }
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 != null) {
            Iterator it3 = c10006vw0.f53378b.iterator();
            while (it3.hasNext()) {
                ((AbstractC10561zE) it3.next()).e(this, c10340xw0);
            }
            this.f53895l.f53378b.clear();
        }
        d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C10340xw0 c10340xw0, Set set, Map map, C10696a c10696a) {
        if (this == c10340xw0) {
            return;
        }
        for (AbstractC10561zE abstractC10561zE : b0()) {
            if (set.contains(abstractC10561zE)) {
                b(abstractC10561zE);
                abstractC10561zE.a(this, c10340xw0, c10696a);
            }
        }
        Set o10 = map.o();
        for (C7201f60 c7201f60 : a0()) {
            if (o10.contains(c7201f60)) {
                long count = c7201f60.c0().stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C10340xw0.this.d((C10340xw0) obj);
                    }
                }).count();
                TH th2 = (TH) map.get(c7201f60);
                if (count == th2.size()) {
                    a(c7201f60);
                }
                UH it = th2.iterator();
                while (it.hasNext()) {
                    int intValue = ((Integer) it.next()).intValue();
                    if (!f53884o && ((C10340xw0) c7201f60.f47863q.get(intValue)) != this) {
                        throw new AssertionError();
                    }
                    c7201f60.a(intValue, c10340xw0, c10696a);
                }
            }
        }
        C10006vw0 c10006vw0 = this.f53895l;
        if (c10006vw0 != null) {
            Iterator it2 = c10006vw0.f53378b.iterator();
            while (it2.hasNext()) {
                AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) it2.next();
                if (set.contains(abstractC10561zE2)) {
                    abstractC10561zE2.e(this, c10340xw0);
                    it2.remove();
                }
            }
        }
    }

    public void a(boolean z10) {
        int i10;
        if (!f53884o && (i10 = this.f53892i) != -1) {
            if ((i10 > 0) != z10) {
                throw new AssertionError();
            }
        }
        this.f53892i = z10 ? 1 : 0;
    }

    public final int a(C10340xw0 c10340xw0) {
        return Integer.compare(this.f53885b, c10340xw0.f53885b);
    }

    public static boolean a(C10340xw0 c10340xw0, AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if ((abstractC10561zE instanceof C9523t2) || (abstractC10561zE instanceof A40)) {
            return true;
        }
        return (((abstractC10561zE instanceof C5686Ol0) || (abstractC10561zE instanceof C5918Sl0) || (abstractC10561zE instanceof C8504mw0)) && c10340xw0 == abstractC10561zE.W0()) || (abstractC10561zE instanceof C7343fy0);
    }

    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (!c4798y.m()) {
            return C10504yv0.f54195b;
        }
        if (u().B().e()) {
            G1 g12 = c4798y.f38427t;
            AbstractC8999pu0 u10 = u();
            g12.getClass();
            if (G1.f40367f || u10.y()) {
                return C5283Hm0.f40867c;
            }
            throw new AssertionError();
        }
        C10340xw0 i10 = i();
        if (i10.j()) {
            return C10504yv0.f54195b;
        }
        return i10.f53886c.a(c4798y, h52, m12);
    }

    public final boolean a(Set set) {
        AbstractC8999pu0 u10 = u();
        u10.getClass();
        if (!(u10 instanceof C9736uI)) {
            return false;
        }
        if (j()) {
            C7201f60 l10 = l();
            if (set == null) {
                set = AbstractC5513Ll0.c();
            }
            if (set.contains(l10)) {
                return true;
            }
            set.add(l10);
            for (C10340xw0 c10340xw0 : l10.c0()) {
                if (!c10340xw0.a(set)) {
                    c10340xw0.a(set);
                    return false;
                }
            }
            return true;
        }
        if (f53884o || this.f53886c != null) {
            return this.f53886c.a(set);
        }
        throw new AssertionError();
    }

    public final void a(AbstractC8999pu0 abstractC8999pu0) {
        if (!f53884o && abstractC8999pu0 == null) {
            throw new AssertionError();
        }
        this.f53896m = abstractC8999pu0;
    }

    public final void a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0) {
        if (!f53884o && ((c4798y.E().f50599F1.f50909u0 || c4798y.m()) && !this.f53896m.a(abstractC8999pu0, (C4798y<?>) c4798y))) {
            AbstractC8999pu0 abstractC8999pu02 = this.f53896m;
            throw new AssertionError((Object) ("During WIDENING, " + ((Object) abstractC8999pu0) + " < " + ((Object) abstractC8999pu02) + " at " + (j() ? l().e0() : this.f53886c.toString())));
        }
        a(abstractC8999pu0);
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, AbstractC8999pu0 abstractC8999pu0) {
        if (!f53884o && ((c4798y.E().f50599F1.f50909u0 || c4798y.m()) && this.f53896m.c(abstractC8999pu0, c4798y))) {
            AbstractC8999pu0 abstractC8999pu02 = this.f53896m;
            throw new AssertionError((Object) ("During NARROWING, " + ((Object) abstractC8999pu02) + " < " + ((Object) abstractC8999pu0) + " at " + (j() ? l().e0() : this.f53886c.toString()) + " (context: " + ((Object) h52) + ")"));
        }
        a(abstractC8999pu0);
    }

    public final C6949de a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, C8854p10 c8854p10) {
        C6949de b10;
        if (abstractC8999pu0 == null) {
            abstractC8999pu0 = u();
        }
        if (abstractC8999pu0.s()) {
            C6949de b11 = abstractC8999pu0.b();
            com.android.tools.r8.graph.E0 g10 = c4798y.g(b11.E());
            if (g10 != null && g10.c(c4798y)) {
                C8854p10 c8854p102 = b11.f46573b;
                c8854p102.getClass();
                C8854p10 c8854p103 = C8854p10.f51411c;
                if (c8854p102 != c8854p103) {
                    c8854p10 = (c8854p10 == c8854p103 || c8854p102 == c8854p10) ? c8854p102 : C8854p10.f51412d;
                }
                return b11.a(c8854p10);
            }
        }
        C10340xw0 i10 = i();
        if (i10.j()) {
            return null;
        }
        AbstractC10561zE r10 = i10.r();
        if (r10.c2()) {
            com.android.tools.r8.graph.M2 u22 = r10.w0().u2();
            com.android.tools.r8.graph.E0 g11 = c4798y.g(u22);
            if (g11 == null || g11.isInterface()) {
                return null;
            }
            if (!f53884o) {
                c8854p10.getClass();
                if (c8854p10 == C8854p10.f51412d) {
                    throw new AssertionError();
                }
            }
            return AbstractC8999pu0.a(u22, C8854p10.b(), (C4798y<?>) c4798y).b();
        }
        C10340xw0 b12 = b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean q12;
                q12 = ((C10340xw0) obj).r().q1();
                return q12;
            }
        });
        if (b12 == null || (b10 = b12.r().B().f39117k.a().b()) == null) {
            return null;
        }
        C8854p10 B10 = u().B();
        C8854p10 c8854p104 = b10.f46573b;
        c8854p104.getClass();
        C8854p10 c8854p105 = C8854p10.f51411c;
        if (c8854p104 != c8854p105) {
            B10 = (B10 == c8854p105 || c8854p104 == B10) ? c8854p104 : C8854p10.f51412d;
        }
        C6949de a10 = b10.a(B10);
        if (f53884o || a10.f46573b.a(c8854p10) == c8854p10) {
            return a10;
        }
        throw new AssertionError();
    }
}
