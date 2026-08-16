package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4818z0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;

public final class C7277fc0 implements InterfaceC7875j9, InterfaceC5599Na {

    public static final boolean f48020d = true;

    public final C4798y f48021b;

    public final C4724u1 f48022c;

    public C7277fc0(C4798y c4798y) {
        this.f48021b = c4798y;
        this.f48022c = c4798y.b();
    }

    @Override
    public final void a(C4861Af c4861Af, AbstractC8710o9 abstractC8710o9) {
        C4818z0 c4818z0 = this.f48021b.f().a().f38368f;
        if (c4818z0.f38454c.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(c4818z0.f38454c.size());
        Iterator it = c4818z0.f38454c.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 a10 = this.f48021b.a((com.android.tools.r8.graph.M2) it.next());
            boolean z10 = f48020d;
            if (!z10 && a10 == null) {
                throw new AssertionError();
            }
            if (!z10 && !a10.e0()) {
                throw new AssertionError();
            }
            arrayList.add(a10.d0());
        }
        C4798y c4798y = this.f48021b;
        AbstractC10447yc0.a(c4798y);
        AbstractC10447yc0.a(c4798y, arrayList, abstractC8710o9, abstractC8710o9, null);
    }

    @Override
    public final String b() {
        return "$record";
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Record class desugaring");
        try {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
                if (h22.x1()) {
                    if (!f48020d && h22.f36247g != this.f48022c.f38076j2) {
                        throw new AssertionError();
                    }
                    h22.f36246f.b(65536);
                }
            }
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
