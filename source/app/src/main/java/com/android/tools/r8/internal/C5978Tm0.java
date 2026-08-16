package com.android.tools.r8.internal;

import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C5978Tm0 extends QC {

    public final transient Object f44578d;

    public C5978Tm0(Object obj) {
        obj.getClass();
        this.f44578d = obj;
    }

    @Override
    public final AbstractC7552hC a() {
        return new C5920Sm0(this.f44578d);
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f44578d.equals(obj);
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f44578d.hashCode();
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return new EK(this.f44578d);
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final String toString() {
        return "[" + this.f44578d.toString() + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Override
    public final int a(int i10, Object[] objArr) {
        objArr[i10] = this.f44578d;
        return i10 + 1;
    }

    @Override
    public final Iterator iterator() {
        return new EK(this.f44578d);
    }
}
