package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

public abstract class WC extends XC implements NavigableSet, InterfaceC7976jn0 {

    public static final int f45336g = 0;

    public final transient Comparator f45337e;

    public transient WC f45338f;

    public WC(Comparator comparator) {
        this.f45337e = comparator;
    }

    public static C7286ff0 a(Comparator comparator) {
        return C6935dZ.f47416b.equals(comparator) ? C7286ff0.f48035i : new C7286ff0(C6190Xe0.f45779e, comparator);
    }

    @Override
    public final Comparator comparator() {
        return this.f45337e;
    }

    @Override
    public final NavigableSet headSet(Object obj, boolean z10) {
        obj.getClass();
        C7286ff0 c7286ff0 = (C7286ff0) this;
        return c7286ff0.e(0, c7286ff0.a(obj, z10));
    }

    @Override
    public final WC descendingSet() {
        WC wc2 = this.f45338f;
        if (wc2 == null) {
            C7286ff0 c7286ff0 = (C7286ff0) this;
            Comparator reverseOrder = Collections.reverseOrder(c7286ff0.f45337e);
            wc2 = c7286ff0.isEmpty() ? a(reverseOrder) : new C7286ff0(c7286ff0.f48036h.i(), reverseOrder);
            this.f45338f = wc2;
            wc2.f45338f = this;
        }
        return wc2;
    }

    @Override
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
        obj.getClass();
        obj2.getClass();
        if (this.f45337e.compare(obj, obj2) <= 0) {
            C7286ff0 c7286ff0 = (C7286ff0) this;
            C7286ff0 e10 = c7286ff0.e(c7286ff0.b(obj, z10), c7286ff0.f48036h.size());
            return e10.e(0, e10.a(obj2, z11));
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final NavigableSet tailSet(Object obj, boolean z10) {
        obj.getClass();
        C7286ff0 c7286ff0 = (C7286ff0) this;
        return c7286ff0.e(c7286ff0.b(obj, z10), c7286ff0.f48036h.size());
    }

    @Override
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        C7286ff0 c7286ff0 = (C7286ff0) this;
        return c7286ff0.e(0, c7286ff0.a(obj, false));
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        C7286ff0 c7286ff0 = (C7286ff0) this;
        return c7286ff0.e(c7286ff0.b(obj, true), c7286ff0.f48036h.size());
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        if (this.f45337e.compare(obj, obj2) <= 0) {
            C7286ff0 c7286ff0 = (C7286ff0) this;
            C7286ff0 e10 = c7286ff0.e(c7286ff0.b(obj, true), c7286ff0.f48036h.size());
            return e10.e(0, e10.a(obj2, false));
        }
        throw new IllegalArgumentException();
    }
}
