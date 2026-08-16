package com.android.tools.r8.internal;

public final class C6215Xq0 implements InterfaceC6044Uq0 {

    public static final InterfaceC6044Uq0 f45835d = new InterfaceC6044Uq0() {
        @Override
        public final Object get() {
            return C6215Xq0.a();
        }
    };

    public volatile InterfaceC6044Uq0 f45836b;

    public Object f45837c;

    public C6215Xq0(InterfaceC6044Uq0 interfaceC6044Uq0) {
        interfaceC6044Uq0.getClass();
        this.f45836b = interfaceC6044Uq0;
    }

    public static Void a() {
        throw new IllegalStateException();
    }

    @Override
    public final Object get() {
        InterfaceC6044Uq0 interfaceC6044Uq0 = this.f45836b;
        InterfaceC6044Uq0 interfaceC6044Uq02 = f45835d;
        if (interfaceC6044Uq0 != interfaceC6044Uq02) {
            synchronized (this) {
                try {
                    if (this.f45836b != interfaceC6044Uq02) {
                        Object obj = this.f45836b.get();
                        this.f45837c = obj;
                        this.f45836b = interfaceC6044Uq02;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f45837c;
    }

    public final String toString() {
        Object obj = this.f45836b;
        StringBuilder sb2 = new StringBuilder("Suppliers.memoize(");
        if (obj == f45835d) {
            obj = "<supplier that returned " + this.f45837c + ">";
        }
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }
}
