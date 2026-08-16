package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;

public final class C10143wm0 extends AbstractC10376y8 {
    public C10143wm0(ConcurrentHashMap concurrentHashMap) {
        super(concurrentHashMap);
    }

    public final AbstractC8374m80 c() {
        AbstractC8374m80 c10 = AbstractC8374m80.c();
        Set c11 = AbstractC5513Ll0.c();
        Iterator it = a().iterator();
        while (it.hasNext()) {
            C9976vm0 c9976vm0 = (C9976vm0) it.next();
            if (c9976vm0.f53327d.isEmpty()) {
                c10.add((AbstractC8374m80) c9976vm0.a());
                it.remove();
                c11.add(c9976vm0);
            }
        }
        c11.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9976vm0) obj).e();
            }
        });
        return c10;
    }
}
