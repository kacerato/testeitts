package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C9239rK;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.V60;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;

public final class D extends T {

    public final Function f36210g;

    public D(C4798y c4798y, Function function, int i10) {
        super(c4798y, i10);
        this.f36210g = function;
    }

    public static D a(final C4798y c4798y, final Y5 y52) {
        return new D(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                return D.a(Y5.this, c4798y, (E0) obj);
            }
        }, 1);
    }

    public static Iterable a(Y5 y52, final C4798y c4798y, E0 e02) {
        Set b10 = y52.b(e02.getType());
        Objects.requireNonNull(c4798y);
        return new C9239rK(AbstractC9907vK.a(b10, new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return C4798y.this.a((M2) obj);
            }
        }), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return Objects.nonNull((E0) obj);
            }
        });
    }

    public static D a(C4798y c4798y, final C4387c4 c4387c4) {
        return new D(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4387c4.this.a((H2) obj);
            }
        }, 4);
    }

    @Override
    public final void a(E0 e02) {
        if ((this.f36818e && e02.isInterface()) || this.f36816c.contains(e02)) {
            return;
        }
        this.f36817d.addFirst(e02);
        for (E0 e03 : (Iterable) this.f36210g.apply(e02)) {
            if (this.f36815b != 4 || e03.e0()) {
                a(e03);
            }
        }
    }
}
