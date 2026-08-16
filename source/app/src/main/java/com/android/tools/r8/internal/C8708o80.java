package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.function.BiConsumer;

public final class C8708o80 implements com.android.tools.r8.naming.P {

    public final AbstractC9709u80 f51174a;

    public final LinkedHashMap f51175b = new LinkedHashMap();

    public ArrayList f51176c = new ArrayList();

    public C8708o80(AbstractC9709u80 abstractC9709u80) {
        this.f51174a = abstractC9709u80;
    }

    @Override
    public final String a() {
        String a10 = this.f51174a.a();
        if (a10 == null) {
            return null;
        }
        if (this.f51174a.f52795g == 6) {
            ArrayList arrayList = new ArrayList();
            this.f51176c = arrayList;
            this.f51175b.put(a10, arrayList);
        }
        this.f51176c.add(a10);
        return a10;
    }

    @Override
    public final void close() {
        this.f51174a.close();
    }

    public final void a(BiConsumer biConsumer) {
        this.f51175b.forEach(biConsumer);
    }
}
