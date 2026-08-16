package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4389c6;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.startup.diagnostic.MissingStartupProfileItemsDiagnostic;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C8480mo0 {

    public final C4798y f50424a;

    public final AbstractC9148qo0 f50425b;

    public C8480mo0(C4798y c4798y) {
        this.f50424a = c4798y;
        this.f50425b = c4798y.f().h() ? c4798y.f38424q : AbstractC9148qo0.a(c4798y.E(), new Function() {
            @Override
            public final Object apply(Object obj) {
                MissingStartupProfileItemsDiagnostic.a b10;
                b10 = MissingStartupProfileItemsDiagnostic.a.b();
                return b10;
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22, final Set set) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8480mo0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8480mo0.a(Set.this, (C4516j1) obj);
            }
        });
        if (set.contains(h22.getType())) {
            return;
        }
        if (h22.c1()) {
            a(h22.h(h22.L0()));
        } else {
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            h22.a(new C4516j1.a(true).a(com.android.tools.r8.graph.L4.b(4104, true)).a(C4389c6.f37098e).a(this.f50424a.b().b(h22.getType())).a());
        }
    }

    public static boolean a(Set set, C4516j1 c4516j1) {
        return !set.contains(c4516j1.getReference());
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        h52.d().a(C4389c6.f37098e, UG.f44715a);
    }

    public final Set a() {
        final Set c10 = AbstractC5513Ll0.c();
        this.f50425b.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((AbstractC10483yo0) obj).c());
            }
        });
        return c10;
    }
}
