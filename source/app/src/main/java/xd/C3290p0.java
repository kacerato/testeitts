package Xd;

import ke.InterfaceC13972f;

public class C3290p0 extends C3276i0 implements InterfaceC13972f {

    public static final long f28564e = 487447009682186044L;

    public C3290p0(InterfaceC13972f interfaceC13972f) {
        super(interfaceC13972f);
    }

    @Override
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this.f28507c) {
            equals = this.f28506b.equals(obj);
        }
        return equals;
    }

    @Override
    public int hashCode() {
        int hashCode;
        synchronized (this.f28507c) {
            hashCode = this.f28506b.hashCode();
        }
        return hashCode;
    }

    public C3290p0(InterfaceC13972f interfaceC13972f, Object obj) {
        super(interfaceC13972f, obj);
    }
}
