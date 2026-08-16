package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;

public abstract class AbstractC5827Qy implements InterfaceC8262lW, Cloneable {

    public AbstractC8206l8 f43766b = AbstractC8206l8.f49897b;

    public static void a(Iterable iterable, Collection collection) {
        if (iterable instanceof InterfaceC10422yR) {
            Iterator<E> it = ((InterfaceC10422yR) iterable).f().iterator();
            while (it.hasNext()) {
                it.next().getClass();
            }
            collection.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                it2.next().getClass();
            }
            collection.addAll((Collection) iterable);
            return;
        }
        for (Object obj : iterable) {
            obj.getClass();
            collection.add(obj);
        }
    }

    public abstract O0 a();

    public abstract AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv);

    public abstract AbstractC5827Qy a(AbstractC6287Yy abstractC6287Yy);

    public abstract AbstractC6287Yy b();
}
