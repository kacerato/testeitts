package com.android.tools.r8.internal;

import java.util.ConcurrentModificationException;
import java.util.List;
import java.util.ListIterator;

public final class C10352y0 extends C10018w0 implements ListIterator {

    public final C10519z0 f53920e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10352y0(C10519z0 c10519z0) {
        super(c10519z0);
        this.f53920e = c10519z0;
    }

    public final ListIterator a() {
        this.f53395d.b();
        if (this.f53395d.f53658c == this.f53394c) {
            return (ListIterator) this.f53393b;
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final void add(Object obj) {
        boolean isEmpty = this.f53920e.isEmpty();
        a().add(obj);
        C10519z0 c10519z0 = this.f53920e;
        c10519z0.f54256g.f38498g++;
        if (isEmpty) {
            c10519z0.a();
        }
    }

    @Override
    public final boolean hasPrevious() {
        return a().hasPrevious();
    }

    @Override
    public final int nextIndex() {
        return a().nextIndex();
    }

    @Override
    public final Object previous() {
        return a().previous();
    }

    @Override
    public final int previousIndex() {
        return a().previousIndex();
    }

    @Override
    public final void set(Object obj) {
        a().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10352y0(C10519z0 c10519z0, int i10) {
        super(c10519z0, ((List) c10519z0.f53658c).listIterator(i10));
        this.f53920e = c10519z0;
    }
}
