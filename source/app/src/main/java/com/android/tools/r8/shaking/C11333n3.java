package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import java.util.Set;

public final class C11333n3 {

    public final Set f57555a;

    public C11333n3(Set set) {
        this.f57555a = set;
    }

    public final C11333n3 a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (C11333n3) c8659ns0.a("Rewrite ProguardCompatibilityActions", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C11333n3.this.a(abstractC5308Hz);
            }
        });
    }

    public final C11333n3 a(AbstractC5308Hz abstractC5308Hz) {
        Set c10 = AbstractC5513Ll0.c();
        for (com.android.tools.r8.graph.M2 m22 : this.f57555a) {
            abstractC5308Hz.getClass();
            c10.add(abstractC5308Hz.c(AbstractC5308Hz.g(), m22));
        }
        return new C11333n3(c10);
    }
}
