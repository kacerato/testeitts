package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C11903a;

public final class t implements ComponentCallbacks2C11903a.InterfaceC0951a {

    public final d f61247a;

    public t(d dVar) {
        this.f61247a = dVar;
    }

    @Override
    public final void a(boolean z10) {
        Handler handler;
        Handler handler2;
        d dVar = this.f61247a;
        handler = dVar.f61145p;
        handler2 = dVar.f61145p;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z10)));
    }
}
