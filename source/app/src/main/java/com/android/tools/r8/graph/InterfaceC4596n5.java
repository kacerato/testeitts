package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.C9453sf;
import com.android.tools.r8.internal.InterfaceC5465Kq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.naming.AbstractC10992r0;

public interface InterfaceC4596n5 extends InterfaceC5580Mq0 {
    default int a(InterfaceC4596n5 interfaceC4596n5, AbstractC10992r0 abstractC10992r0) {
        InterfaceC4596n5 interfaceC4596n52 = (InterfaceC4596n5) E();
        InterfaceC5465Kq0 interfaceC5465Kq0 = new InterfaceC5465Kq0() {
            @Override
            public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
                return ((InterfaceC4596n5) obj).a((InterfaceC4596n5) obj2, abstractC8953pf);
            }
        };
        if (interfaceC4596n52 == interfaceC4596n5) {
            return 0;
        }
        return interfaceC5465Kq0.a(interfaceC4596n52, interfaceC4596n5, new C9453sf(abstractC10992r0));
    }
}
