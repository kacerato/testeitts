package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;

public final class RC extends C5902Se0 implements InterfaceC7976jn0 {
    public RC(C7286ff0 c7286ff0, AbstractC7552hC abstractC7552hC) {
        super(c7286ff0, abstractC7552hC);
    }

    @Override
    public final Comparator comparator() {
        return ((WC) this.f44260d).f45337e;
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public final AbstractC7552hC f(int i10, int i11) {
        return new C7286ff0(new C7385gC(this, i10, i11 - i10), ((WC) this.f44260d).f45337e).a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        if (r0 >= 0) goto L9;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int indexOf(Object obj) {
        int i10;
        C7286ff0 c7286ff0 = (C7286ff0) ((WC) this.f44260d);
        c7286ff0.getClass();
        if (obj != null) {
            try {
                i10 = Collections.binarySearch(c7286ff0.f48036h, obj, c7286ff0.f45337e);
            } catch (ClassCastException unused) {
            }
        }
        i10 = -1;
        if (i10 < 0 || !get(i10).equals(obj)) {
            return -1;
        }
        return i10;
    }

    @Override
    public final XB j() {
        return (WC) this.f44260d;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        return indexOf(obj);
    }

    @Override
    public final Spliterator spliterator() {
        int size = ((C7286ff0) ((WC) this.f44260d)).f48036h.size();
        AbstractC7552hC abstractC7552hC = this.f44261e;
        Objects.requireNonNull(abstractC7552hC);
        return AbstractC5901Se.a(size, 1301, new C7927jV0(abstractC7552hC), ((WC) this.f44260d).f45337e);
    }
}
