package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class G1<T> extends Ordering<Iterable<T>> implements Serializable {

    public static final long f65776e = 0;

    public final Comparator<? super T> f65777d;

    public G1(Comparator<? super T> comparator) {
        this.f65777d = comparator;
    }

    @Override
    public int compare(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext()) {
                return 1;
            }
            int compare = this.f65777d.compare(it.next(), it2.next());
            if (compare != 0) {
                return compare;
            }
        }
        return it2.hasNext() ? -1 : 0;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof G1) {
            return this.f65777d.equals(((G1) obj).f65777d);
        }
        return false;
    }

    public int hashCode() {
        return this.f65777d.hashCode() ^ 2075626741;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f65777d);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
        sb2.append(valueOf);
        sb2.append(".lexicographical()");
        return sb2.toString();
    }
}
