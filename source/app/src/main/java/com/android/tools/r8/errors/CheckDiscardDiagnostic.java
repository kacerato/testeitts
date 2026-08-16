package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.function.Consumer;

public class CheckDiscardDiagnostic implements Diagnostic {

    private final AbstractC7552hC f36031b;

    public static void a(StringBuilder sb2, String str) {
        sb2.append(System.lineSeparator());
        sb2.append(str);
    }

    @Override
    public String getDiagnosticMessage() {
        final StringBuilder sb2 = new StringBuilder("Discard checks failed.");
        if (this.f36031b.size() > 0) {
            sb2.append(System.lineSeparator());
            sb2.append("The following items were not discarded");
            this.f36031b.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    CheckDiscardDiagnostic.a(StringBuilder.this, (String) obj);
                }
            });
        }
        return sb2.toString();
    }

    public int getNumberOfFailures() {
        return this.f36031b.size();
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }

    private CheckDiscardDiagnostic(AbstractC7552hC abstractC7552hC) {
        this.f36031b = abstractC7552hC;
    }
}
