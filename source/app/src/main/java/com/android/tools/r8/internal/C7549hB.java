package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collection;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;

public class C7549hB implements EE {

    public static final boolean f48480e = true;

    public final Z5 f48481b;

    public EE f48482c;

    public final C7215fB f48483d;

    public C7549hB(C7215fB c7215fB) {
        Z5 u10 = c7215fB.u();
        this.f48481b = u10;
        this.f48483d = c7215fB;
        W5 w52 = (W5) u10.f46159b.next();
        u10.f46160c = w52;
        this.f48482c = w52.I();
    }

    @Override
    public final C10340xw0 a(C7215fB c7215fB, C8570nJ c8570nJ, long j10, AbstractC8999pu0 abstractC8999pu0) {
        return this.f48482c.a(c7215fB, c8570nJ, j10, abstractC8999pu0);
    }

    @Override
    public final void add(AbstractC10561zE abstractC10561zE) {
        this.f48482c.add(abstractC10561zE);
    }

    @Override
    public final AbstractC10561zE h() {
        AbstractC10561zE h10 = this.f48482c.h();
        if (h10 != null || !this.f48481b.f46159b.hasNext()) {
            return h10;
        }
        Z5 z52 = this.f48481b;
        z52.getClass();
        return ((W5) AbstractC10241xK.a((ListIterator) z52)).f45293f.a();
    }

    @Override
    public final boolean hasNext() {
        return this.f48482c.hasNext() || this.f48481b.f46159b.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f48482c.hasPrevious() || this.f48481b.f46159b.hasPrevious();
    }

    @Override
    public final void i() {
        this.f48482c.i();
    }

    @Override
    public final AbstractC10561zE n() {
        AbstractC10561zE n10 = this.f48482c.n();
        if (n10 != null || !this.f48481b.f46159b.hasPrevious()) {
            return n10;
        }
        Z5 z52 = this.f48481b;
        z52.getClass();
        return ((W5) AbstractC10241xK.b(z52)).i();
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
        this.f48482c.remove();
    }

    @Override
    public final void s() {
        this.f48482c.s();
    }

    @Override
    public final void set(AbstractC10561zE abstractC10561zE) {
        this.f48482c.set(abstractC10561zE);
    }

    @Override
    public final C10340xw0 a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22) {
        return this.f48482c.a((C4798y<?>) c4798y, c7215fB, l22);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final AbstractC10561zE previous() {
        if (this.f48482c.hasPrevious()) {
            return this.f48482c.previous();
        }
        if (this.f48481b.f46159b.hasPrevious()) {
            Z5 z52 = this.f48481b;
            W5 w52 = (W5) z52.f46159b.previous();
            z52.f46160c = w52;
            Y5 b10 = w52.b(w52.l().size());
            this.f48482c = b10;
            if (f48480e || b10.hasPrevious()) {
                return this.f48482c.previous();
            }
            throw new AssertionError();
        }
        throw new NoSuchElementException();
    }

    @Override
    public final VJ a(C4798y c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, B60 b60) {
        return this.f48482c.a((C4798y<?>) c4798y, c7215fB, z52, c10340xw0, b60);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return this.f48482c.a((C4798y<?>) c4798y, h52);
    }

    @Override
    public final boolean a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        return this.f48482c.a((C4798y<?>) c4798y, c7215fB, m22, (Consumer<C9389sD>) consumer);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, C4515j0 c4515j0, C10696a c10696a) {
        this.f48482c.a((C4798y<?>) c4798y, c7215fB, m22, c4515j0, c10696a);
    }

    @Override
    public final void a(C7215fB c7215fB, int i10) {
        this.f48482c.a(c7215fB, i10);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22, C10696a c10696a) {
        this.f48482c.a((C4798y<?>) c4798y, c7215fB, l22, c10696a);
    }

    @Override
    public final void a(C4798y c4798y, C10340xw0 c10340xw0) {
        this.f48482c.a((C4798y<?>) c4798y, c10340xw0);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C4554l1 c4554l1, C10696a c10696a) {
        this.f48482c.a((C4798y<?>) c4798y, c7215fB, c4554l1, c10696a);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, Set set, C10696a c10696a) {
        throw new C6501av0();
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, ListIterator listIterator, Set set, C10696a c10696a) {
        throw new C6501av0();
    }

    @Override
    public final W5 a(C7215fB c7215fB, ListIterator listIterator, boolean z10) {
        throw new C6501av0();
    }

    @Override
    public final W5 a(C7215fB c7215fB, int i10, ListIterator listIterator) {
        throw new C6501av0();
    }

    @Override
    public final W5 a(C7215fB c7215fB, Z5 z52, C8570nJ c8570nJ, UnaryOperator unaryOperator) {
        throw new C6501av0();
    }

    @Override
    public final W5 a(C4798y c4798y, C7215fB c7215fB, C7215fB c7215fB2, ListIterator listIterator, Set set, com.android.tools.r8.graph.H2 h22) {
        throw new C6501av0();
    }

    @Override
    public final AbstractC10561zE next() {
        if (this.f48482c.hasNext()) {
            return this.f48482c.next();
        }
        if (this.f48481b.f46159b.hasNext()) {
            Z5 z52 = this.f48481b;
            W5 w52 = (W5) z52.f46159b.next();
            z52.f46160c = w52;
            Y5 I10 = w52.I();
            this.f48482c = I10;
            if (f48480e || I10.hasNext()) {
                return this.f48482c.next();
            }
            throw new AssertionError();
        }
        throw new NoSuchElementException();
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, Collection collection, C8570nJ c8570nJ) {
        return this.f48482c.a(c7215fB, z52, (Collection<? extends AbstractC10561zE>) collection, c8570nJ);
    }

    @Override
    public final void a(Collection collection) {
        this.f48482c.a((Collection<AbstractC10561zE>) collection);
    }

    @Override
    public final void a(AbstractC10561zE abstractC10561zE, C10696a c10696a) {
        this.f48482c.a(abstractC10561zE, c10696a);
    }
}
