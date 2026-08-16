package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C6694c4;
import com.android.tools.r8.internal.C9029q4;
import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.profile.art.ArtProfileProvider;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.function.Consumer;

public abstract class AbstractC8194l4 implements Iterable {

    public static final boolean f49876b = true;

    public static AbstractC8194l4 a(C4477h c4477h, C8570nJ c8570nJ) {
        C9362s4 q10 = c8570nJ.q();
        ArrayList arrayList = new ArrayList();
        AbstractC9109qb0 abstractC9109qb0 = c8570nJ.f50596E1;
        if (abstractC9109qb0 != null && !(abstractC9109qb0 instanceof C8775ob0)) {
            if (!f49876b && !(abstractC9109qb0 instanceof C8942pb0)) {
                throw new AssertionError();
            }
            AbstractC9907vK.a(abstractC9109qb0.b().f51566b, arrayList);
        } else {
            for (ArtProfileProvider artProfileProvider : q10.a()) {
                C6694c4.a a10 = C6694c4.a(artProfileProvider, c8570nJ);
                artProfileProvider.getArtProfile(a10);
                arrayList.add(a10.build());
            }
        }
        if (q10.b()) {
            arrayList.add(a(c4477h));
        }
        if (q10.f52268c && !f49876b) {
            if (q10.f52272g != null) {
                String a11 = C9362s4.a(c4477h);
                if (!C9362s4.f52265h && !a11.equals(q10.f52272g)) {
                    throw new AssertionError();
                }
            } else {
                q10.f52272g = C9362s4.a(c4477h);
            }
        }
        if (arrayList.isEmpty()) {
            return C5354It.f41240c;
        }
        return new G00(arrayList);
    }

    public abstract G00 a();

    public abstract AbstractC8194l4 a(com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0);

    public abstract AbstractC8194l4 a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0);

    public abstract void a(C4798y c4798y);

    public abstract AbstractC8194l4 b(C4798y c4798y);

    public abstract boolean b();

    public abstract AbstractC8194l4 c(C4798y c4798y);

    public abstract boolean isEmpty();

    public static C6694c4 a(C4477h c4477h) {
        boolean z10 = C6694c4.f46953b;
        final C6694c4.a aVar = new C6694c4.a(new LinkedHashMap());
        for (com.android.tools.r8.graph.H2 h22 : c4477h.e()) {
            aVar.a(h22.getType());
            h22.g(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC8194l4.a(C6694c4.a.this, (C4516j1) obj);
                }
            });
        }
        AbstractC9109qb0 abstractC9109qb0 = c4477h.j().f50596E1;
        if (abstractC9109qb0 != null && (abstractC9109qb0 instanceof C8942pb0)) {
            abstractC9109qb0.b().a(aVar);
        }
        return aVar.build();
    }

    public static void a(C6694c4.a aVar, C4516j1 c4516j1) {
        C9029q4.a d10 = C9029q4.d();
        d10.f51711b = c4516j1.getReference();
        aVar.a(d10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9195r4.a) obj).b().d().c();
            }
        }).build());
    }
}
