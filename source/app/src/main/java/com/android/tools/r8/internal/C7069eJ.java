package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.C4798y;

public final class C7069eJ extends AbstractC7570hJ implements ClassFileConsumer {
    public C7069eJ(GlobalSyntheticsConsumer globalSyntheticsConsumer, C4798y c4798y) {
        super(globalSyntheticsConsumer, c4798y);
    }

    @Override
    public final ProgramResource.Kind a() {
        return ProgramResource.Kind.CF;
    }

    @Override
    public final void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
        this.f48529c.put(this.f48527a.b().d(str), byteDataView.copyByteData());
    }
}
