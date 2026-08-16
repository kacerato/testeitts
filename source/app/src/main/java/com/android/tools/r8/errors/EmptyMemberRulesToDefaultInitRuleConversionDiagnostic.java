package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.K3;

public class EmptyMemberRulesToDefaultInitRuleConversionDiagnostic implements Diagnostic {

    private final K3 f36048b;

    public EmptyMemberRulesToDefaultInitRuleConversionDiagnostic(K3 k32) {
        this.f36048b = k32;
    }

    @Override
    public String getDiagnosticMessage() {
        return C10656zq0.a("The current version of R8 implicitly keeps the default constructor for Proguard configuration rules that have no member pattern. If the following rule should continue to keep the default constructor in the next major version of R8, then it must be augmented with the member pattern `{ void <init>(); }` to explicitly keep the default constructor:", this.f36048b.toString());
    }

    @Override
    public Origin getOrigin() {
        return this.f36048b.i();
    }

    @Override
    public Position getPosition() {
        return this.f36048b.f57278b;
    }
}
