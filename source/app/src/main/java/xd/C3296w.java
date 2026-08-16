package Xd;

import ke.InterfaceC13968b;

public class C3296w extends C3289p implements InterfaceC13968b {

    public static final long f28622e = 487447009682186044L;

    public C3296w(InterfaceC13968b interfaceC13968b) {
        super(interfaceC13968b);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28563c) {
            equals = this.f28562b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28563c) {
            hashCode = this.f28562b.hashCode();
        }
        return hashCode;
    }

    public C3296w(InterfaceC13968b interfaceC13968b, Object obj) {
        super(interfaceC13968b, obj);
    }
}
