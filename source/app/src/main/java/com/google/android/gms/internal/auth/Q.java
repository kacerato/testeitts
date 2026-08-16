package com.google.android.gms.internal.auth;

import D0.InterfaceC2458n;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11907k;
import u0.C15560b;
import u0.C15561c;
import v1.AbstractC15790k;
import v1.C15791l;
import x0.C16042d;
import x0.C16043e;
import x0.InterfaceC16041c;

public final class Q extends AbstractC11907k implements InterfaceC16041c {
    public Q(@NonNull Activity activity, @Nullable C15561c c15561c) {
        super(activity, C15560b.f117983a, c15561c == null ? C15561c.f117987c : c15561c, AbstractC11907k.a.f61274c);
    }

    @Override
    public final AbstractC15790k<String> g() {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((J) ((G) obj).M()).l0(new P(Q.this, (C15791l) obj2));
            }
        }).f(V1.e.f26480w).a());
    }

    @Override
    public final AbstractC15790k<C16043e> p(@NonNull final C16042d c16042d) {
        return T(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                Q q10 = Q.this;
                C16042d c16042d2 = c16042d;
                ((J) ((G) obj).M()).e1(new O(q10, (C15791l) obj2), c16042d2);
            }
        }).f(1518).a());
    }

    public Q(@NonNull Context context, @Nullable C15561c c15561c) {
        super(context, C15560b.f117983a, c15561c == null ? C15561c.f117987c : c15561c, AbstractC11907k.a.f61274c);
    }
}
