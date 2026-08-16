package com.android.tools.r8.internal;

import android.content.Context;
import java.util.Iterator;

public final class C5565Mj implements InterfaceC8638nl0 {

    public final String f42352a;

    public final int f42353b;

    public final InterfaceC4958By f42354c;

    public C5565Mj(String str, int i10, InterfaceC4958By interfaceC4958By) {
        GJ.c(str, Context.INPUT_SERVICE);
        GJ.c(interfaceC4958By, "getNextMatch");
        this.f42352a = str;
        this.f42353b = i10;
        this.f42354c = interfaceC4958By;
    }

    @Override
    public final Iterator iterator() {
        return new C5508Lj(this);
    }
}
