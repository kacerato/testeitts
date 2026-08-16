package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class DexFileOverflowDiagnostic implements Diagnostic {

    private final boolean f36042b;

    private final long f36043c;

    private final long f36044d;

    public DexFileOverflowDiagnostic(boolean z10, long j10, long j11) {
        this.f36042b = z10;
        this.f36043c = j10;
        this.f36044d = j11;
    }

    @Override
    public String getDiagnosticMessage() {
        StringBuilder sb2 = new StringBuilder("Cannot fit requested classes in ");
        sb2.append(hasMainDexSpecification() ? "the main-" : "a single ");
        sb2.append("dex file (");
        if (getNumberOfMethods() > getMaximumNumberOfMethods()) {
            sb2.append("# methods: ");
            sb2.append(getNumberOfMethods());
            sb2.append(" > ");
            sb2.append(getMaximumNumberOfMethods());
            if (getNumberOfFields() > getMaximumNumberOfFields()) {
                sb2.append(" ; ");
            }
        }
        if (getNumberOfFields() > getMaximumNumberOfFields()) {
            sb2.append("# fields: ");
            sb2.append(getNumberOfFields());
            sb2.append(" > ");
            sb2.append(getMaximumNumberOfFields());
        }
        sb2.append(")");
        return sb2.toString();
    }

    public long getMaximumNumberOfFields() {
        return 65536L;
    }

    public long getMaximumNumberOfMethods() {
        return 65536L;
    }

    public long getNumberOfFields() {
        return this.f36044d;
    }

    public long getNumberOfMethods() {
        return this.f36043c;
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return null;
    }

    public boolean hasMainDexSpecification() {
        return this.f36042b;
    }
}
