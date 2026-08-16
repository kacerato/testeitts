package com.google.common.collect;

import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12517f1<E extends Enum<E>> extends AbstractC12564r1<E> {

    public final transient EnumSet<E> f66622g;

    @J2.b
    public transient int f66623h;

    public static class b<E extends Enum<E>> implements Serializable {

        public static final long f66624c = 0;

        public final EnumSet<E> f66625b;

        public b(EnumSet<E> enumSet) {
            this.f66625b = enumSet;
        }

        public Object a() {
            return new C12517f1(this.f66625b.m1756clone());
        }
    }

    public static AbstractC12564r1 H(EnumSet enumSet) {
        int size = enumSet.size();
        return size != 0 ? size != 1 ? new C12517f1(enumSet) : AbstractC12564r1.A(D1.z(enumSet)) : AbstractC12564r1.z();
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return this.f66622g.contains(obj);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof C12517f1) {
            collection = ((C12517f1) collection).f66622g;
        }
        return this.f66622g.containsAll(collection);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12517f1) {
            obj = ((C12517f1) obj).f66622g;
        }
        return this.f66622g.equals(obj);
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public int hashCode() {
        int i10 = this.f66623h;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = this.f66622g.hashCode();
        this.f66623h = hashCode;
        return hashCode;
    }

    @Override
    public e3<E> iterator() {
        return E1.f0(this.f66622g.iterator());
    }

    @Override
    public boolean isEmpty() {
        return this.f66622g.isEmpty();
    }

    @Override
    public Object j() {
        return new b(this.f66622g);
    }

    @Override
    public int size() {
        return this.f66622g.size();
    }

    @Override
    public String toString() {
        return this.f66622g.toString();
    }

    @Override
    public boolean y() {
        return true;
    }

    public C12517f1(EnumSet<E> enumSet) {
        this.f66622g = enumSet;
    }
}
