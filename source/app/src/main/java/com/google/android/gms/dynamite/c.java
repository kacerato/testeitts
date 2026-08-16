package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

public final class c implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0955a interfaceC0955a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int b10 = interfaceC0955a.b(context, str);
        bVar.f61455a = b10;
        if (b10 != 0) {
            bVar.f61457c = -1;
        } else {
            int a10 = interfaceC0955a.a(context, str, true);
            bVar.f61456b = a10;
            if (a10 != 0) {
                bVar.f61457c = 1;
            }
        }
        return bVar;
    }
}
