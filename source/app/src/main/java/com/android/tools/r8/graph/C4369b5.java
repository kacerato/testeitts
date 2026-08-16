package com.android.tools.r8.graph;

import java.util.Collections;
import java.util.function.Consumer;

public final class C4369b5 extends AbstractC4350a5 {

    public static final boolean f37074e = true;

    public final E0 f37075d;

    public C4369b5(E0 e02, C4516j1 c4516j1) {
        super(Collections.singletonList(c4516j1));
        this.f37075d = e02;
    }

    public static void a(M2 m22) {
    }

    @Override
    public final boolean b(E0 e02, C4798y c4798y, C4514j c4514j) {
        if (!y()) {
            return true;
        }
        if (a(e02, c4798y, c4514j)) {
            return false;
        }
        if (f37074e || z()) {
            return true;
        }
        throw new AssertionError();
    }

    public final boolean z() {
        final com.android.tools.r8.internal.U6 u62 = new com.android.tools.r8.internal.U6(true);
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4369b5.a((M2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4369b5.this.a(u62, (C4516j1) obj);
            }
        });
        return u62.a();
    }

    public static void a(final C4798y c4798y, final com.android.tools.r8.internal.U6 u62, final E0 e02, final C4514j c4514j, M2 m22) {
        c4798y.f().f(m22).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.internal.U6.this.b(AbstractC4420e.a((E0) obj, e02, c4798y, c4514j).b());
            }
        });
    }

    @Override
    public final boolean a(final E0 e02, final C4798y c4798y, final C4514j c4514j) {
        if (!y()) {
            return false;
        }
        final com.android.tools.r8.internal.U6 u62 = new com.android.tools.r8.internal.U6(false);
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4369b5.a(C4798y.this, u62, e02, c4514j, (M2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4369b5.this.a(c4798y, u62, e02, c4514j, (C4516j1) obj);
            }
        });
        return u62.a();
    }

    public final void a(C4798y c4798y, com.android.tools.r8.internal.U6 u62, E0 e02, C4514j c4514j, C4516j1 c4516j1) {
        u62.b(AbstractC4420e.a(H0.a(c4798y.g(c4516j1.B0()), c4516j1), this.f37075d, e02, c4798y, c4514j).b());
    }

    public final void a(com.android.tools.r8.internal.U6 u62, C4516j1 c4516j1) {
        u62.a(c4516j1.B0() != this.f37075d.getType());
    }
}
