package com.android.tools.r8.utils;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.DG;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import java.util.Arrays;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C11665l extends DexIndexedConsumer.ForwardingConsumer {

    public static final boolean f58614f = true;

    public DG f58615c;

    public final DexIndexedConsumer f58616d;

    public final r f58617e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11665l(r rVar, DexIndexedConsumer dexIndexedConsumer, DexIndexedConsumer dexIndexedConsumer2) {
        super(dexIndexedConsumer);
        this.f58617e = rVar;
        this.f58616d = dexIndexedConsumer2;
        this.f58615c = new DG();
    }

    public final void a(Integer num, C11670q c11670q) {
        C11662i.a aVar = this.f58617e.f58633a;
        byte[] bArr = c11670q.f58631b;
        Set set = c11670q.f58630a;
        aVar.getClass();
        aVar.f58598b.addAll(Arrays.asList(ProgramResource.fromBytes(Origin.unknown(), ProgramResource.Kind.DEX, bArr, set)));
    }

    @Override
    public final void accept(int i10, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        super.accept(i10, byteDataView, (Set<String>) set, diagnosticsHandler);
        byte[] copyByteData = byteDataView.copyByteData();
        synchronized (this) {
            this.f58615c.a(i10, new C11670q(set, copyByteData));
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
        r rVar = this.f58617e;
        if (rVar.f58634b) {
            if (f58614f) {
                return;
            }
            getDataResourceConsumer();
        } else {
            rVar.f58634b = true;
            this.f58615c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C11665l.this.a((Integer) obj, (C11670q) obj2);
                }
            });
            this.f58615c = null;
        }
    }

    @Override
    public final DataResourceConsumer getDataResourceConsumer() {
        DexIndexedConsumer dexIndexedConsumer = this.f58616d;
        return new C11664k(this, dexIndexedConsumer != null ? dexIndexedConsumer.getDataResourceConsumer() : null);
    }
}
