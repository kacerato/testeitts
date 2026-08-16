package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC7570hJ extends AbstractC7737iJ {

    public static final boolean f48526d = true;

    public final C4798y f48527a;

    public final GlobalSyntheticsConsumer f48528b;

    public final ConcurrentHashMap f48529c = new ConcurrentHashMap();

    public AbstractC7570hJ(GlobalSyntheticsConsumer globalSyntheticsConsumer, C4798y c4798y) {
        this.f48527a = c4798y;
        this.f48528b = globalSyntheticsConsumer;
    }

    public static void a(C6903dJ c6903dJ, com.android.tools.r8.graph.M2 m22, byte[] bArr) {
        String V02 = m22.V0();
        c6903dJ.getClass();
        c6903dJ.f47373b.add(new C8699o50(C6903dJ.a(V02), bArr));
    }

    public abstract ProgramResource.Kind a();

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        throw new C5417Jv0("Unexpected call to non-internal finished.");
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, Set set) {
        byte[] bArr;
        final C6903dJ c6903dJ = new C6903dJ(a());
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC7570hJ.this.a(c6903dJ, (com.android.tools.r8.graph.M2) obj);
            }
        });
        try {
            bArr = c6903dJ.a();
        } catch (IOException e10) {
            c4798y.E().f50691j.error(new ExceptionDiagnostic(e10));
            bArr = null;
        }
        if (bArr != null) {
            this.f48528b.accept(ByteDataView.of(bArr), Reference.classFromDescriptor(m22.V0()), c4798y.E().f50691j);
        }
    }

    public final void a(C6903dJ c6903dJ, com.android.tools.r8.graph.M2 m22) {
        String V02 = m22.V0();
        byte[] bArr = (byte[]) this.f48529c.get(m22);
        c6903dJ.getClass();
        c6903dJ.f47373b.add(new C8699o50(C6903dJ.a(V02), bArr));
    }

    @Override
    public final void a(final C4798y c4798y) {
        IdentityHashMap b10 = c4798y.f38408a.g().b(c4798y);
        if (c4798y.E().f50734x0.equals(W.b.f35803c)) {
            if (!f48526d && !b10.isEmpty()) {
                throw new AssertionError();
            }
            final C6903dJ c6903dJ = new C6903dJ(a());
            this.f48529c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    AbstractC7570hJ.a(C6903dJ.this, (com.android.tools.r8.graph.M2) obj, (byte[]) obj2);
                }
            });
            try {
                this.f48528b.accept(ByteDataView.of(c6903dJ.a()), null, c4798y.E().f50691j);
            } catch (IOException e10) {
                c4798y.E().f50691j.error(new ExceptionDiagnostic(e10));
            }
            this.f48528b.finished(c4798y.E().f50691j);
            return;
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (com.android.tools.r8.graph.M2 m22 : this.f48529c.o()) {
            Set set = (Set) b10.get(m22);
            boolean z10 = f48526d;
            if (!z10 && set == null) {
                throw new AssertionError();
            }
            if (!z10 && set.isEmpty()) {
                throw new AssertionError();
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((Set) identityHashMap.computeIfAbsent((com.android.tools.r8.graph.M2) it.next(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Set b11;
                        b11 = C4875Al0.b(new com.android.tools.r8.graph.M2[0]);
                        return b11;
                    }
                })).add(m22);
            }
        }
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7570hJ.this.a(c4798y, (com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
        this.f48528b.finished(c4798y.E().f50691j);
    }
}
