package com.android.tools.r8.internal;

import java.util.ArrayList;

public abstract class AbstractC5694Op0 {

    public static final InterfaceC5636Np0[] f43053a = {new C5347Ip0(), new C5463Kp0(), new C5521Lp0(), new C5405Jp0()};

    public static String a(InterfaceC10486yp0 interfaceC10486yp0, C5578Mp0 c5578Mp0) {
        if (interfaceC10486yp0.d()) {
            return interfaceC10486yp0.c();
        }
        ArrayList arrayList = interfaceC10486yp0.a().f54321f;
        if (arrayList.size() != 2) {
            return null;
        }
        return (String) c5578Mp0.f42416h.get(((C10340xw0) arrayList.get(1)).i());
    }
}
