package com.google.common.collect;

import com.google.common.collect.Ordering;
import java.io.Serializable;
import java.util.List;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class C12516f0<T> extends Ordering<T> implements Serializable {

    public static final long f66620e = 0;

    public final AbstractC12529i1<T, Integer> f66621d;

    public C12516f0(List<T> list) {
        this(Q1.Q(list));
    }

    public final int I(T t10) {
        Integer num = this.f66621d.get(t10);
        if (num != null) {
            return num.intValue();
        }
        throw new Ordering.IncomparableValueException(t10);
    }

    @Override
    public int compare(T t10, T t11) {
        return I(t10) - I(t11);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof C12516f0) {
            return this.f66621d.equals(((C12516f0) obj).f66621d);
        }
        return false;
    }

    public int hashCode() {
        return this.f66621d.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f66621d.o());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 19);
        sb2.append("Ordering.explicit(");
        sb2.append(valueOf);
        sb2.append(")");
        return sb2.toString();
    }

    public C12516f0(AbstractC12529i1<T, Integer> abstractC12529i1) {
        this.f66621d = abstractC12529i1;
    }
}
