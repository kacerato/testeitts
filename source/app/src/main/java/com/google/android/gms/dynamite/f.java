package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

public final class f implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0955a interfaceC0955a) throws DynamiteModule.LoadingException {
        int a10;
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int b10 = interfaceC0955a.b(context, str);
        bVar.f61455a = b10;
        int i10 = 1;
        int i11 = 0;
        if (b10 != 0) {
            a10 = interfaceC0955a.a(context, str, false);
            bVar.f61456b = a10;
        } else {
            a10 = interfaceC0955a.a(context, str, true);
            bVar.f61456b = a10;
        }
        int i12 = bVar.f61455a;
        if (i12 != 0) {
            i11 = i12;
        } else if (a10 == 0) {
            i10 = 0;
            bVar.f61457c = i10;
            return bVar;
        }
        if (i11 >= a10) {
            i10 = -1;
        }
        bVar.f61457c = i10;
        return bVar;
    }
}
