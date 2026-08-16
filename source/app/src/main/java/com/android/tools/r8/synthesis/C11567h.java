package com.android.tools.r8.synthesis;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.internal.InterfaceC7365g50;
import com.android.tools.r8.references.ClassReference;

public final class C11567h implements GlobalSyntheticsConsumer {

    public final InterfaceC7365g50 f58255a;

    public C11567h(InterfaceC7365g50 interfaceC7365g50) {
        this.f58255a = interfaceC7365g50;
    }

    @Override
    public final void accept(ByteDataView byteDataView, ClassReference classReference, DiagnosticsHandler diagnosticsHandler) {
        this.f58255a.a(byteDataView, classReference.getBinaryName() + ".globals", diagnosticsHandler);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f58255a.a(diagnosticsHandler);
    }
}
