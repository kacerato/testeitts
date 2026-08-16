package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class r implements InterfaceC12157q {

    public final String f62410b;

    public final ArrayList f62411c;

    public r(String str, List list) {
        this.f62410b = str;
        ArrayList arrayList = new ArrayList();
        this.f62411c = arrayList;
        arrayList.addAll(list);
    }

    @Override
    public final String P1() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override
    public final Double Q1() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override
    public final Boolean R1() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override
    public final Iterator a() {
        return null;
    }

    public final String b() {
        return this.f62410b;
    }

    public final ArrayList c() {
        return this.f62411c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        String str = this.f62410b;
        if (str == null ? rVar.f62410b == null : str.equals(rVar.f62410b)) {
            return this.f62411c.equals(rVar.f62411c);
        }
        return false;
    }

    @Override
    public final InterfaceC12157q g() {
        return this;
    }

    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    public final int hashCode() {
        String str = this.f62410b;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f62411c.hashCode();
    }
}
