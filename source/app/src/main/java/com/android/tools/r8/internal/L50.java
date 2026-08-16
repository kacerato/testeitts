package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MappingComposeException;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class L50 extends com.android.tools.r8.naming.mappinginformation.d {

    public final HashMap f41859a;

    public L50(HashMap hashMap) {
        this.f41859a = hashMap;
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        return !(eVar instanceof L50);
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        throw new MappingComposeException("Unable to compose partitionSourceFiles");
    }

    @Override
    public final L50 e() {
        return this;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("partitionSourceFiles"));
        final C7407gL c7407gL2 = new C7407gL();
        this.f41859a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7407gL.this.a((String) obj, (String) obj2);
            }
        });
        c7407gL.f48234b.put("fileNameMappings", c7407gL2);
        return c7407gL.toString();
    }

    public static void a(C7407gL c7407gL, Consumer consumer) {
        C7407gL c7407gL2 = (C7407gL) c7407gL.f48234b.get("fileNameMappings");
        final K50 k50 = new K50();
        c7407gL2.f48234b.entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                L50.a(K50.this, (Map.Entry) obj);
            }
        });
        consumer.accept(new L50(k50.f41572a));
    }

    public static void a(K50 k50, Map.Entry entry) {
        k50.f41572a.put((String) entry.getKey(), ((AbstractC6907dL) entry.getValue()).h());
    }
}
