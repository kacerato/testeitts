package com.android.tools.r8.graph;

import com.android.tools.r8.ClassConflictResolver;
import com.android.tools.r8.dex.InterfaceC4302b;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6014Ud;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C6374a80;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C7948je;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.TR;
import com.android.tools.r8.naming.C10912b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;

public class C4765w4 extends AbstractC4780x0 {

    public static final boolean f38325l = true;

    public final C6374a80 f38326h;

    public final C7948je f38327i;

    public final TR f38328j;

    public final List f38329k;

    public C4765w4(C10912b c10912b, C4818z0 c4818z0, C6374a80 c6374a80, AbstractC7552hC abstractC7552hC, C7948je c7948je, TR tr, List list, C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        super(c10912b, c4818z0, abstractC7552hC, c8570nJ, c8659ns0);
        this.f38326h = c6374a80;
        this.f38327i = c7948je;
        this.f38328j = tr;
        this.f38329k = list;
    }

    public static boolean d(M2 m22) {
        return true;
    }

    @Override
    public final void a(Consumer consumer) {
        AbstractC6014Ud abstractC6014Ud = (AbstractC6014Ud) this.f38328j.f49278b.get();
        if (abstractC6014Ud != null) {
            abstractC6014Ud.a().forEach(consumer);
            return;
        }
        throw new C5325If("Cannot access all types since the classProvider is no longer available");
    }

    @Override
    public final void b(Consumer consumer) {
        this.f38326h.f49277a.o().forEach(consumer);
    }

    @Override
    public final H2 c(M2 m22) {
        if (f38325l || m22.I0()) {
            return (H2) this.f38326h.a(m22);
        }
        throw new AssertionError((Object) ("Cannot lookup definition for type: " + ((Object) m22)));
    }

    @Override
    public final InterfaceC4364b0 f(M2 m22) {
        final W w10 = new W();
        TR tr = this.f38328j;
        if (tr != null) {
            C4725u2 c4725u2 = (C4725u2) tr.a(m22);
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    W.this.a((C4725u2) obj);
                }
            };
            if (c4725u2 != null) {
                consumer.accept(c4725u2);
            }
        }
        H2 h22 = (H2) this.f38326h.a(m22);
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                W.this.a((H2) obj);
            }
        };
        if (h22 != null) {
            consumer2.accept(h22);
        } else {
            C7948je c7948je = this.f38327i;
            if (c7948je != null) {
                I0 i02 = (I0) c7948je.a(m22);
                Consumer consumer3 = new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        W.this.a((I0) obj);
                    }
                };
                if (i02 != null) {
                    consumer3.accept(i02);
                }
            }
        }
        return w10.a();
    }

    @Override
    public final E0 g(M2 m22) {
        TR tr;
        C7948je c7948je;
        if (!f38325l && !m22.I0()) {
            throw new AssertionError((Object) ("Cannot lookup definition for type: " + ((Object) m22)));
        }
        E0 a10 = this.f38326h.a(m22);
        if (a10 == null && (c7948je = this.f38327i) != null) {
            a10 = c7948je.a(m22);
        }
        return (a10 != null || (tr = this.f38328j) == null) ? a10 : tr.a(m22);
    }

    @Override
    public C4462g3 i() {
        C4462g3 b10 = new C4462g3.a(this).b();
        b10.getClass();
        return b10;
    }

    public final List j() {
        return this.f38329k;
    }

    @Override
    public final ArrayList h() {
        this.f38326h.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4765w4.d((M2) obj);
            }
        });
        return this.f38326h.a();
    }

    public final String toString() {
        return "Application (" + ((Object) this.f38326h) + VectorFormat.DEFAULT_SEPARATOR + ((Object) this.f38327i) + VectorFormat.DEFAULT_SEPARATOR + ((Object) this.f38328j) + ")";
    }

    @Override
    public final AbstractC4761w0 c() {
        return new a(this);
    }

    public static class a extends AbstractC4761w0 {

        public C7948je f38330h;

        public TR f38331i;

        public List f38332j;

        public a(C8570nJ c8570nJ, C8659ns0 c8659ns0) {
            super(c8570nJ, c8659ns0);
            this.f38332j = Collections.EMPTY_LIST;
            this.f38330h = new C7948je();
            this.f38331i = new TR(null);
        }

        @Override
        public final void a(H2 h22) {
            synchronized (this) {
                this.f38316a.add(h22);
            }
            C7948je c7948je = this.f38330h;
            M2 m22 = h22.f36245e;
            c7948je.f49277a.remove(m22);
            AbstractC6014Ud abstractC6014Ud = (AbstractC6014Ud) c7948je.f49278b.get();
            if (abstractC6014Ud != null) {
                AtomicReference atomicReference = c7948je.f49278b;
                int i10 = QC.f43505c;
                atomicReference.set(abstractC6014Ud.a(new C5978Tm0(m22)));
            }
            TR tr = this.f38331i;
            M2 m23 = h22.f36245e;
            tr.f49277a.remove(m23);
            AbstractC6014Ud abstractC6014Ud2 = (AbstractC6014Ud) tr.f49278b.get();
            if (abstractC6014Ud2 == null) {
                return;
            }
            AtomicReference atomicReference2 = tr.f49278b;
            int i11 = QC.f43505c;
            atomicReference2.set(abstractC6014Ud2.a(new C5978Tm0(m23)));
        }

        @Override
        public final AbstractC4761w0 c() {
            return this;
        }

        @Override
        public C4765w4 b() {
            C8570nJ c8570nJ = this.f38318c;
            InterfaceC4302b interfaceC4302b = c8570nJ.f50700m;
            if (interfaceC4302b == null) {
                interfaceC4302b = C6374a80.a((ClassConflictResolver) null, c8570nJ.f50691j);
            }
            return new C4765w4(this.f38319d, this.f38321f, C6374a80.a(this.f38316a, interfaceC4302b), AbstractC7552hC.a(this.f38317b), this.f38330h, this.f38331i, this.f38332j, this.f38318c, this.f38320e);
        }

        public a(C4765w4 c4765w4) {
            super(c4765w4);
            this.f38332j = Collections.EMPTY_LIST;
            this.f38330h = c4765w4.f38327i;
            this.f38331i = c4765w4.f38328j;
        }
    }

    public static AbstractC8552nC a(AbstractC8552nC abstractC8552nC, final Function function, C8570nJ c8570nJ) {
        if (abstractC8552nC != null) {
            final Set c10 = AbstractC5513Ll0.c();
            final C8051kC c8051kC = new C8051kC(4);
            abstractC8552nC.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C4765w4.a(Function.this, c8051kC, c10, (M2) obj, (E0) obj2);
                }
            });
            if (!c10.isEmpty()) {
                a(c8570nJ, c10);
            }
            return c8051kC.b();
        }
        return C6620bf0.f46817i;
    }

    public static void a(Function function, C8051kC c8051kC, Set set, M2 m22, E0 e02) {
        E0 e03 = (E0) function.apply(m22);
        if (e03 == null) {
            c8051kC.a(m22, e02);
        } else if (m22.A0().startsWith("java.")) {
            if (e02.f0() || e03.f0()) {
                set.add(m22);
            }
        }
    }

    public static void a(C8570nJ c8570nJ, Set set) {
        if (c8570nJ.f50704n0) {
            return;
        }
        c8570nJ.f50691j.c("The following library types, prefixed by java., are present both as library and non library classes: " + ((String) set.stream().sorted().map(new C4551kh()).collect(Collectors.joining(", "))) + ". Library classes will be ignored.");
    }
}
