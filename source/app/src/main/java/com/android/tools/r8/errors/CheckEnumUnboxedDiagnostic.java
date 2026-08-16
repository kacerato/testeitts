package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public class CheckEnumUnboxedDiagnostic implements Diagnostic {

    private final AbstractC7552hC f36032b;

    public CheckEnumUnboxedDiagnostic(AbstractC7552hC abstractC7552hC) {
        this.f36032b = abstractC7552hC;
    }

    public static d builder() {
        return new d();
    }

    @Override
    public String getDiagnosticMessage() {
        StringBuilder sb2 = new StringBuilder("Enum unboxing checks failed.");
        for (String str : this.f36032b) {
            sb2.append(System.lineSeparator());
            sb2.append(str);
        }
        return sb2.toString();
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
