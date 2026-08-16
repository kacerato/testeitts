package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C6623bg0 extends ZQ implements InterfaceC8676ny {

    public static final C6623bg0 f46821b = new C6623bg0();

    public C6623bg0() {
        super(1);
    }

    @Override
    public final Object a(Object obj) {
        return a((C8623ng0) obj);
    }

    public static C4898Ax a(C8623ng0 c8623ng0) {
        InterfaceC8638nl0 interfaceC8638nl0;
        GJ.c(c8623ng0, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c);
        ArrayList arrayList = c8623ng0.f51026g;
        if (arrayList != null) {
            interfaceC8638nl0 = new C7619hf(arrayList);
        } else {
            interfaceC8638nl0 = C6220Xt.f45846a;
        }
        return AbstractC8972pl0.b(AbstractC8972pl0.a((Object[]) new InterfaceC8638nl0[]{AbstractC8972pl0.a((Object[]) new String[]{c8623ng0.a() + " : reachable=" + c8623ng0.b()}), new C5874Rs0(interfaceC8638nl0, C6456ag0.f46576b)}));
    }
}
