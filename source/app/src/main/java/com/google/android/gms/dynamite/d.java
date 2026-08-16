package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

public final class d implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0955a interfaceC0955a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int a10 = interfaceC0955a.a(context, str, false);
        bVar.f61456b = a10;
        bVar.f61457c = a10 != 0 ? 1 : 0;
        return bVar;
    }
}
