package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.ClassReference;
import java.util.Collection;

public class DuplicateTypesDiagnostic implements Diagnostic {

    static final boolean f36045d = true;

    private final ClassReference f36046b;

    private final Collection f36047c;

    public DuplicateTypesDiagnostic(ClassReference classReference, Collection<Origin> collection) {
        boolean z10 = f36045d;
        if (!z10 && classReference == null) {
            throw new AssertionError();
        }
        if (!z10 && collection.size() <= 1) {
            throw new AssertionError();
        }
        this.f36046b = classReference;
        this.f36047c = collection;
    }

    @Override
    public String getDiagnosticMessage() {
        return "Type " + C4932Bl.b(this.f36046b.getDescriptor()) + " is defined multiple times: " + C10656zq0.a(", ", this.f36047c);
    }

    @Override
    public Origin getOrigin() {
        return (Origin) this.f36047c.iterator().next();
    }

    public Collection<Origin> getOrigins() {
        return this.f36047c;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }

    public ClassReference getType() {
        return this.f36046b;
    }
}
