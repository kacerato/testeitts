package Xd;

import java.util.Set;

public class C3261b<E> extends C3259a<E> implements Set<E> {

    public static final long f28446e = 487447009682186044L;

    public C3261b(Set<E> set, Object obj) {
        super(set, obj);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28440c) {
            equals = this.f28439b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28440c) {
            hashCode = this.f28439b.hashCode();
        }
        return hashCode;
    }
}
