package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.Spliterator;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C5920Sm0 extends AbstractC7552hC {

    public final transient Object f44309d;

    public C5920Sm0(Object obj) {
        obj.getClass();
        this.f44309d = obj;
    }

    @Override
    public final AbstractC7552hC subList(int i10, int i11) {
        U60.a(i10, i11, 1);
        return i10 == i11 ? C6190Xe0.f45779e : this;
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final Object get(int i10) {
        U60.a(i10, 1);
        return this.f44309d;
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return new EK(this.f44309d);
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final Spliterator spliterator() {
        return Collections.singleton(this.f44309d).spliterator();
    }

    @Override
    public final String toString() {
        return "[" + this.f44309d.toString() + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Override
    public final Iterator iterator() {
        return new EK(this.f44309d);
    }
}
