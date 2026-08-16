package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;

public abstract class AbstractC9668tv {
    public static final InterfaceC8417mQ a(Collection collection, C8584nQ c8584nQ) {
        Iterator it = collection.iterator();
        InterfaceC8417mQ interfaceC8417mQ = null;
        while (it.hasNext()) {
            InterfaceC8417mQ interfaceC8417mQ2 = (InterfaceC8417mQ) it.next();
            if (GJ.a(interfaceC8417mQ2.getType(), c8584nQ)) {
                if (interfaceC8417mQ != null) {
                    throw new IllegalStateException("Multiple extensions handle the same extension type: " + ((Object) c8584nQ));
                }
                interfaceC8417mQ = interfaceC8417mQ2;
            }
        }
        if (interfaceC8417mQ != null) {
            return interfaceC8417mQ;
        }
        throw new IllegalStateException("No extensions handle the extension type: " + ((Object) c8584nQ));
    }
}
