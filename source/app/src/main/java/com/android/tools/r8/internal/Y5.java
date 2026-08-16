package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.ir.optimize.AbstractC10709g0;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

public class Y5 implements EE {

    public static final boolean f45921g = true;

    public AbstractC10561zE f45922b;

    public AbstractC10561zE f45923c;

    public final W5 f45924d;

    public final CE f45925e;

    public B60 f45926f;

    public Y5(W5 w52, AbstractC10561zE abstractC10561zE) {
        this.f45924d = w52;
        this.f45925e = w52.l();
        this.f45923c = abstractC10561zE == null ? null : abstractC10561zE.b1();
        this.f45922b = abstractC10561zE;
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public final AbstractC10561zE b() {
        AbstractC10561zE abstractC10561zE = this.f45923c;
        if (abstractC10561zE == null) {
            throw new IllegalStateException();
        }
        if (abstractC10561zE == this.f45922b) {
            this.f45922b = abstractC10561zE.f54319d;
        }
        this.f45923c = null;
        return abstractC10561zE;
    }

    @Override
    public final void add(AbstractC10561zE abstractC10561zE) {
        B60 b60;
        if (abstractC10561zE.f54324i == null && (b60 = this.f45926f) != null) {
            abstractC10561zE.b(b60);
        }
        this.f45925e.a(abstractC10561zE, this.f45922b);
    }

    @Override
    public final AbstractC10561zE h() {
        AbstractC10561zE abstractC10561zE;
        if (f45921g || (abstractC10561zE = this.f45922b) == null || abstractC10561zE.f54317b == this.f45924d) {
            return this.f45922b;
        }
        throw new AssertionError((Object) ("Iterator invalidated: " + ((Object) this.f45922b)));
    }

    @Override
    public final boolean hasNext() {
        return this.f45922b != null;
    }

    @Override
    public final boolean hasPrevious() {
        AbstractC10561zE abstractC10561zE = this.f45922b;
        return abstractC10561zE == null ? !this.f45925e.isEmpty() : abstractC10561zE.f54318c != null;
    }

    @Override
    public final void i() {
        this.f45925e.c(b());
    }

    @Override
    public final AbstractC10561zE n() {
        AbstractC10561zE abstractC10561zE = this.f45922b;
        AbstractC10561zE abstractC10561zE2 = abstractC10561zE == null ? this.f45925e.f39168d : abstractC10561zE.f54318c;
        if (f45921g || abstractC10561zE2 == null || abstractC10561zE2.f54317b == this.f45924d) {
            return abstractC10561zE2;
        }
        throw new AssertionError((Object) ("Iterator invalidated: " + ((Object) this.f45922b)));
    }

    @Override
    public final int nextIndex() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int previousIndex() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void remove() {
        CE ce2 = this.f45925e;
        AbstractC10561zE b10 = b();
        ce2.getClass();
        if (!CE.f39165f && b10.d() != null && b10.d().P()) {
            throw new AssertionError();
        }
        ce2.b(b10.U0());
    }

    @Override
    public final void s() {
        this.f45925e.b(b());
    }

    @Override
    public final void set(AbstractC10561zE abstractC10561zE) {
        AbstractC10561zE abstractC10561zE2 = abstractC10561zE;
        AbstractC10561zE abstractC10561zE3 = this.f45923c;
        if (abstractC10561zE3 == null) {
            throw new IllegalStateException();
        }
        this.f45925e.a(abstractC10561zE3, abstractC10561zE2, null);
        if (this.f45923c == this.f45922b) {
            this.f45922b = abstractC10561zE2;
        }
        this.f45923c = abstractC10561zE2;
    }

    @Override
    public final AbstractC10561zE next() {
        AbstractC10561zE abstractC10561zE = this.f45922b;
        if (abstractC10561zE != null) {
            if (f45921g || abstractC10561zE.f54317b == this.f45924d) {
                this.f45923c = abstractC10561zE;
                this.f45922b = abstractC10561zE.f54319d;
                return abstractC10561zE;
            }
            throw new AssertionError((Object) ("Iterator invalidated: " + ((Object) abstractC10561zE)));
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final AbstractC10561zE previous() {
        AbstractC10561zE abstractC10561zE;
        AbstractC10561zE abstractC10561zE2 = this.f45922b;
        if (abstractC10561zE2 == null) {
            abstractC10561zE = this.f45925e.f39168d;
        } else {
            abstractC10561zE = abstractC10561zE2.f54318c;
        }
        if (abstractC10561zE != null) {
            if (f45921g || abstractC10561zE.f54317b == this.f45924d) {
                this.f45923c = abstractC10561zE;
                this.f45922b = abstractC10561zE;
                return abstractC10561zE;
            }
            throw new AssertionError((Object) ("Iterator invalidated: " + ((Object) this.f45922b)));
        }
        throw new NoSuchElementException();
    }

    public Y5(W5 w52, int i10) {
        this(w52, i10 == w52.f45293f.size() ? null : w52.l().j(i10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0078, code lost:
    
        if (r7.hasNext() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007a, code lost:
    
        if (r1 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007d, code lost:
    
        r2 = r2.a(r5, r6, r8, java.util.function.UnaryOperator.identity()).I();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EE a(C7215fB c7215fB, Z5 z52, Collection collection, C8570nJ c8570nJ) {
        AbstractC10561zE abstractC10561zE;
        Y5 y52;
        boolean z10;
        AbstractC10561zE next;
        if (f45921g) {
            abstractC10561zE = null;
        } else {
            abstractC10561zE = h();
            if (abstractC10561zE == null) {
                throw new AssertionError();
            }
        }
        if (this.f45924d.z() && !collection.isEmpty()) {
            Iterator it = collection.iterator();
            AbstractC10561zE h10 = h();
            Y5 it2 = this.f45924d.l().iterator();
            while (it2.hasNext() && (next = it2.next()) != h10) {
                if (next.o()) {
                    z10 = true;
                    break;
                }
            }
            z10 = false;
            y52 = z10 ? a(c7215fB, z52, c8570nJ, UnaryOperator.identity()).I() : this;
            loop1: do {
                y52.getClass();
                while (true) {
                    if (!it.hasNext()) {
                        break loop1;
                    }
                    AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) it.next();
                    y52.add(abstractC10561zE2);
                    if (abstractC10561zE2.o()) {
                        break;
                    }
                }
            } while (it.hasNext());
        } else {
            Iterator it3 = collection.iterator();
            while (it3.hasNext()) {
                add((AbstractC10561zE) it3.next());
            }
            y52 = this;
        }
        if (f45921g || y52.h() == abstractC10561zE) {
            return y52;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) it.next();
            AbstractC10561zE abstractC10561zE2 = this.f45923c;
            if (abstractC10561zE2 != null) {
                this.f45925e.a(abstractC10561zE2, abstractC10561zE, null);
                if (this.f45923c == this.f45922b) {
                    this.f45922b = abstractC10561zE;
                }
                this.f45923c = abstractC10561zE;
                next();
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override
    public final void a(AbstractC10561zE abstractC10561zE, C10696a c10696a) {
        AbstractC10561zE abstractC10561zE2 = this.f45923c;
        if (abstractC10561zE2 != null) {
            AbstractC10561zE abstractC10561zE3 = this.f45922b;
            if (abstractC10561zE2 == abstractC10561zE3) {
                this.f45922b = abstractC10561zE3.f54319d;
            }
            this.f45925e.a(abstractC10561zE2, abstractC10561zE, c10696a);
            this.f45923c = abstractC10561zE;
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final C10340xw0 a(C7215fB c7215fB, C8570nJ c8570nJ, long j10, AbstractC8999pu0 abstractC8999pu0) {
        C9126qh a10 = c7215fB.a(j10, abstractC8999pu0);
        AbstractC10561zE n10 = n();
        B60 position = n10 != null ? n10.getPosition() : this.f45924d.t();
        B60 b60 = this.f45926f;
        if (b60 != null) {
            position = b60;
        }
        if (!a10.o() && !c8570nJ.f50690i1) {
            a10.b(B60.s());
        } else {
            a10.b(position);
        }
        add(a10);
        return a10.d();
    }

    @Override
    public final VJ a(C4798y c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, B60 b60) {
        C8570nJ E10 = c4798y.E();
        com.android.tools.r8.graph.A2 a22 = c4798y.b().f37859F4.f38226d;
        boolean z10 = C8405mK.f50258o;
        C8238lK c8238lK = new C8238lK();
        c8238lK.f44718d = a22;
        C8238lK c8238lK2 = (C8238lK) c8238lK.a(c10340xw0);
        c8238lK2.f52322b = b60;
        C8405mK c10 = c8238lK2.c();
        add(c10);
        if (this.f45924d.z()) {
            a(c7215fB, z52, E10, (UnaryOperator<W5>) null);
        }
        return c10;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        C10340xw0 C22;
        AbstractC10561zE abstractC10561zE = this.f45923c;
        boolean z10 = f45921g;
        if (!z10 && abstractC10561zE == null) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC10561zE.J1() && !abstractC10561zE.Q1()) {
            throw new AssertionError();
        }
        if (abstractC10561zE.f1()) {
            return false;
        }
        if (abstractC10561zE.O1()) {
            if (abstractC10561zE.c0().B2().b(c4798y.b())) {
                return false;
            }
        }
        if (abstractC10561zE.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53982e)) {
            return false;
        }
        if (abstractC10561zE.J1()) {
            C22 = abstractC10561zE.X().n();
        } else {
            C22 = abstractC10561zE.f0().C2();
        }
        if (C22.O()) {
            this.f45925e.c(b());
            return true;
        }
        a(c4798y, C22);
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        AbstractC10561zE abstractC10561zE = this.f45923c;
        boolean z10 = f45921g;
        if (!z10 && abstractC10561zE == null) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC10561zE.h2() && !abstractC10561zE.R1()) {
            throw new AssertionError();
        }
        if (abstractC10561zE.f1()) {
            return false;
        }
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (!abstractC10561zE.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
            this.f45925e.c(b());
            return true;
        }
        if (abstractC10561zE.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53979b)) {
            return false;
        }
        if (!m22.a(c4798y, j10)) {
            this.f45925e.c(b());
            return true;
        }
        if (!c4798y.i()) {
            return false;
        }
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(m22));
        if (a10 != null) {
            C9389sD c9389sD = new C9389sD(a10.f36245e, c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null));
            a(c9389sD, (C10696a) null);
            consumer.accept(c9389sD);
        }
        return true;
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, C4515j0 c4515j0, C10696a c10696a) {
        if (this.f45923c != null) {
            C8854p10 b10 = C8854p10.b();
            boolean z10 = AbstractC8999pu0.f51660a;
            a(new C7957jh(c7215fB.a(AbstractC8999pu0.a(c4798y.b().f38180w2, b10, (C4798y<?>) c4798y).b(), c4515j0), m22, false), c10696a);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(C7215fB c7215fB, int i10) {
        AbstractC10561zE abstractC10561zE = this.f45923c;
        if (abstractC10561zE != null) {
            if (!f45921g && abstractC10561zE.e1()) {
                AbstractC8999pu0 a10 = this.f45923c.a();
                a10.getClass();
                if (!(a10 instanceof C9736uI)) {
                    throw new AssertionError();
                }
            }
            a(c7215fB.a(i10, this.f45923c.q()), (C10696a) null);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22, C10696a c10696a) {
        AbstractC10561zE abstractC10561zE = this.f45923c;
        if (abstractC10561zE != null) {
            C4515j0 q10 = abstractC10561zE.q();
            c7215fB.getClass();
            a(new C9960vh(c7215fB.a(AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b()), q10), l22), c10696a);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(C4798y c4798y, C10340xw0 c10340xw0) {
        AbstractC10561zE abstractC10561zE = this.f45923c;
        if (abstractC10561zE != null) {
            boolean z10 = f45921g;
            if (!z10 && abstractC10561zE.f1()) {
                throw new AssertionError();
            }
            if (!z10 && this.f45924d.z() && !this.f45923c.o()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.A2 a22 = c4798y.b().f37859F4.f38226d;
            boolean z11 = C8405mK.f50258o;
            C8238lK c8238lK = new C8238lK();
            c8238lK.f44718d = a22;
            a(((C8238lK) c8238lK.a(c10340xw0)).c(), (C10696a) null);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C4554l1 c4554l1, C10696a c10696a) {
        if (this.f45923c != null) {
            a(new C5576Mo0(c4554l1, c7215fB.a(AbstractC8999pu0.a(c4554l1.getType(), C8854p10.h(), (C4798y<?>) c4798y), this.f45923c.q())), c10696a);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, Set set, C10696a c10696a) {
        W5 w52;
        Y5 b10;
        B60 b60;
        AbstractC10561zE abstractC10561zE = this.f45923c;
        if (abstractC10561zE != null) {
            C8570nJ E10 = c4798y.E();
            W5 b11 = abstractC10561zE.b();
            boolean z10 = f45921g;
            if (!z10 && set.contains(b11)) {
                throw new AssertionError();
            }
            if (!z10 && c10696a == null) {
                throw new AssertionError();
            }
            previous();
            if (b11.z() && !abstractC10561zE.o()) {
                w52 = a(c7215fB, z52, E10, (UnaryOperator<W5>) null);
                w52.I().a(c7215fB, (ListIterator) z52, true);
            } else {
                a(c7215fB, z52, E10, (UnaryOperator<W5>) null);
                w52 = b11;
            }
            set.addAll(w52.a(w52.w(), new C6993dt(c7215fB, 2), c10696a));
            if (w52 == b11) {
                previous();
                next();
                b10 = this;
            } else {
                b10 = w52.b(1);
            }
            if (!z10 && b10.hasNext()) {
                throw new AssertionError();
            }
            boolean z11 = C5698Or0.f43061l;
            C5640Nr0 c5640Nr0 = new C5640Nr0();
            c5640Nr0.f42714d = c10340xw0;
            if (!abstractC10561zE.getPosition().o()) {
                b60 = abstractC10561zE.getPosition();
            } else {
                b60 = B60.c.f38822h;
            }
            B60 b602 = this.f45926f;
            if (b602 != null) {
                b60 = b602;
            }
            c5640Nr0.f52322b = b60;
            C5698Or0 c5698Or0 = new C5698Or0(c5640Nr0.f42714d);
            B60 b603 = c5640Nr0.f52322b;
            if (b603 != null) {
                c5698Or0.b(b603);
            }
            b10.a(c5698Or0, (C10696a) null);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(final C4798y c4798y, final C7215fB c7215fB, ListIterator listIterator, final Set set, final C10696a c10696a) {
        W5 w52;
        Y5 y52;
        B60 b60;
        AbstractC10561zE abstractC10561zE = this.f45923c;
        if (abstractC10561zE != null) {
            final W5 b10 = abstractC10561zE.b();
            boolean z10 = f45921g;
            if (!z10 && set.contains(b10)) {
                throw new AssertionError();
            }
            if (!z10 && c10696a == null) {
                throw new AssertionError();
            }
            previous();
            if (b10.z() && !abstractC10561zE.o()) {
                W5 a10 = a(c7215fB, listIterator, true);
                a10.I().a(c7215fB, (ListIterator<W5>) listIterator);
                w52 = a10;
            } else {
                a(c7215fB, listIterator, true);
                w52 = b10;
            }
            if (!z10 && hasNext()) {
                throw new AssertionError();
            }
            previous();
            set.addAll(w52.a(w52.w(), new C6993dt(c7215fB, 2), c10696a));
            if (w52 == b10) {
                y52 = this;
            } else {
                Y5 I10 = w52.I();
                I10.f45926f = this.f45926f;
                y52 = I10;
            }
            C10340xw0 a11 = y52.a(c7215fB, c4798y.E(), 0L, AbstractC8999pu0.m());
            y52.next();
            if (!z10 && y52.hasNext()) {
                throw new AssertionError();
            }
            boolean z11 = C5698Or0.f43061l;
            C5640Nr0 c5640Nr0 = new C5640Nr0();
            c5640Nr0.f42714d = a11;
            if (!abstractC10561zE.getPosition().o()) {
                b60 = abstractC10561zE.getPosition();
            } else {
                b60 = B60.c.f38822h;
            }
            B60 b602 = this.f45926f;
            if (b602 != null) {
                b60 = b602;
            }
            c5640Nr0.f52322b = b60;
            C5698Or0 c5698Or0 = new C5698Or0(c5640Nr0.f42714d);
            B60 b603 = c5640Nr0.f52322b;
            if (b603 != null) {
                c5698Or0.b(b603);
            }
            y52.a(c5698Or0, (C10696a) null);
            if (b10.z()) {
                if (b10 == w52) {
                    b10.j().a(new BiConsumer() {
                        @Override
                        public final void accept(Object obj, Object obj2) {
                            Y5.a(Set.this, c4798y, c7215fB, b10, c10696a, (com.android.tools.r8.graph.M2) obj, (W5) obj2);
                        }
                    });
                    return;
                } else {
                    w52.a(c7215fB, listIterator, b10, c4798y.E());
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException();
    }

    public static void a(Set set, C4798y c4798y, C7215fB c7215fB, W5 w52, C10696a c10696a, com.android.tools.r8.graph.M2 m22, W5 w53) {
        if (!set.contains(w53) && c4798y.a(c4798y.b().f37851E3, m22).a()) {
            set.addAll(w52.a(w53, new C6993dt(c7215fB, 2), c10696a));
        }
    }

    @Override
    public final W5 a(C7215fB c7215fB, ListIterator listIterator, boolean z10) {
        if (!f45921g && listIterator != null && AbstractC10241xK.b(listIterator) != this.f45924d) {
            throw new AssertionError();
        }
        W5 a10 = this.f45924d.a(c7215fB.f47899f.a(), z10, this.f45922b);
        this.f45922b = null;
        this.f45923c = null;
        if (listIterator == null) {
            LinkedList<W5> linkedList = c7215fB.f47897d;
            linkedList.add(linkedList.indexOf(this.f45924d) + 1, a10);
            return a10;
        }
        listIterator.add(a10);
        listIterator.previous();
        listIterator.next();
        return a10;
    }

    @Override
    public final W5 a(C7215fB c7215fB, int i10, ListIterator listIterator) {
        W5 a10 = a(c7215fB, (ListIterator<W5>) listIterator);
        if (!f45921g && listIterator != null && AbstractC10241xK.b(listIterator) != a10) {
            throw new AssertionError();
        }
        Y5 I10 = a10.I();
        for (int i11 = 0; i11 < i10; i11++) {
            I10.next();
        }
        I10.a(c7215fB, (ListIterator<W5>) listIterator);
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final W5 a(C7215fB c7215fB, Z5 z52, C8570nJ c8570nJ, UnaryOperator unaryOperator) {
        W5 a10 = a(c7215fB, (ListIterator) z52, false);
        if (!f45921g && this.f45924d.z()) {
            throw new AssertionError();
        }
        if (a10.z()) {
            this.f45924d.a(c7215fB, z52, a10, c8570nJ);
        }
        if (unaryOperator != null) {
            z52.a((W5) unaryOperator.apply(a10));
        }
        return a10;
    }

    public static void a(C4798y c4798y, C7215fB c7215fB, W5 w52, W5 w53, ListIterator listIterator) {
        W5 w54;
        Y5 y52;
        Y5 I10 = w53.I();
        while (w53 != null && I10.hasNext()) {
            boolean z10 = f45921g;
            if (!z10 && w53.z()) {
                throw new AssertionError();
            }
            if (((AbstractC10561zE) I10.a(new C6920dR0())) != null) {
                if (I10.hasNext()) {
                    w54 = I10.a(c7215fB, (ListIterator<W5>) listIterator);
                    if (!z10 && w54.u().size() != 1) {
                        throw new AssertionError();
                    }
                    if (!z10 && w53 != w54.u().get(0)) {
                        throw new AssertionError();
                    }
                    W5 w55 = (W5) listIterator.previous();
                    if (!z10 && w55 != w54) {
                        throw new AssertionError();
                    }
                } else {
                    w54 = null;
                }
                w53.a(c7215fB, listIterator, w52, c4798y.E());
                if (w54 != null) {
                    W5 w56 = (W5) listIterator.next();
                    if (!z10 && w56 != w54) {
                        throw new AssertionError();
                    }
                    y52 = w54.I();
                } else {
                    y52 = null;
                }
                W5 w57 = w54;
                I10 = y52;
                w53 = w57;
            } else {
                if (!z10 && I10.hasNext()) {
                    throw new AssertionError();
                }
                w53 = null;
                I10 = null;
            }
        }
    }

    public static void a(Y5 y52, C10340xw0 c10340xw0) {
        boolean z10 = f45921g;
        if (!z10 && !y52.hasNext()) {
            throw new AssertionError();
        }
        AbstractC10561zE next = y52.next();
        if (!z10 && !next.k1()) {
            throw new AssertionError();
        }
        if (!z10 && next.d().P()) {
            throw new AssertionError();
        }
        if (!z10 && next.d() != c10340xw0) {
            throw new AssertionError();
        }
        y52.remove();
    }

    @Override
    public final W5 a(C4798y c4798y, C7215fB c7215fB, C7215fB c7215fB2, ListIterator listIterator, Set set, com.android.tools.r8.graph.H2 h22) {
        boolean z10;
        boolean z11;
        W5 w52;
        Y5 I10;
        int i10;
        List<W5> list;
        final W5 w53;
        W5 w54;
        boolean z12;
        boolean z13;
        ListIterator listIterator2 = listIterator;
        boolean z14 = f45921g;
        if (!z14 && set == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        com.android.tools.r8.graph.H5 j11 = c7215fB2.j();
        if (j10.getHolder() != j11.getHolder() && j11.d().f37319l == EnumC4535k1.f37412g) {
            if (!z14 && !AbstractC10709g0.a(j10.p(), j11.p(), c4798y)) {
                throw new AssertionError();
            }
            C7549hB p10 = c7215fB2.p();
            if (!AbstractC10709g0.f54876a && c7215fB2.j().getHolder() == j10.getHolder()) {
                throw new AssertionError();
            }
            while (p10.hasNext()) {
                AbstractC10561zE next = p10.next();
                if (next.O1()) {
                    QJ c02 = next.c0();
                    com.android.tools.r8.graph.A2 B22 = c02.B2();
                    c4798y.getClass();
                    C4516j1 b10 = B22.b(c4798y.g(B22.f38297f));
                    if (b10 != null && !b10.j1()) {
                        if (!AbstractC10709g0.f54876a) {
                            b10.L0();
                            if (!b10.f37314g.h()) {
                                throw new AssertionError();
                            }
                        }
                        if (c02.f43539o) {
                            p10.a(new TJ(B22, c02.d(), c02.f54321f), (C10696a) null);
                        } else {
                            p10.a(new C8405mK(B22, c02.d(), c02.f54321f), (C10696a) null);
                        }
                    }
                } else if ((next instanceof TJ) || next.T1()) {
                    VJ e02 = next.e0();
                    com.android.tools.r8.graph.A2 B23 = e02.B2();
                    if (B23.f38297f == j10.p()) {
                        c4798y.getClass();
                        C4516j1 b11 = B23.b(c4798y.g(B23.f38297f));
                        if (b11 != null) {
                            b11.L0();
                            if (b11.f37314g.h()) {
                                p10.a(new QJ(B23, e02.d(), e02.f54321f, j10.getHolder().isInterface()), (C10696a) null);
                            }
                        }
                    }
                }
            }
        }
        AE o10 = c7215fB2.o();
        while (true) {
            if (!o10.hasNext()) {
                z10 = false;
                break;
            }
            if (o10.next().o()) {
                z10 = true;
                break;
            }
        }
        W5 a10 = a(c7215fB, 1, listIterator2);
        boolean z15 = f45921g;
        if (!z15 && a10.l().size() != 2) {
            throw new AssertionError();
        }
        if (!z15 && !a10.l().a().N1()) {
            throw new AssertionError();
        }
        NJ a02 = a10.l().a().a0();
        W5 w55 = a10.u().get(0);
        W5 w56 = a10.v().get(0);
        Set c10 = AbstractC5513Ll0.c();
        List<C10340xw0> d10 = c7215fB2.d();
        if (!z15 && a02.f54321f.size() != d10.size()) {
            throw new AssertionError();
        }
        W5 k10 = c7215fB2.k();
        if (!z15 && h22 != null && !d10.get(0).f53893j) {
            throw new AssertionError();
        }
        if (h22 != null && d10.get(0).P()) {
            w52 = w56;
            C10340xw0 c10340xw0 = (C10340xw0) a02.f54321f.get(0);
            z11 = z10;
            C5800Qk0 c5800Qk0 = new C5800Qk0(c7215fB.a(AbstractC8999pu0.a(h22.getType(), c10340xw0.u().B(), (C4798y<?>) c4798y), (C4515j0) null), c10340xw0, h22.getType());
            c5800Qk0.b(a02.getPosition());
            if (k10.a()) {
                W5 b12 = k10.I().b(c7215fB2);
                I10 = b12.I();
                k10.I().add(c5800Qk0);
                if (!z15 && c5800Qk0.b().l().size() != 2) {
                    throw new AssertionError();
                }
                k10 = b12;
            } else {
                I10 = k10.I();
                I10.add(c5800Qk0);
            }
            C10340xw0 c10340xw02 = d10.get(0);
            c10.addAll(c10340xw02.a());
            c10340xw02.f(c5800Qk0.f54320e);
            a(I10, c10340xw02);
            i10 = 1;
        } else {
            z11 = z10;
            w52 = w56;
            I10 = k10.I();
            i10 = 0;
        }
        while (i10 < a02.f54321f.size()) {
            if (!f45921g && d10.get(i10).z()) {
                throw new AssertionError();
            }
            C10340xw0 c10340xw03 = d10.get(i10);
            c10.addAll(c10340xw03.a());
            c10340xw03.f((C10340xw0) a02.f54321f.get(i10));
            a(I10, c10340xw03);
            i10++;
        }
        boolean z16 = f45921g;
        if (!z16 && !k10.l().stream().noneMatch(new NN0())) {
            throw new AssertionError();
        }
        new C8331lu0(c4798y, c7215fB, false).a(c10, 3);
        W5 k11 = c7215fB2.k();
        List<W5> f10 = c7215fB2.f();
        if (f10.isEmpty()) {
            list = f10;
            w53 = w52;
            w54 = null;
        } else {
            Y5 a11 = a(c4798y, c7215fB2, f10);
            if (!z16 && !a11.h().g2()) {
                throw new AssertionError();
            }
            if (a02.d() != null) {
                C10696a a12 = a02.d().a();
                C10471yk0 G02 = a11.h().G0();
                a02.d().f(G02.w2());
                C8331lu0 c8331lu0 = new C8331lu0(c4798y, c7215fB, false);
                c8331lu0.f50139b = true;
                C10340xw0 w22 = G02.w2();
                int i11 = AbstractC7552hC.f48487c;
                list = f10;
                c8331lu0.a(AbstractC6114Vx.b(new C5920Sm0(w22), a12), C6628bi.b());
            } else {
                list = f10;
            }
            W5 b13 = a11.b(c7215fB2);
            w54 = b13.S();
            Y5 I11 = b13.I();
            I11.next();
            I11.remove();
            if (!z16 && I11.hasNext()) {
                throw new AssertionError();
            }
            c7215fB2.f47897d.remove(b13);
            a10.S();
            Y5 I12 = a10.I();
            I12.next();
            I12.remove();
            if (!z16 && !a10.l().a().G1()) {
                throw new AssertionError();
            }
            w53 = a10;
        }
        w55.g(k11);
        if (w54 != null) {
            w54.g(w53);
        }
        if (listIterator2 == null) {
            listIterator2 = new Z5(c7215fB, c7215fB.f47897d.indexOf(a10));
        } else {
            listIterator.previous();
            listIterator.previous();
        }
        if (!z16 && AbstractC10241xK.a(listIterator2) != a10) {
            throw new AssertionError();
        }
        C8382mB c8382mB = this.f45924d.f45303p;
        C8382mB c8382mB2 = k11.f45303p;
        c8382mB.f50231b |= c8382mB2.f50231b;
        c8382mB.f50232c |= c8382mB2.f50232c;
        Iterator<W5> it = c7215fB2.f47897d.iterator();
        while (it.hasNext()) {
            W5 next2 = it.next();
            next2.d(c7215fB.f47899f.a());
            listIterator2.add(next2);
            next2.f45303p = c8382mB;
        }
        if (a10.z()) {
            for (int i12 = 0; i12 < c7215fB2.f47897d.size(); i12++) {
                listIterator2.previous();
            }
            if (!f45921g && AbstractC10241xK.a(listIterator2) != c7215fB2.k()) {
                throw new AssertionError();
            }
            Iterator<W5> it2 = c7215fB2.f47897d.iterator();
            while (it2.hasNext()) {
                W5 next3 = it2.next();
                W5 w57 = (W5) listIterator2.next();
                if (!f45921g && next3 != w57) {
                    throw new AssertionError();
                }
                if (next3.z()) {
                    next3.a(c7215fB, listIterator2, a10, c4798y.E());
                } else {
                    a(c4798y, c7215fB, a10, next3, listIterator2);
                }
            }
        }
        if (!list.isEmpty()) {
            z12 = true;
            z13 = false;
        } else {
            if (!f45921g && !z11) {
                throw new AssertionError();
            }
            C6993dt c6993dt = new C6993dt(c7215fB, 2);
            C10696a c10696a = new C10696a();
            set.addAll(w55.a(a10, c6993dt, c10696a));
            z13 = false;
            C8331lu0 c8331lu02 = new C8331lu0(c4798y, c7215fB, false);
            z12 = true;
            c8331lu02.f50139b = true;
            c8331lu02.a(c10696a, C6628bi.b());
        }
        listIterator2.next();
        boolean z17 = f45921g;
        if (!z17 && AbstractC10241xK.b(listIterator2) != a10) {
            throw new AssertionError();
        }
        if (!z17 && w53 != a10) {
            Predicate predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Y5.a(W5.this, (W5) obj);
                }
            };
            Object a13 = AbstractC10241xK.a(listIterator2);
            while (true) {
                if (!listIterator2.hasNext()) {
                    break;
                }
                if (predicate.test(listIterator2.next())) {
                    z13 = z12;
                    break;
                }
            }
            while (listIterator2.hasPrevious() && listIterator2.previous() != a13) {
            }
            if (!AbstractC10241xK.f53735a && AbstractC10241xK.a(listIterator2) != a13) {
                throw new AssertionError();
            }
            if (!z13) {
                throw new AssertionError();
            }
        }
        C8382mB c8382mB3 = c7215fB.f47902i;
        C8382mB c8382mB4 = c7215fB2.f47902i;
        c8382mB3.f50231b |= c8382mB4.f50231b;
        c8382mB3.f50232c |= c8382mB4.f50232c;
        return w53;
    }

    public static Y5 a(C4798y c4798y, final C7215fB c7215fB, List list) {
        boolean z10;
        C10340xw0 c10340xw0;
        C10471yk0 c10471yk0;
        if (JK.a(list.iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((W5) obj).z();
            }
        }) != -1) {
            list = AT.a((Collection) list, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Y5.a(C7215fB.this, (W5) obj);
                }
            });
        }
        if (list.size() == 1) {
            Y5 I10 = ((W5) list.get(0)).I();
            I10.a(new C8193l31());
            I10.previous();
            return I10;
        }
        W5 w52 = new W5(c7215fB.f47902i);
        w52.d(c7215fB.f47899f.a());
        if (((W5) list.get(0)).i().G0().v2()) {
            c10471yk0 = new C10471yk0();
        } else {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            loop1: while (true) {
                while (it.hasNext()) {
                    C10340xw0 w22 = ((W5) it.next()).i().G0().w2();
                    arrayList.add(w22);
                    z10 = z10 && w22 == arrayList.get(0);
                }
            }
            if (z10) {
                c10340xw0 = (C10340xw0) arrayList.get(0);
            } else {
                C7201f60 c7201f60 = new C7201f60(c7215fB.f47898e.a(), w52, AbstractC8999pu0.f(), null, C7201f60.a.f47867b);
                c7201f60.a(arrayList);
                C8331lu0 c8331lu0 = new C8331lu0(c4798y, c7215fB, false);
                int i10 = QC.f43505c;
                c8331lu0.a(new C5978Tm0(c7201f60), 2);
                c10340xw0 = c7201f60;
            }
            c10471yk0 = new C10471yk0(c10340xw0);
        }
        c10471yk0.b(B60.s());
        w52.a(c10471yk0, c7215fB.f47902i);
        for (W5 w53 : list) {
            Y5 b10 = w53.b(w53.l().size());
            AbstractC10561zE previous = b10.previous();
            if (!f45921g && !previous.g2()) {
                throw new AssertionError();
            }
            b10.a(new C4960Bz(), (C10696a) null);
            w53.g(w52);
        }
        w52.a((C6382aB) null);
        c7215fB.f47897d.add(w52);
        return w52.I();
    }

    public static W5 a(C7215fB c7215fB, W5 w52) {
        if (!w52.z()) {
            return w52;
        }
        C10471yk0 G02 = w52.i().G0();
        W5 w53 = new W5(c7215fB.f47902i);
        w53.d(c7215fB.f47899f.a());
        C10471yk0 c10471yk0 = G02.v2() ? new C10471yk0() : new C10471yk0(G02.w2());
        c10471yk0.b(G02.getPosition());
        w53.a(c10471yk0, c7215fB.f47902i);
        G02.d(new C4960Bz());
        w52.g(w53);
        w53.a((C6382aB) null);
        c7215fB.f47897d.add(w53);
        return w53;
    }

    @Override
    public final C10340xw0 a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22) {
        c7215fB.getClass();
        C9960vh c9960vh = new C9960vh(c7215fB.a(AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b()), (C4515j0) null), l22);
        c4798y.E();
        AbstractC10561zE n10 = n();
        B60 position = n10 != null ? n10.getPosition() : this.f45924d.t();
        B60 b60 = this.f45926f;
        if (b60 != null) {
            position = b60;
        }
        c9960vh.b(position);
        add(c9960vh);
        return c9960vh.d();
    }
}
