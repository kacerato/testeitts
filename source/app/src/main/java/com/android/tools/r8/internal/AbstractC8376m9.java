package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

public abstract class AbstractC8376m9 {
    public static AbstractC8376m9 a(C4798y c4798y) {
        ArrayList arrayList = new ArrayList();
        if (c4798y.E().x().f45396a.f53764a) {
            C6874d80 c6874d80 = (!c4798y.E().x().f45396a.f53764a || X2.a(c4798y).f53766c.f39242k.isEmpty()) ? null : new C6874d80(c4798y);
            if (c6874d80 != null) {
                arrayList.add(c6874d80);
            }
            if (!C8974pm.f51604d && !c4798y.E().x().f45396a.f53764a) {
                throw new AssertionError();
            }
            C8974pm c8974pm = X2.a(c4798y).f53766c.h().isEmpty() ? null : new C8974pm(c4798y);
            if (c8974pm != null) {
                arrayList.add(c8974pm);
            }
            arrayList.add(new C4992Cm(c4798y));
        }
        C7277fc0 c7277fc0 = AbstractC8737oJ.a(c4798y.E().k()) ? new C7277fc0(c4798y) : null;
        if (c7277fc0 != null) {
            arrayList.add(c7277fc0);
        }
        C5766Pw0 c5766Pw0 = c4798y.E().d0() ? new C5766Pw0(c4798y) : null;
        if (c5766Pw0 != null) {
            arrayList.add(c5766Pw0);
        }
        if (arrayList.isEmpty()) {
            return new C8042k9();
        }
        return new C8209l9(c4798y, arrayList);
    }

    public abstract void a(ExecutorService executorService, AbstractC8710o9 abstractC8710o9, C8659ns0 c8659ns0);
}
