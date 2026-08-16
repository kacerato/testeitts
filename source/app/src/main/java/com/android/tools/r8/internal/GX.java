package com.android.tools.r8.internal;

import com.android.tools.r8.errors.DesugarDiagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class GX implements DesugarDiagnostic {

    public final String f40513b;

    public GX(String str) {
        this.f40513b = str;
    }

    @Override
    public final String getDiagnosticMessage() {
        return "Invalid build configuration. Attempt to create a global synthetic for '" + this.f40513b + "' without a global-synthetics consumer.";
    }

    @Override
    public final Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public final Position getPosition() {
        return Position.UNKNOWN;
    }
}
