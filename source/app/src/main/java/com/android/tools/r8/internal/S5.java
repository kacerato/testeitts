package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class S5 implements Iterator {

    public final AE f44078b;

    public AbstractC10561zE f44079c;

    public final AbstractC10561zE f44080d;

    public S5(W5 w52, AbstractC10561zE abstractC10561zE) {
        AbstractC10561zE next;
        this.f44080d = abstractC10561zE;
        AE H10 = w52.H();
        this.f44078b = H10;
        this.f44079c = (!H10.hasNext() || (next = H10.next()) == abstractC10561zE) ? null : next;
    }

    @Override
    public final boolean hasNext() {
        return this.f44079c != null;
    }

    @Override
    public final Object next() {
        AbstractC10561zE abstractC10561zE;
        AbstractC10561zE abstractC10561zE2 = this.f44079c;
        if (abstractC10561zE2 == null) {
            throw new NoSuchElementException();
        }
        if (!this.f44078b.hasNext() || (abstractC10561zE = this.f44078b.next()) == this.f44080d) {
            abstractC10561zE = null;
        }
        this.f44079c = abstractC10561zE;
        return abstractC10561zE2;
    }
}
