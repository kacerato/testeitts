package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class UnsupportedMainDexListUsageDiagnostic implements Diagnostic {

    private final Origin f36088b;

    public UnsupportedMainDexListUsageDiagnostic(Origin origin) {
        this.f36088b = origin;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Unsupported usage of main-dex list. The usage of main-dex-list content for the compilation of non-DEX inputs is deprecated. See issue https://issuetracker.google.com/181858113 for context.";
    }

    @Override
    public Origin getOrigin() {
        return this.f36088b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
