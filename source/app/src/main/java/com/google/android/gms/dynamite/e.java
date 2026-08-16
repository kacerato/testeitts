package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

public final class e implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0955a interfaceC0955a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        bVar.f61455a = interfaceC0955a.b(context, str);
        int i10 = 1;
        int a10 = interfaceC0955a.a(context, str, true);
        bVar.f61456b = a10;
        int i11 = bVar.f61455a;
        if (i11 == 0) {
            i11 = 0;
            if (a10 == 0) {
                i10 = 0;
                bVar.f61457c = i10;
                return bVar;
            }
        }
        if (i11 >= a10) {
            i10 = -1;
        }
        bVar.f61457c = i10;
        return bVar;
    }
}
