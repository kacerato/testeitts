package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class o<T> implements Fe.c<List<T>, List<T>, List<T>> {

    public final Comparator<? super T> f92447b;

    public o(Comparator<? super T> comparator) {
        this.f92447b = comparator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0037, code lost:
    
        r3 = null;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<T> apply(List<T> list, List<T> list2) throws Exception {
        T t10;
        int size = list.size() + list2.size();
        if (size == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator<T> it = list.iterator();
        Iterator<T> it2 = list2.iterator();
        T next = it.hasNext() ? it.next() : null;
        if (it2.hasNext()) {
            t10 = it2.next();
            while (next != null && t10 != null) {
                if (this.f92447b.compare(next, t10) < 0) {
                    arrayList.add(next);
                    next = it.hasNext() ? it.next() : null;
                } else {
                    arrayList.add(t10);
                    if (it2.hasNext()) {
                        t10 = it2.next();
                    }
                }
            }
            if (next != null) {
                arrayList.add(next);
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            } else {
                arrayList.add(t10);
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
            return arrayList;
        }
        t10 = null;
    }
}
