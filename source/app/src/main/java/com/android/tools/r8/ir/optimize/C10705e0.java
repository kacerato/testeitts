package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.C5038Dg;
import com.android.tools.r8.internal.C5721Pc;
import com.android.tools.r8.internal.C6686c10;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7374g80;
import com.android.tools.r8.internal.C7506gx;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C7708i80;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9093qU;
import com.android.tools.r8.internal.C9420sR;
import com.android.tools.r8.internal.C9434sY;
import com.android.tools.r8.internal.C9601tY;
import com.android.tools.r8.internal.C9862v31;
import com.android.tools.r8.internal.C9935vY;
import com.android.tools.r8.internal.E00;
import com.android.tools.r8.internal.ID;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.O60;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.WY;
import com.android.tools.r8.ir.optimize.C10705e0;
import com.android.tools.r8.shaking.C11245i;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C10705e0 {

    public static final boolean f54860d = true;

    public final C4798y f54861a;

    public final C7541h80 f54862b = C7541h80.l();

    public final int[] f54863c;

    public C10705e0(C4798y c4798y) {
        this.f54861a = c4798y;
        this.f54863c = c4798y.E().L().f50772f;
    }

    public static Optional a() {
        return Optional.of(new C7708i80(new C5038Dg(new ConcurrentHashMap())));
    }

    public final void a(final H5 h52, C7215fB c7215fB, final AbstractC6931dX abstractC6931dX) {
        Z4.c<?> o10;
        H5 d10;
        C9420sR c9420sR = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return C10705e0.this.a(h52, abstractC6931dX);
            }
        });
        for (VJ vj2 : c7215fB.b((Predicate) new C9862v31())) {
            if (!vj2.a(this.f54861a.b()) && (o10 = ((C11245i) this.f54861a.f()).b(vj2.B2(), vj2.A2()).o()) != null && !o10.a(h52, this.f54861a).b() && (d10 = vj2.d(this.f54861a, h52)) != null && abstractC6931dX.c().b(d10)) {
                S a10 = ((H) c9420sR.a(c9420sR.f52359b)).a(c7215fB, vj2, o10, d10, h52, C5721Pc.f43276e, new ID(), C6686c10.f46935a);
                if (a10 != null && !(a10 instanceof V)) {
                    a(h52, d10, abstractC6931dX);
                } else {
                    C7541h80 c7541h80 = this.f54862b;
                    Optional empty = Optional.empty();
                    c7541h80.getClass();
                    c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, d10), empty);
                }
            }
        }
    }

    public final void a(final H5 h52, final C7215fB c7215fB, final AbstractC6931dX abstractC6931dX, C8659ns0 c8659ns0) {
        if (abstractC6931dX.f()) {
            c8659ns0.a("Multi caller inliner: Record call edges", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    C10705e0.this.a(h52, c7215fB, abstractC6931dX);
                }
            });
        }
    }

    public final H a(H5 h52, AbstractC6931dX abstractC6931dX) {
        return new H(this.f54861a, h52, abstractC6931dX, new C7506gx(U.f54808b), Integer.MAX_VALUE);
    }

    public final void a(H5 h52, H5 h53, AbstractC6931dX abstractC6931dX) {
        C7541h80 c7541h80 = this.f54862b;
        Function a10 = TU.a(new Supplier() {
            @Override
            public final Object get() {
                return C10705e0.a();
            }
        });
        c7541h80.getClass();
        C7374g80 c7374g80 = C7374g80.f48192a;
        Optional optional = (Optional) c7541h80.a(a10, new C7333fv(c7374g80, h53));
        if (optional.isPresent()) {
            C7708i80 c7708i80 = (C7708i80) optional.get();
            c7708i80.f48851a.a(new C7333fv(c7374g80, h52), 1);
            if (c7708i80.f48851a.size() > this.f54863c.length) {
                a(h53, abstractC6931dX, c7708i80);
            }
        }
    }

    public final void a(H5 h52, final AbstractC6931dX abstractC6931dX, C7708i80 c7708i80) {
        c7708i80.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean w10;
                w10 = ((H5) obj).A().w();
                return w10;
            }
        });
        final IH ih2 = new IH();
        c7708i80.a(new ObjIntConsumer() {
            @Override
            public final void accept(Object obj, int i10) {
                C10705e0.a(AbstractC6931dX.this, ih2, (H5) obj, i10);
            }
        });
        if (ih2.a() > this.f54863c.length) {
            C7541h80 c7541h80 = this.f54862b;
            Optional empty = Optional.empty();
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), empty);
        }
    }

    public static void a(AbstractC6931dX abstractC6931dX, IH ih2, H5 h52, int i10) {
        if (abstractC6931dX.c().a(h52)) {
            return;
        }
        ih2.c(i10);
    }

    public final void a(O60 o60, C8659ns0 c8659ns0, final ExecutorService executorService) {
        c8659ns0.b("Multi caller inliner");
        final C9434sY c9434sY = (C9434sY) c8659ns0.a("Call graph construction", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C10705e0.this.a(executorService);
            }
        });
        o60.a(this.f54861a).f42781a.a((C9093qU) c8659ns0.a("Needs inlining analysis", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C10705e0.this.b(c9434sY);
            }
        }));
        c8659ns0.d();
    }

    public final C9434sY a(ExecutorService executorService) {
        return new C9601tY(this.f54861a).a(executorService);
    }

    public final C9093qU b(final C9434sY c9434sY) {
        final AbstractC5308Hz v10 = this.f54861a.v();
        final C9093qU b10 = C9093qU.b(v10);
        this.f54862b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10705e0.this.a(c9434sY, b10, v10, (H5) obj, (Optional) obj2);
            }
        });
        this.f54862b.f43368b.clear();
        return b10;
    }

    public final void a(C9434sY c9434sY, final C9093qU c9093qU, final AbstractC5308Hz abstractC5308Hz, H5 h52, Optional optional) {
        int i10;
        if (!h52.d().k1().c() && optional.isPresent()) {
            if (h52.d().w0() || ((C11245i) this.f54861a.f()).b(h52.getHolder())) {
                C7708i80 c7708i80 = (C7708i80) optional.get();
                c7708i80.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean w10;
                        w10 = ((H5) obj).A().w();
                        return w10;
                    }
                });
                if (c7708i80.f48851a.size() == 0 || c7708i80.f48851a.size() > this.f54863c.length || (i10 = ((C9935vY) ((E00) c9434sY.f53949a.get(h52.getReference()))).f53138c.get()) < c7708i80.f48851a.size() || c7708i80.f48851a.size() < i10) {
                    return;
                }
                if (h52.d().Q0().k(this.f54863c[c7708i80.f48851a.size() - 1]) >= 0) {
                    c7708i80.a(new ObjIntConsumer() {
                        @Override
                        public final void accept(Object obj, int i11) {
                            C10705e0.a(C9093qU.this, abstractC5308Hz, (H5) obj, i11);
                        }
                    });
                    AbstractC8028k40.a().getClass();
                    WY T02 = h52.d().T0();
                    int i11 = T02.f45467v;
                    if (i11 == 3) {
                        T02.f45467v = 1;
                    } else if (!WY.f45446x && i11 != 2) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    public static void a(C9093qU c9093qU, AbstractC5308Hz abstractC5308Hz, H5 h52, int i10) {
        if (h52.A().w()) {
            return;
        }
        c9093qU.a(abstractC5308Hz, h52);
    }
}
