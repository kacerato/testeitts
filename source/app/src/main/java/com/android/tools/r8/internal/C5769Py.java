package com.android.tools.r8.internal;

public final class C5769Py implements InterfaceC7763iW {

    public static final C5769Py f43415a = new C5769Py();

    @Override
    public final void a(Class cls) {
        if (!AbstractC6059Uy.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            AbstractC6059Uy.a(cls.asSubclass(AbstractC6059Uy.class));
            throw null;
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }

    @Override
    public final boolean b(Class cls) {
        return AbstractC6059Uy.class.isAssignableFrom(cls);
    }
}
