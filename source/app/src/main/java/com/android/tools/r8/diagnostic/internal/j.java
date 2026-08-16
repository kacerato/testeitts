package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.MissingDefinitionInfo;
import com.android.tools.r8.internal.AbstractC7552hC;
import java.util.Collection;

public abstract class j implements MissingDefinitionInfo {

    public final AbstractC7552hC f36005a;

    public j(AbstractC7552hC abstractC7552hC) {
        this.f36005a = abstractC7552hC;
    }

    @Override
    public final String getDiagnosticMessage() {
        StringBuilder sb2 = new StringBuilder();
        k.a(sb2, this);
        return sb2.toString();
    }

    @Override
    public final Collection getReferencedFromContexts() {
        return this.f36005a;
    }
}
