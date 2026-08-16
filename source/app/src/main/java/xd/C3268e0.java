package Xd;

import ke.InterfaceC13971e;

public class C3268e0 extends X implements InterfaceC13971e {

    public static final long f28472e = 487447009682186044L;

    public C3268e0(InterfaceC13971e interfaceC13971e) {
        super(interfaceC13971e);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28427c) {
            equals = this.f28426b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28427c) {
            hashCode = this.f28426b.hashCode();
        }
        return hashCode;
    }

    public C3268e0(InterfaceC13971e interfaceC13971e, Object obj) {
        super(interfaceC13971e, obj);
    }
}
