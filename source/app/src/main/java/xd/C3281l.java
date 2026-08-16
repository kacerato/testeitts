package Xd;

import ke.InterfaceC13967a;

public class C3281l extends C3267e implements InterfaceC13967a {

    public static final long f28528e = 487447009682186044L;

    public C3281l(InterfaceC13967a interfaceC13967a) {
        super(interfaceC13967a);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28471c) {
            equals = this.f28470b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28471c) {
            hashCode = this.f28470b.hashCode();
        }
        return hashCode;
    }

    public C3281l(InterfaceC13967a interfaceC13967a, Object obj) {
        super(interfaceC13967a, obj);
    }
}
