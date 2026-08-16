package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Arrays;
import java.util.Collection;
import java.util.ListIterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

public interface EE extends AE, ListIterator<AbstractC10561zE>, InterfaceC9372s70 {
    static {
        boolean z10 = DE.f39471a;
    }

    static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 == abstractC10561zE;
    }

    static boolean b(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 == abstractC10561zE;
    }

    EE a(C7215fB c7215fB, Z5 z52, Collection<? extends AbstractC10561zE> collection, C8570nJ c8570nJ);

    VJ a(C4798y<?> c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, B60 b60);

    W5 a(C4798y<?> c4798y, C7215fB c7215fB, C7215fB c7215fB2, ListIterator<W5> listIterator, Set<W5> set, com.android.tools.r8.graph.H2 h22);

    W5 a(C7215fB c7215fB, int i10, ListIterator<W5> listIterator);

    W5 a(C7215fB c7215fB, Z5 z52, C8570nJ c8570nJ, UnaryOperator<W5> unaryOperator);

    W5 a(C7215fB c7215fB, ListIterator<W5> listIterator, boolean z10);

    C10340xw0 a(C4798y<?> c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22);

    C10340xw0 a(C7215fB c7215fB, C8570nJ c8570nJ, long j10, AbstractC8999pu0 abstractC8999pu0);

    void a(C4798y<?> c4798y, C7215fB c7215fB, com.android.tools.r8.graph.L2 l22, C10696a c10696a);

    void a(C4798y<?> c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, C4515j0 c4515j0, C10696a c10696a);

    void a(C4798y<?> c4798y, C7215fB c7215fB, C4554l1 c4554l1, C10696a c10696a);

    void a(C4798y<?> c4798y, C7215fB c7215fB, Z5 z52, C10340xw0 c10340xw0, Set<W5> set, C10696a c10696a);

    void a(C4798y<?> c4798y, C7215fB c7215fB, ListIterator<W5> listIterator, Set<W5> set, C10696a c10696a);

    void a(C4798y<?> c4798y, C10340xw0 c10340xw0);

    void a(C7215fB c7215fB, int i10);

    void a(AbstractC10561zE abstractC10561zE, C10696a c10696a);

    void a(Collection<AbstractC10561zE> collection);

    boolean a(C4798y<?> c4798y, com.android.tools.r8.graph.H5 h52);

    boolean a(C4798y<?> c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22, Consumer<C9389sD> consumer);

    default void c(final AbstractC10561zE abstractC10561zE) {
        b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EE.a(AbstractC10561zE.this, (AbstractC10561zE) obj);
            }
        });
    }

    default void d(AbstractC10561zE abstractC10561zE) {
        previous();
        add(abstractC10561zE);
        AbstractC10561zE previous = previous();
        if (!DE.f39471a && previous != abstractC10561zE) {
            throw new AssertionError();
        }
    }

    default void e(AbstractC10561zE abstractC10561zE) {
        add(abstractC10561zE);
        AbstractC10561zE previous = previous();
        if (!DE.f39471a && previous != abstractC10561zE) {
            throw new AssertionError();
        }
    }

    void i();

    @Override
    AbstractC10561zE previous();

    @Override
    void remove();

    default void s() {
        throw new C6501av0();
    }

    default void a(AbstractC10561zE[] abstractC10561zEArr) {
        for (AbstractC10561zE abstractC10561zE : abstractC10561zEArr) {
            add(abstractC10561zE);
        }
    }

    default void b(AbstractC10561zE abstractC10561zE) {
        a(abstractC10561zE, (C10696a) null);
    }

    default AbstractC10561zE c(Predicate predicate) {
        a(predicate);
        return previous();
    }

    default AbstractC10561zE b(Predicate predicate) {
        d(predicate);
        return next();
    }

    default EE a(C7215fB c7215fB, Z5 z52, AbstractC10561zE[] abstractC10561zEArr, C8570nJ c8570nJ) {
        return a(c7215fB, z52, Arrays.asList(abstractC10561zEArr), c8570nJ);
    }

    default void c(C7215fB c7215fB) {
        a(c7215fB, 0);
    }

    default W5 b(C7215fB c7215fB) {
        return a(c7215fB, (ListIterator<W5>) null);
    }

    default C10340xw0 a(C7215fB c7215fB, C8570nJ c8570nJ) {
        return a(c7215fB, c8570nJ, 0L, AbstractC8999pu0.m());
    }

    default W5 b(C7215fB c7215fB, int i10) {
        return a(c7215fB, i10, (ListIterator<W5>) null);
    }

    default void a(final AbstractC10561zE abstractC10561zE) {
        c(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return EE.b(AbstractC10561zE.this, (AbstractC10561zE) obj);
            }
        });
    }

    default boolean a(C4798y c4798y, C7215fB c7215fB, com.android.tools.r8.graph.M2 m22) {
        return a((C4798y<?>) c4798y, c7215fB, m22, C6628bi.b());
    }

    default void a(C7215fB c7215fB, boolean z10) {
        a(c7215fB, C8704o7.a(z10));
    }

    default void a(C7215fB c7215fB) {
        a(c7215fB, 1);
    }

    default W5 a(C7215fB c7215fB, ListIterator<W5> listIterator) {
        return a(c7215fB, listIterator, hasPrevious() && n().o());
    }

    default W5 a(C7215fB c7215fB, Z5 z52, C8570nJ c8570nJ) {
        return a(c7215fB, z52, c8570nJ, (UnaryOperator<W5>) null);
    }

    default W5 a(C4798y<?> c4798y, C7215fB c7215fB, C7215fB c7215fB2) {
        Set<W5> c10 = AbstractC5513Ll0.c();
        W5 a10 = a(c4798y, c7215fB, c7215fB2, (ListIterator<W5>) null, c10, (com.android.tools.r8.graph.H2) null);
        c7215fB.b((Collection<W5>) c10);
        return a10;
    }
}
