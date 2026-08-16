package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.GlobalSyntheticsConsumer;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class C7403gJ extends AbstractC7570hJ implements DexFilePerClassFileConsumer {
    public C7403gJ(GlobalSyntheticsConsumer globalSyntheticsConsumer, C4798y c4798y) {
        super(globalSyntheticsConsumer, c4798y);
    }

    @Override
    public final ProgramResource.Kind a() {
        return ProgramResource.Kind.DEX;
    }

    @Override
    public final void accept(String str, ByteDataView byteDataView, Set set, DiagnosticsHandler diagnosticsHandler) {
        this.f48529c.put(this.f48527a.b().d(str), byteDataView.copyByteData());
    }

    @Override
    public final boolean combineSyntheticClassesWithPrimaryClass() {
        return false;
    }
}
