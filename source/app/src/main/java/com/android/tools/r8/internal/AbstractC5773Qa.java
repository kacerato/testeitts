package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.function.Predicate;

public abstract class AbstractC5773Qa {
    public static AbstractC5773Qa a(C4798y c4798y, DI di2, Predicate predicate) {
        if (c4798y.E().f50616L0.b()) {
            ArrayList arrayList = new ArrayList();
            if (X2.a(c4798y).f53766c.r() && !c4798y.E().x().f45396a.f53764a) {
                arrayList.add(new C9141qm(c4798y));
            }
            if (c4798y.E().c0()) {
                arrayList.add(new C8531n5(c4798y));
            }
            if (di2 != null) {
                arrayList.add(di2);
            }
            C8306lm c8306lm = null;
            C6973dm c6973dm = c4798y.E().x().b().a() ? new C6973dm(c4798y, predicate) : null;
            if (c6973dm != null) {
                arrayList.add(c6973dm);
            }
            C7277fc0 c7277fc0 = AbstractC8737oJ.a(c4798y.E().k()) ? new C7277fc0(c4798y) : null;
            if (c7277fc0 != null) {
                arrayList.add(c7277fc0);
            }
            Iterator it = c4798y.b().f38117o3.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (c4798y.f().c((com.android.tools.r8.graph.M2) it.next()) != null) {
                    c8306lm = new C8306lm(c4798y);
                    break;
                }
            }
            if (c8306lm != null) {
                arrayList.add(c8306lm);
            }
            if (arrayList.isEmpty()) {
                return C5657Oa.f42920a;
            }
            return new C5715Pa(arrayList);
        }
        return C5657Oa.f42920a;
    }

    public abstract void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0);
}
