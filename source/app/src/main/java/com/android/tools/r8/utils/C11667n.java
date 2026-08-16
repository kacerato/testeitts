package com.android.tools.r8.utils;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.BiConsumer;

public final class C11667n extends DexFilePerClassFileConsumer.ForwardingConsumer {

    public static final boolean f58620f = true;

    public TreeMap f58621c;

    public final DexFilePerClassFileConsumer f58622d;

    public final r f58623e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11667n(r rVar, DexFilePerClassFileConsumer dexFilePerClassFileConsumer, DexFilePerClassFileConsumer dexFilePerClassFileConsumer2) {
        super(dexFilePerClassFileConsumer);
        this.f58623e = rVar;
        this.f58622d = dexFilePerClassFileConsumer2;
        this.f58621c = new TreeMap();
    }

    public final void a(String str, C11670q c11670q) {
        C11662i.a aVar = this.f58623e.f58633a;
        byte[] bArr = c11670q.f58631b;
        Set set = c11670q.f58630a;
        aVar.getClass();
        ProgramResource fromBytes = ProgramResource.fromBytes(Origin.unknown(), ProgramResource.Kind.DEX, bArr, set);
        aVar.f58598b.add(fromBytes);
        aVar.f58600d.put(fromBytes, str);
    }

    @Override
    public final void accept(String str, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        super.accept(str, byteDataView, (Set<String>) set, diagnosticsHandler);
        byte[] copyByteData = byteDataView.copyByteData();
        synchronized (this) {
            this.f58621c.put(str, new C11670q(set, copyByteData));
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
        r rVar = this.f58623e;
        if (rVar.f58634b) {
            if (f58620f) {
                return;
            }
            getDataResourceConsumer();
        } else {
            rVar.f58634b = true;
            this.f58621c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C11667n.this.a((String) obj, (C11670q) obj2);
                }
            });
            this.f58621c = null;
        }
    }

    @Override
    public final DataResourceConsumer getDataResourceConsumer() {
        DexFilePerClassFileConsumer dexFilePerClassFileConsumer = this.f58622d;
        return new C11666m(this, dexFilePerClassFileConsumer != null ? dexFilePerClassFileConsumer.getDataResourceConsumer() : null);
    }
}
