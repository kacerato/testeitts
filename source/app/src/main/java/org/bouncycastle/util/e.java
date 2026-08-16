package org.bouncycastle.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class e<T> implements t<T>, l<T> {

    public Collection<T> f102327b;

    public e(Collection<T> collection) {
        this.f102327b = new ArrayList(collection);
    }

    @Override
    public Collection<T> a(r<T> rVar) {
        if (rVar == null) {
            return new ArrayList(this.f102327b);
        }
        ArrayList arrayList = new ArrayList();
        for (T t10 : this.f102327b) {
            if (rVar.Z2(t10)) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @Override
    public Iterator<T> iterator() {
        return a(null).iterator();
    }
}
