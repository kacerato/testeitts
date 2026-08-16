package com.android.tools.r8.naming;

import com.android.tools.r8.MapIdEnvironment;
import com.android.tools.r8.MapIdProvider;
import com.android.tools.r8.internal.AbstractC8713oA;
import com.android.tools.r8.internal.AbstractC8880pA;
import com.android.tools.r8.internal.InterfaceC5429Kb;
import com.android.tools.r8.internal.InterfaceC8212lA;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public final class K0 implements InterfaceC5429Kb {

    public final InterfaceC8212lA f55676a;

    public K0() {
        int i10 = AbstractC8880pA.f51464a;
        this.f55676a = AbstractC8713oA.f51183a.a();
    }

    public static MapIdProvider a(MapIdProvider mapIdProvider) {
        return mapIdProvider != null ? mapIdProvider : new MapIdProvider() {
            @Override
            public final String get(MapIdEnvironment mapIdEnvironment) {
                String substring;
                substring = mapIdEnvironment.getMapHash().substring(0, 7);
                return substring;
            }
        };
    }

    @Override
    public final InterfaceC5429Kb a(String str) {
        InterfaceC8212lA interfaceC8212lA = this.f55676a;
        Charset charset = StandardCharsets.UTF_8;
        com.android.tools.r8.internal.F f10 = (com.android.tools.r8.internal.F) interfaceC8212lA;
        f10.getClass();
        f10.a(str.toString().getBytes(charset));
        return this;
    }
}
