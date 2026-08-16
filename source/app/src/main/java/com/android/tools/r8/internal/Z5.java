package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.function.Predicate;

public class Z5 implements ListIterator<W5> {

    public final ListIterator f46159b;

    public W5 f46160c;

    public Z5(C7215fB c7215fB) {
        this.f46159b = c7215fB.f47897d.listIterator();
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public static boolean b(W5 w52, W5 w53) {
        return w53 == w52;
    }

    @Override
    public final void add(W5 w52) {
        this.f46159b.add(w52);
    }

    @Override
    public final boolean hasNext() {
        return this.f46159b.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f46159b.hasPrevious();
    }

    @Override
    public final Object next() {
        W5 w52 = (W5) this.f46159b.next();
        this.f46160c = w52;
        return w52;
    }

    @Override
    public final int nextIndex() {
        return this.f46159b.nextIndex();
    }

    @Override
    public final W5 previous() {
        W5 w52 = (W5) this.f46159b.previous();
        this.f46160c = w52;
        return w52;
    }

    @Override
    public final int previousIndex() {
        return this.f46159b.previousIndex();
    }

    @Override
    public final void remove() {
        W5 w52 = this.f46160c;
        if (w52 == null) {
            throw new IllegalStateException();
        }
        for (AbstractC10561zE a10 = w52.f45293f.a(); a10 != null; a10 = a10.Y0()) {
            a10.U0();
        }
        CE l10 = this.f46160c.l();
        l10.f39167c = null;
        l10.f39168d = null;
        l10.f39169e = 0;
        this.f46159b.remove();
        this.f46160c = null;
    }

    @Override
    public final void set(W5 w52) {
        this.f46159b.set(w52);
    }

    public final void a(final W5 w52) {
        this.f46160c = (W5) this.f46159b.next();
    }

    public final W5 b(final W5 w52) {
        return (W5) AbstractC10241xK.a(this, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Z5.b(W5.this, (W5) obj);
            }
        });
    }

    public Z5(C7215fB c7215fB, int i10) {
        this.f46159b = c7215fB.f47897d.listIterator(i10);
    }
}
