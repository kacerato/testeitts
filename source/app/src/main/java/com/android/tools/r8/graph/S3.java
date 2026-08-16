package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AZ;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.BZ;
import com.android.tools.r8.internal.DZ;
import com.android.tools.r8.internal.FZ;
import com.android.tools.r8.internal.InterfaceC10438yZ;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;

public final class S3 implements InterfaceC10438yZ, AZ, BZ, DZ, FZ {

    public static final boolean f36794c = true;

    public final com.android.tools.r8.shaking.I f36795a;

    public final Set f36796b = AbstractC5513Ll0.c();

    public S3(com.android.tools.r8.shaking.I i10) {
        this.f36795a = i10;
    }

    @Override
    public final void a(H2 h22, com.android.tools.r8.shaking.L0 l02) {
        h22.getClass();
        a(h22, h22);
    }

    @Override
    public final void a(F5 f52, D5 d52) {
        a((D5) f52, d52);
    }

    @Override
    public final void a(H5 h52, D5 d52, com.android.tools.r8.shaking.N n10) {
        a(h52, d52);
    }

    @Override
    public final void a(F5 f52) {
        f52.getClass();
        a((D5) f52, (D5) f52);
    }

    @Override
    public final void a(H5 h52) {
        h52.getClass();
        a(h52, h52);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.util.AbstractCollection, java.util.List] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.AbstractCollection, java.util.List] */
    public final void a(D5 d52, D5 d53) {
        if (this.f36796b.add(d52.getReference())) {
            final com.android.tools.r8.shaking.I i10 = this.f36795a;
            Objects.requireNonNull(i10);
            Y3 y32 = new Y3(d53, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    com.android.tools.r8.shaking.I.this.a((M2) obj, (D5) obj2);
                }
            });
            if (d52.isClass()) {
                H3.b N02 = d52.asClass().N0();
                if (N02.a()) {
                    return;
                }
                y32.c((List) N02.f36381a);
                H3.c cVar = N02.f36382b;
                if (cVar != null) {
                    cVar.a(y32);
                }
                y32.e(N02.f36383c);
                return;
            }
            if (d52.I()) {
                H3.g A02 = d52.b().d().A0();
                if (A02.a()) {
                    return;
                }
                A02.a(y32);
                return;
            }
            if (!f36794c && !d52.J()) {
                throw new AssertionError();
            }
            y32.b(d52.c().d().A0());
        }
    }
}
