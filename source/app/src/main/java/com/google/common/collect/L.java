package com.google.common.collect;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class L<T> extends Ordering<T> implements Serializable {

    public static final long f65853e = 0;

    public final Comparator<? super T>[] f65854d;

    public L(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.f65854d = new Comparator[]{comparator, comparator2};
    }

    @Override
    public int compare(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11) {
        int i10 = 0;
        while (true) {
            Comparator<? super T>[] comparatorArr = this.f65854d;
            if (i10 >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i10].compare(t10, t11);
            if (compare != 0) {
                return compare;
            }
            i10++;
        }
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof L) {
            return Arrays.equals(this.f65854d, ((L) obj).f65854d);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f65854d);
    }

    public String toString() {
        String arrays = Arrays.toString(this.f65854d);
        StringBuilder sb2 = new StringBuilder(String.valueOf(arrays).length() + 19);
        sb2.append("Ordering.compound(");
        sb2.append(arrays);
        sb2.append(")");
        return sb2.toString();
    }

    public L(Iterable<? extends Comparator<? super T>> iterable) {
        this.f65854d = (Comparator[]) D1.R(iterable, new Comparator[0]);
    }
}
