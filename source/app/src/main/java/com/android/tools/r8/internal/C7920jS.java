package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collection;
import java.util.ListIterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;

public class C7920jS implements EE {

    public static final boolean f49238e = true;

    public W5 f49239b;

    public Y5 f49240c;

    public final Set f49241d;

    public C7920jS(W5 w52) {
        this(w52, 0);
    }

    @Override
    public final void a(AbstractC10561zE abstractC10561zE, C10696a c10696a) {
        this.f49240c.a(abstractC10561zE, c10696a);
    }

    @Override
    public final void add(AbstractC10561zE abstractC10561zE) {
        this.f49240c.add(abstractC10561zE);
    }

    public final boolean b(W5 w52) {
        return this.f49241d.contains(w52);
    }

    @Override
    public final AbstractC10561zE h() {
        AbstractC10561zE h10 = this.f49240c.h();
        if (h10.G1()) {
            W5 v22 = h10.U().v2();
            if (a(this.f49239b, v22)) {
                while (v22.G()) {
                    W5 a10 = R5.a(v22);
                    if (!a(v22, a10)) {
                        break;
                    }
                    v22 = a10;
                }
                return v22.f45293f.a();
            }
        }
        return h10;
    }

    @Override
    public final boolean hasNext() {
        return this.f49240c.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f49240c.hasPrevious() || a(this.f49239b) != null;
    }

    @Override
    public final void i() {
        this.f49240c.i();
    }

    @Override
    public final AbstractC10561zE n() {
        AbstractC10561zE n10 = this.f49240c.n();
        if (n10 != null) {
            return n10;
        }
        W5 a10 = a(this.f49239b);
        if (a10 == null || a10.f45293f.size() < 2) {
            return null;
        }
        return a10.f45293f.b().b1();
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
        this.f49240c.remove();
    }

    @Override
    public final void set(AbstractC10561zE abstractC10561zE) {
        this.f49240c.set(abstractC10561zE);
    }

    public C7920jS(W5 w52, int i10) {
        Set c10 = AbstractC5513Ll0.c();
        this.f49241d = c10;
        this.f49239b = w52;
        this.f49240c = w52.b(i10);
        c10.add(w52);
        if (i10 > 0) {
            previous();
            next();
        }
    }

    @Override
    public final C10340xw0 a(C7215fB c7215fB, C8570nJ c8570nJ, long j10, AbstractC8999pu0 abstractC8999pu0) {
        return this.f49240c.a(c7215fB, c8570nJ, j10, abstractC8999pu0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final AbstractC10561zE previous() {
        if (this.f49240c.hasPrevious()) {
            return this.f49240c.previous();
        }
        W5 a10 = a(this.f49239b);
        if (a10 == null) {
            return this.f49240c.previous();
        }
        this.f49239b = a10;
        this.f49241d.add(a10);
        W5 w52 = this.f49239b;
        Y5 b10 = w52.b(w52.l().size());
        this.f49240c = b10;
        b10.previous();
        return this.f49240c.previous();
    }

    @Override
    public final C10340xw0 a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22) {
        return this.f49240c.a((C4798y<?>) c4798y, c7215fB, l22);
    }

    @Override
    public final VJ a(C4798y c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, B60 b60) {
        return this.f49240c.a((C4798y<?>) c4798y, c7215fB, z52, c10340xw0, b60);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return this.f49240c.a((C4798y<?>) c4798y, h52);
    }

    @Override
    public final boolean a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        return this.f49240c.a((C4798y<?>) c4798y, c7215fB, m22, (Consumer<C9389sD>) consumer);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, C4515j0 c4515j0, C10696a c10696a) {
        this.f49240c.a((C4798y<?>) c4798y, c7215fB, m22, c4515j0, c10696a);
    }

    @Override
    public final void a(C7215fB c7215fB, int i10) {
        this.f49240c.a(c7215fB, i10);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22, C10696a c10696a) {
        this.f49240c.a((C4798y<?>) c4798y, c7215fB, l22, c10696a);
    }

    @Override
    public final void a(C4798y c4798y, C10340xw0 c10340xw0) {
        this.f49240c.a((C4798y<?>) c4798y, c10340xw0);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, C4554l1 c4554l1, C10696a c10696a) {
        this.f49240c.a((C4798y<?>) c4798y, c7215fB, c4554l1, c10696a);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, Set set, C10696a c10696a) {
        this.f49240c.a((C4798y<?>) c4798y, c7215fB, z52, c10340xw0, (Set<W5>) set, c10696a);
    }

    @Override
    public final void a(C4798y c4798y, C7215fB c7215fB, ListIterator listIterator, Set set, C10696a c10696a) {
        this.f49240c.a((C4798y<?>) c4798y, c7215fB, (ListIterator<W5>) listIterator, (Set<W5>) set, c10696a);
    }

    @Override
    public final W5 a(C7215fB c7215fB, ListIterator listIterator, boolean z10) {
        return this.f49240c.a(c7215fB, (ListIterator<W5>) listIterator, z10);
    }

    @Override
    public final W5 a(C7215fB c7215fB, int i10, ListIterator listIterator) {
        return this.f49240c.a(c7215fB, i10, (ListIterator<W5>) listIterator);
    }

    @Override
    public final W5 a(C7215fB c7215fB, Z5 z52, C8570nJ c8570nJ, UnaryOperator unaryOperator) {
        return this.f49240c.a(c7215fB, z52, c8570nJ, (UnaryOperator<W5>) unaryOperator);
    }

    @Override
    public final W5 a(C4798y c4798y, C7215fB c7215fB, C7215fB c7215fB2, ListIterator listIterator, Set set, com.android.tools.r8.graph.H2 h22) {
        return this.f49240c.a((C4798y<?>) c4798y, c7215fB, c7215fB2, (ListIterator<W5>) listIterator, (Set<W5>) set, h22);
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, Collection collection, C8570nJ c8570nJ) {
        return this.f49240c.a(c7215fB, z52, (Collection<? extends AbstractC10561zE>) collection, c8570nJ);
    }

    public static boolean a(W5 w52, W5 w53) {
        boolean z10 = f49238e;
        if (!z10 && !w52.v().contains(w53)) {
            throw new AssertionError();
        }
        if (!z10 && !w53.u().contains(w52)) {
            throw new AssertionError();
        }
        C4960Bz U10 = w52.i().U();
        return U10 != null && U10.v2() == w53 && w53.u().size() == 1;
    }

    @Override
    public final AbstractC10561zE next() {
        AbstractC10561zE next = this.f49240c.next();
        if (next.G1()) {
            W5 v22 = next.U().v2();
            if (a(this.f49239b, v22)) {
                while (v22.G()) {
                    W5 a10 = R5.a(v22);
                    if (!a(v22, a10)) {
                        break;
                    }
                    this.f49241d.add(v22);
                    v22 = a10;
                }
                this.f49239b = v22;
                this.f49241d.add(v22);
                Y5 I10 = this.f49239b.I();
                this.f49240c = I10;
                return I10.next();
            }
        }
        return next;
    }

    public static W5 a(W5 w52) {
        W5 w53;
        if (w52.u().size() != 1 || !a(w52.u().get(0), w52)) {
            return null;
        }
        W5 w54 = w52.u().get(0);
        while (true) {
            w53 = w54;
            if (w53.u().size() != 1 || !a(w53.u().get(0), w53) || !w53.G()) {
                break;
            }
            w54 = w53.u().get(0);
        }
        if (w53.G()) {
            return null;
        }
        return w53;
    }

    @Override
    public final void a(Collection collection) {
        this.f49240c.a((Collection<AbstractC10561zE>) collection);
    }
}
