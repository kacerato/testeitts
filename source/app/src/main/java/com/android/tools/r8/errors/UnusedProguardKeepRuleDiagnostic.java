package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.AbstractC11468v3;

public class UnusedProguardKeepRuleDiagnostic implements ProguardKeepRuleDiagnostic {

    private final AbstractC11468v3 f36089b;

    public UnusedProguardKeepRuleDiagnostic(AbstractC11468v3 abstractC11468v3) {
        this.f36089b = abstractC11468v3;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Proguard configuration rule does not match anything: `" + ((Object) this.f36089b) + "`";
    }

    @Override
    public Origin getOrigin() {
        return this.f36089b.i();
    }

    @Override
    public Position getPosition() {
        return this.f36089b.f57278b;
    }
}
