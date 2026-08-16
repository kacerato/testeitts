package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.SourceFileEnvironment;
import com.android.tools.r8.dex.C4306f;
import com.android.tools.r8.dex.C4307g;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.errors.CodeSizeOverflowDiagnostic;
import com.android.tools.r8.errors.ConstantPoolOverflowDiagnostic;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.utils.C11662i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class T8 {

    public static final boolean f44394e = true;

    public final AbstractC4780x0 f44395a;

    public final C4798y f44396b;

    public final C8570nJ f44397c;

    public final Optional f44398d;

    public T8(C4798y c4798y, com.android.tools.r8.dex.W w10) {
        this.f44395a = c4798y.f().a();
        this.f44396b = c4798y;
        this.f44397c = c4798y.E();
        this.f44398d = Optional.ofNullable(w10);
    }

    public final void a(ClassFileConsumer classFileConsumer, C11662i c11662i, ExecutorService executorService) {
        this.f44395a.f38365c.b("CfApplicationWriter.write");
        try {
            b(classFileConsumer, c11662i, executorService);
        } finally {
            this.f44395a.f38365c.d();
        }
    }

    public final void b(ClassFileConsumer classFileConsumer, C11662i c11662i, ExecutorService executorService) {
        com.android.tools.r8.naming.I0 i02;
        Collection collection;
        SourceFileEnvironment sourceFileEnvironment = null;
        if (!this.f44397c.J()) {
            i02 = null;
        } else {
            if (!f44394e && !this.f44398d.isPresent()) {
                throw new AssertionError();
            }
            i02 = AbstractC7755iS.a(c11662i, this.f44396b, this.f44395a.f38365c, K40.f41570b, C8798oj.a(this.f44397c));
            com.android.tools.r8.dex.W w10 = (com.android.tools.r8.dex.W) this.f44398d.get();
            String str = i02.f55651a;
            if (!com.android.tools.r8.dex.W.f35796i && w10.f35797a.f48234b.containsKey("pg-map-id")) {
                throw new AssertionError();
            }
            w10.f35797a.a("pg-map-id", str);
        }
        Optional map = this.f44398d.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return T8.this.a((com.android.tools.r8.dex.W) obj);
            }
        }).map(new com.android.tools.r8.F1());
        if (this.f44397c.f50667b2 != null) {
            boolean z10 = C4311k.f35875k;
            if (i02 == null) {
                sourceFileEnvironment = new C4306f();
            } else {
                sourceFileEnvironment = new C4307g(i02);
            }
        }
        RR rr = new RR(this.f44396b);
        Collection d10 = this.f44395a.d();
        Collection arrayList = new ArrayList();
        C8570nJ c8570nJ = this.f44397c;
        if (!c8570nJ.f50595E0 || c8570nJ.f50703n == null) {
            collection = d10;
        } else {
            Collection arrayList2 = new ArrayList(d10.size());
            for (com.android.tools.r8.graph.H2 h22 : d10) {
                if (this.f44396b.f38408a.g().a(h22)) {
                    arrayList.add(h22);
                    Consumer<com.android.tools.r8.graph.H2> consumer = this.f44396b.E().f50599F1.f50820H;
                    if (consumer != null) {
                        consumer.accept(h22);
                    }
                } else {
                    arrayList2.add(h22);
                }
            }
            collection = arrayList2;
        }
        a(classFileConsumer, collection, map, rr, sourceFileEnvironment, executorService);
        if (!arrayList.isEmpty()) {
            C7069eJ c7069eJ = new C7069eJ(this.f44397c.f50703n, this.f44396b);
            a(c7069eJ, arrayList, map, rr, sourceFileEnvironment, executorService);
            c7069eJ.a(this.f44396b);
        }
        C4311k.a(this.f44396b, Collections.EMPTY_LIST, executorService);
    }

    public final boolean a(com.android.tools.r8.dex.W w10) {
        if (w10.f35798b == W.b.f35807g) {
            return false;
        }
        if (f44394e || w10.a().equals(C10656zq0.f("CF")) || w10.a().equals(C10656zq0.f(W.a.f35800c.name()))) {
            return (this.f44397c.l().f50755c && w10.a().equals(C10656zq0.f("CF")) && w10.m()) ? false : true;
        }
        throw new AssertionError();
    }

    public final void a(final ClassFileConsumer classFileConsumer, Collection collection, final Optional optional, final RR rr, final SourceFileEnvironment sourceFileEnvironment, ExecutorService executorService) {
        new C10325xr0(this.f44397c.G(), executorService, collection.size()).a(collection, new Function() {
            @Override
            public final Object apply(Object obj) {
                return T8.this.a(rr, optional, sourceFileEnvironment, (com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T8.this.a(classFileConsumer, (Q8) obj);
            }
        });
    }

    public final Q8 a(RR rr, Optional optional, SourceFileEnvironment sourceFileEnvironment, com.android.tools.r8.graph.H2 h22) {
        S8 s82 = new S8(h22, this.f44396b);
        if (!S8.f44093g) {
            com.android.tools.r8.graph.M2 type = h22.getType();
            boolean z10 = com.android.tools.r8.synthesis.S.f58147a0;
            com.android.tools.r8.synthesis.S.a(type.V0());
        }
        try {
            return s82.a(rr, optional, sourceFileEnvironment);
        } catch (BX e10) {
            C5094Ef0 c5094Ef0 = s82.f44098e.f50691j;
            c5094Ef0.a(null, new CodeSizeOverflowDiagnostic(s82.f44095b.f36244d, Reference.methodFromDescriptor(Reference.classFromBinaryName(e10.f38931b).getDescriptor(), e10.f38932c, e10.f38933d), e10.f38934e));
            throw c5094Ef0.f39969c;
        } catch (C6449ae e11) {
            C5094Ef0 c5094Ef02 = s82.f44098e.f50691j;
            c5094Ef02.a(null, new ConstantPoolOverflowDiagnostic(s82.f44095b.f36244d, Reference.classFromBinaryName(e11.f46569b), e11.f46570c));
            throw c5094Ef02.f39969c;
        }
    }

    public static void a(ClassFileConsumer classFileConsumer, Q8 q82, DiagnosticsHandler diagnosticsHandler) {
        classFileConsumer.accept(ByteDataView.of(q82.f43462b), q82.f43461a, diagnosticsHandler);
    }

    public final void a(final ClassFileConsumer classFileConsumer, final Q8 q82) {
        AbstractC8333lv.a(this.f44397c.f50691j, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T8.a(ClassFileConsumer.this, q82, (DiagnosticsHandler) obj);
            }
        });
    }
}
