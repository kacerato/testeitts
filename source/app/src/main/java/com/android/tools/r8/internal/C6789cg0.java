package com.android.tools.r8.internal;

import java.util.Map;

public final class C6789cg0 extends ZQ implements InterfaceC8676ny {

    public final C5323Ie0 f47129b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6789cg0(C5323Ie0 c5323Ie0) {
        super(1);
        this.f47129b = c5323Ie0;
    }

    @Override
    public final Object a(Object obj) {
        C5323Ie0 c5323Ie0 = this.f47129b;
        Object key = ((Map.Entry) obj).getKey();
        GJ.b(key, "it.key");
        c5323Ie0.getClass();
        return Boolean.valueOf(c5323Ie0.f41158b.matcher((CharSequence) key).matches());
    }
}
