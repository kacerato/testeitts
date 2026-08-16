package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;

public final class C6574bL extends AbstractC6907dL implements Iterable {

    public final ArrayList f46749b = new ArrayList();

    @Override
    public final boolean a() {
        return i().a();
    }

    @Override
    public final int b() {
        return i().b();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C6574bL) && ((C6574bL) obj).f46749b.equals(this.f46749b);
        }
        return true;
    }

    @Override
    public final long g() {
        return i().g();
    }

    @Override
    public final String h() {
        return i().h();
    }

    public final int hashCode() {
        return this.f46749b.hashCode();
    }

    public final AbstractC6907dL i() {
        int size = this.f46749b.size();
        if (size == 1) {
            return (AbstractC6907dL) this.f46749b.get(0);
        }
        throw new IllegalStateException(T60.a(size, "Array must have size 1, but has size "));
    }

    @Override
    public final Iterator iterator() {
        return this.f46749b.iterator();
    }
}
