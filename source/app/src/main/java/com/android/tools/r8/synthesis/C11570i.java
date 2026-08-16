package com.android.tools.r8.synthesis;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.internal.InterfaceC7365g50;
import com.android.tools.r8.references.ClassReference;

public final class C11570i implements GlobalSyntheticsConsumer {

    public final InterfaceC7365g50 f58259a;

    public C11570i(InterfaceC7365g50 interfaceC7365g50) {
        this.f58259a = interfaceC7365g50;
    }

    @Override
    public final void accept(ByteDataView byteDataView, ClassReference classReference, DiagnosticsHandler diagnosticsHandler) {
        this.f58259a.a(byteDataView, classReference.getBinaryName() + ".globals", diagnosticsHandler);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f58259a.a(diagnosticsHandler);
    }
}
