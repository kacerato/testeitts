package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.naming.MappingComposeException;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import java.util.Comparator;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class M40 extends com.android.tools.r8.naming.mappinginformation.c {

    public static final MapVersion f42154c = MapVersion.MAP_VERSION_2_0;

    public static final MapVersion f42155d = MapVersion.MAP_VERSION_2_1;

    public WE f42156a;

    public MethodReference f42157b;

    public M40(WE we2, MethodReference methodReference) {
        this.f42156a = we2;
        this.f42157b = methodReference;
    }

    public static void a(C7407gL c7407gL, Integer num, Integer num2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) num);
        c7407gL.a(sb2.toString(), new C7906jL(num2));
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        throw new MappingComposeException("Unable to compose com.android.tools.r8.outlineCallsite");
    }

    @Override
    public final M40 c() {
        return this;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("com.android.tools.r8.outlineCallsite"));
        final C7407gL c7407gL2 = new C7407gL();
        this.f42156a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                M40.a(C7407gL.this, (Integer) obj, (Integer) obj2);
            }
        });
        c7407gL.f48234b.put("positions", c7407gL2);
        MethodReference methodReference = this.f42157b;
        if (methodReference != null) {
            c7407gL.f48234b.put("outline", new C7906jL(methodReference.toString()));
        }
        return c7407gL.toString();
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        return !(eVar instanceof M40);
    }

    public static void a(MapVersion mapVersion, C7407gL c7407gL, Consumer consumer) {
        MethodReference methodReference;
        if (mapVersion.d(f42154c)) {
            C7407gL c7407gL2 = (C7407gL) c7407gL.f48234b.get("positions");
            if (c7407gL2 != null) {
                final WE we2 = new WE(16);
                c7407gL2.f48234b.entrySet().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        M40.a(WE.this, (Map.Entry) obj);
                    }
                });
                AbstractC6907dL abstractC6907dL = (AbstractC6907dL) c7407gL.f48234b.get("outline");
                if (abstractC6907dL != null) {
                    String h10 = abstractC6907dL.h();
                    Comparator comparator = C7598hX.f48572a;
                    int indexOf = h10.indexOf(";") + 1;
                    int indexOf2 = h10.indexOf("(", indexOf);
                    methodReference = Reference.methodFromDescriptor(h10.substring(0, indexOf), h10.substring(indexOf, indexOf2), h10.substring(indexOf2));
                } else {
                    if (mapVersion.d(f42155d)) {
                        throw new C5325If("Expected 'outline' to be present: " + ((Object) c7407gL));
                    }
                    methodReference = null;
                }
                consumer.accept(new M40(we2, methodReference));
                return;
            }
            throw new C5325If("Expected 'positions' to be present: " + ((Object) c7407gL));
        }
    }

    public static void a(WE we2, Map.Entry entry) {
        we2.b(Integer.parseInt((String) entry.getKey()), ((AbstractC6907dL) entry.getValue()).b());
    }
}
