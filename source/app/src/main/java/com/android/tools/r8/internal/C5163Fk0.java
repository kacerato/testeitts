package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.naming.MappingComposeException;
import java.util.AbstractCollection;
import java.util.List;
import java.util.function.Consumer;

public final class C5163Fk0 extends com.android.tools.r8.naming.mappinginformation.c {

    public static final MapVersion f40298c = MapVersion.MAP_VERSION_2_0;

    public final AbstractCollection f40299a;

    public final AbstractCollection f40300b;

    /* JADX WARN: Multi-variable type inference failed */
    public C5163Fk0(List list, List list2) {
        this.f40299a = (AbstractCollection) list;
        this.f40300b = (AbstractCollection) list2;
    }

    public static void a(C6574bL c6574bL, C5105Ek0 c5105Ek0) {
        c6574bL.f46749b.add(c5105Ek0.a());
    }

    @Override
    public final C5163Fk0 j() {
        return this;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("com.android.tools.r8.rewriteFrame"));
        final C6574bL c6574bL = new C6574bL();
        this.f40299a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5163Fk0.a(C6574bL.this, (C5105Ek0) obj);
            }
        });
        c7407gL.f48234b.put("conditions", c6574bL);
        final C6574bL c6574bL2 = new C6574bL();
        this.f40300b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5163Fk0.a(C6574bL.this, (C5047Dk0) obj);
            }
        });
        c7407gL.f48234b.put("actions", c6574bL2);
        return c7407gL.toString();
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        throw new MappingComposeException("Unable to compose com.android.tools.r8.rewriteFrame");
    }

    public static void a(C6574bL c6574bL, C5047Dk0 c5047Dk0) {
        c6574bL.f46749b.add(c5047Dk0.a());
    }

    public static void a(MapVersion mapVersion, C7407gL c7407gL, Consumer consumer) {
        if (mapVersion.d(f40298c)) {
            int i10 = AbstractC7552hC.f48487c;
            final C7051eC c7051eC = new C7051eC();
            ((AbstractC6907dL) c7407gL.f48234b.get("conditions")).c().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7051eC.this.a(C5105Ek0.a((AbstractC6907dL) obj));
                }
            });
            final C7051eC c7051eC2 = new C7051eC();
            ((AbstractC6907dL) c7407gL.f48234b.get("actions")).c().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7051eC.this.a(C5047Dk0.a((AbstractC6907dL) obj));
                }
            });
            consumer.accept(new C5163Fk0(c7051eC.a(), c7051eC2.a()));
        }
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        return !(eVar instanceof C5163Fk0);
    }
}
