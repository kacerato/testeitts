package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10664zt;
import com.android.tools.r8.ir.optimize.AbstractC10710h;
import com.android.tools.r8.ir.optimize.C10712i;
import com.android.tools.r8.ir.optimize.C10714j;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10714j {

    public final LinkedHashMap f54883a = new LinkedHashMap();

    public final Set f54884b = AbstractC5513Ll0.c();

    public final void a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0, final AbstractC10710h abstractC10710h, Consumer consumer) {
        C10712i c10712i = (C10712i) ((Map) this.f54883a.computeIfAbsent(abstractC10561zE, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10714j.a((AbstractC10561zE) obj);
            }
        })).computeIfAbsent(c10340xw0, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10714j.a(AbstractC10710h.this, (C10340xw0) obj);
            }
        });
        consumer.accept(c10712i);
        if ((abstractC10710h instanceof C10718l) && c10712i.a()) {
            this.f54884b.add(c10340xw0);
        }
    }

    public final void b(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0, final C10664zt c10664zt) {
        a(abstractC10561zE, c10340xw0, C10725p.f54913a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C10712i) obj).a(C10664zt.this);
            }
        });
    }

    public final void b(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        a(abstractC10561zE, c10340xw0, C10725p.f54913a, new v.J0());
    }

    public static Map a(AbstractC10561zE abstractC10561zE) {
        return new LinkedHashMap();
    }

    public static C10712i a(AbstractC10710h abstractC10710h, C10340xw0 c10340xw0) {
        return new C10712i(abstractC10710h);
    }

    public final void a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0, final C10664zt c10664zt) {
        a(abstractC10561zE, c10340xw0, C10718l.f54890a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C10712i) obj).a(C10664zt.this);
            }
        });
    }

    public final void a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        a(abstractC10561zE, c10340xw0, C10718l.f54890a, new v.J0());
    }
}
