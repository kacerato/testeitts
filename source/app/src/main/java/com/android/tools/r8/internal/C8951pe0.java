package com.android.tools.r8.internal;

public final class C8951pe0 extends ZQ implements InterfaceC8676ny {

    public final C9451se0 f51582b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8951pe0(C9451se0 c9451se0) {
        super(1);
        this.f51582b = c9451se0;
    }

    @Override
    public final Object a(Object obj) {
        C8866p50 c8866p50 = (C8866p50) obj;
        GJ.c(c8866p50, "<name for destructuring parameter 0>");
        EnumC8289lg0 enumC8289lg0 = (EnumC8289lg0) c8866p50.f51436b;
        String str = (String) c8866p50.f51437c;
        C7789ig0 c7789ig0 = this.f51582b.f52423b.f44525b;
        GJ.a(enumC8289lg0);
        return new C7619hf(c7789ig0.a(enumC8289lg0, str));
    }
}
