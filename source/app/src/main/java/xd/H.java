package Xd;

import ke.InterfaceC13969c;

public class H extends A implements InterfaceC13969c {

    public static final long f28327e = 487447009682186044L;

    public H(InterfaceC13969c interfaceC13969c) {
        super(interfaceC13969c);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28284c) {
            equals = this.f28283b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28284c) {
            hashCode = this.f28283b.hashCode();
        }
        return hashCode;
    }

    public H(InterfaceC13969c interfaceC13969c, Object obj) {
        super(interfaceC13969c, obj);
    }
}
