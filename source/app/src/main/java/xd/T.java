package Xd;

import ke.InterfaceC13970d;

public class T extends L implements InterfaceC13970d {

    public static final long f28409e = 487447009682186044L;

    public T(InterfaceC13970d interfaceC13970d) {
        super(interfaceC13970d);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28363c) {
            equals = this.f28362b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28363c) {
            hashCode = this.f28362b.hashCode();
        }
        return hashCode;
    }

    public T(InterfaceC13970d interfaceC13970d, Object obj) {
        super(interfaceC13970d, obj);
    }
}
