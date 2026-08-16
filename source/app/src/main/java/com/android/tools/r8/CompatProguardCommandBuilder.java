package com.android.tools.r8;

import com.android.tools.r8.R8Command;

public class CompatProguardCommandBuilder extends R8Command.Builder {
    public CompatProguardCommandBuilder() {
        this(true);
    }

    public CompatProguardCommandBuilder(boolean z10, DiagnosticsHandler diagnosticsHandler) {
        super(diagnosticsHandler);
        setProguardCompatibility(z10);
    }

    public CompatProguardCommandBuilder(boolean z10) {
        super(new C4340g0());
        setProguardCompatibility(z10);
    }
}
