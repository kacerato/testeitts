package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class ServiceLoaderRewriterDiagnostic implements Diagnostic {

    private final Origin f54804b;

    private final String f54805c;

    public ServiceLoaderRewriterDiagnostic(Origin origin, String str) {
        this.f54804b = origin;
        this.f54805c = str;
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f54805c;
    }

    @Override
    public Origin getOrigin() {
        return this.f54804b;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
