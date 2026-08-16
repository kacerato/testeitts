package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Map;

public abstract class O50 extends D1<O50> {
    public abstract O50 a(InterfaceC6078Vf interfaceC6078Vf, boolean z10);

    @Override
    public final D1 b(C4798y c4798y, D1 d12) {
        O50 o50 = (O50) d12;
        if (this instanceof C10039w7) {
            return o50;
        }
        o50.getClass();
        if (o50 instanceof C10337xv0) {
            return o50;
        }
        if ((o50 instanceof C10039w7) || (this instanceof C10337xv0)) {
            return this;
        }
        C9289rg d10 = d();
        C9289rg d11 = o50.d();
        if (d10.b(d11)) {
            return d10;
        }
        if (d11.b(d10)) {
            return d11;
        }
        IdentityHashMap identityHashMap = new IdentityHashMap(d11.f52098b.size() + d10.f52098b.size());
        for (Map.Entry entry : d10.f52098b.entrySet()) {
            InterfaceC6078Vf interfaceC6078Vf = (InterfaceC6078Vf) entry.getKey();
            R50 r50 = (R50) entry.getValue();
            R50 r502 = (R50) d11.f52098b.get(interfaceC6078Vf);
            r50.getClass();
            if (r502 != null && r50 != r502) {
                r50 = R50.f43797d;
            }
            identityHashMap.put(interfaceC6078Vf, r50);
        }
        for (Map.Entry entry2 : d11.f52098b.entrySet()) {
            InterfaceC6078Vf interfaceC6078Vf2 = (InterfaceC6078Vf) entry2.getKey();
            R50 r503 = (R50) entry2.getValue();
            R50 r504 = (R50) d10.f52098b.get(interfaceC6078Vf2);
            r503.getClass();
            if (r504 != null && r503 != r504) {
                r503 = R50.f43797d;
            }
            identityHashMap.put(interfaceC6078Vf2, r503);
        }
        return new C9289rg(identityHashMap);
    }

    @Override
    public final D1 c() {
        return this;
    }

    public C9289rg d() {
        return null;
    }

    public boolean e() {
        return false;
    }
}
