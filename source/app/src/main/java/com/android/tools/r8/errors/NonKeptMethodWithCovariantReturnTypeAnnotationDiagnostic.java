package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.internal.C7598hX;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;

public class NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic implements Diagnostic {

    private final Origin f36075b;

    private final MethodReference f36076c;

    private final MethodPosition f36077d;

    public NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic(H5 h52) {
        this.f36075b = h52.f36317b.f36244d;
        this.f36076c = h52.w();
        this.f36077d = MethodPosition.create(h52);
    }

    @Override
    public String getDiagnosticMessage() {
        return "Methods with @CovariantReturnType annotations should be kept, but was not: " + C7598hX.b(this.f36076c);
    }

    @Override
    public Origin getOrigin() {
        return this.f36075b;
    }

    @Override
    public Position getPosition() {
        return this.f36077d;
    }
}
