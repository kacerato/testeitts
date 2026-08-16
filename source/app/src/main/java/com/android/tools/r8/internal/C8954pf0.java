package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4823z5;
import java.util.function.Consumer;

public final class C8954pf0 {

    public static final boolean f51583c = true;

    public final AbstractC5308Hz f51584a;

    public final C9955vf0 f51585b;

    public C8954pf0(C4798y c4798y, C9955vf0 c9955vf0) {
        this.f51584a = c4798y.v();
        this.f51585b = c9955vf0;
    }

    public final void a(C4723u0 c4723u0) {
        c4723u0.forEach(new Sp1(this));
    }

    public final void a(C4823z5 c4823z5) {
        c4823z5.d(new Sp1(this));
    }

    public final void a(C4666r0 c4666r0) {
        a(c4666r0.f37693c);
    }

    public final void a(C4422e1 c4422e1) {
        C9955vf0 c9955vf0 = this.f51585b;
        com.android.tools.r8.graph.M2 m22 = c4422e1.f37142b;
        c9955vf0.h(c9955vf0.f53168g.c(this.f51584a, m22));
        c4422e1.d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8954pf0.this.a((C4704t0) obj);
            }
        });
    }

    public final void a(C4704t0 c4704t0) {
        a(c4704t0.f37739c);
    }

    public final void a(com.android.tools.r8.graph.R2 r22) {
        switch (r22.G0().ordinal()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 16:
            case 17:
                return;
            case 7:
                ((com.android.tools.r8.graph.I2) r22.A0().W0()).d(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8954pf0.this.a((com.android.tools.r8.graph.M2) obj);
                    }
                });
                return;
            case 8:
                com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) r22.z0().W0();
                if (c22.f36190e.a()) {
                    this.f51585b.i(c22.l0());
                    return;
                }
                if (!f51583c && !c22.f36190e.d()) {
                    throw new AssertionError();
                }
                C9955vf0 c9955vf0 = this.f51585b;
                com.android.tools.r8.graph.Z4 f10 = c9955vf0.f53166e.f(c22.m0());
                c9955vf0.a((com.android.tools.r8.graph.J4) f10, false);
                if (f10.w()) {
                    f10.o().r();
                    return;
                }
                return;
            case 10:
                C9955vf0 c9955vf02 = this.f51585b;
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) r22.E0().W0();
                c9955vf02.h(c9955vf02.f53168g.c(this.f51584a, m22));
                return;
            case 11:
                this.f51585b.i((C4554l1) r22.u0().W0());
                return;
            case 12:
                C9955vf0 c9955vf03 = this.f51585b;
                com.android.tools.r8.graph.Z4 f11 = c9955vf03.f53166e.f((com.android.tools.r8.graph.A2) r22.y0().W0());
                c9955vf03.a((com.android.tools.r8.graph.J4) f11, false);
                if (f11.w()) {
                    f11.o().r();
                    return;
                }
                return;
            case 13:
                this.f51585b.i((C4554l1) r22.t0().W0());
                return;
            case 14:
                r22.n0().d(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C8954pf0.this.a((com.android.tools.r8.graph.R2) obj);
                    }
                });
                return;
            case 15:
                a(r22.m0().f36739d);
                return;
            default:
                throw new C5417Jv0();
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        C9955vf0 c9955vf0 = this.f51585b;
        c9955vf0.h(c9955vf0.f53168g.c(this.f51584a, m22));
    }
}
