package com.google.android.gms.internal.measurement;

import java.util.Iterator;

public final class C12112l implements Iterator {

    public final Iterator f62348b;

    public C12112l(Iterator it) {
        this.f62348b = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f62348b.hasNext();
    }

    @Override
    public final Object next() {
        return new C12192u((String) this.f62348b.next());
    }
}
