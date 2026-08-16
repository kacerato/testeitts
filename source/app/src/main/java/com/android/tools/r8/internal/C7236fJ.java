package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.util.Set;

public final class C7236fJ extends AbstractC7737iJ implements DexFilePerClassFileConsumer {

    public final GlobalSyntheticsConsumer f47934a;

    public final C6903dJ f47935b = new C6903dJ(ProgramResource.Kind.DEX);

    public C7236fJ(GlobalSyntheticsConsumer globalSyntheticsConsumer) {
        this.f47934a = globalSyntheticsConsumer;
    }

    @Override
    public final void a(C4798y c4798y) {
        byte[] bArr;
        try {
            bArr = this.f47935b.a();
        } catch (IOException e10) {
            c4798y.E().f50691j.error(new ExceptionDiagnostic(e10));
            bArr = null;
        }
        if (bArr != null) {
            this.f47934a.accept(ByteDataView.of(bArr), null, c4798y.E().f50691j);
        }
        this.f47934a.finished(c4798y.E().f50691j);
    }

    @Override
    public final synchronized void accept(String str, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        C6903dJ c6903dJ = this.f47935b;
        byte[] copyByteData = byteDataView.copyByteData();
        c6903dJ.getClass();
        c6903dJ.f47373b.add(new C8699o50(C6903dJ.a(str), copyByteData));
    }

    @Override
    public final boolean combineSyntheticClassesWithPrimaryClass() {
        return false;
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        throw new C5417Jv0("Unexpected call to non-internal finished.");
    }
}
