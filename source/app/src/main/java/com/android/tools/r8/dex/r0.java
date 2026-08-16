package com.android.tools.r8.dex;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10575zK;
import com.android.tools.r8.internal.DK;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.JK;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public final class r0 {

    public static final boolean f35925h = true;

    public final ArrayList f35926a;

    public final ArrayList f35927b;

    public final C4798y f35928c;

    public final IH f35929d;

    public C10575zK f35930e;

    public DK f35931f;

    public final FeatureSplit f35932g;

    public r0(ArrayList arrayList, List list, C4798y c4798y, IH ih2) {
        this.f35926a = arrayList;
        ArrayList arrayList2 = new ArrayList(list);
        this.f35927b = arrayList2;
        this.f35928c = c4798y;
        this.f35929d = ih2;
        if (list.size() > 0) {
            this.f35932g = ((t0) list.get(0)).f35958d;
        }
        this.f35930e = JK.a(arrayList2);
        a();
    }

    public final t0 a(Predicate predicate) {
        t0 t0Var;
        while (true) {
            if (this.f35931f.hasNext()) {
                t0Var = (t0) this.f35931f.next();
            } else {
                t0Var = new t0(this.f35929d.b(), this.f35928c, null, this.f35932g, AbstractC9148qo0.b());
                this.f35926a.add(t0Var);
                this.f35927b.add(t0Var);
                this.f35930e = JK.a(this.f35927b);
            }
            if (t0Var.f35956b.f35937c.isEmpty()) {
                if (!f35925h && !predicate.test(t0Var)) {
                    throw new AssertionError();
                }
            } else if (predicate.test(t0Var)) {
                break;
            }
        }
        return t0Var;
    }

    public final void a() {
        C10575zK c10575zK = this.f35930e;
        int size = this.f35927b.size();
        c10575zK.getClass();
        if (size >= 0) {
            this.f35931f = new DK(size, c10575zK);
            return;
        }
        throw new IllegalArgumentException("limit is negative");
    }
}
