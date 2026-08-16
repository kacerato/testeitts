package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;

public class CodeSizeOverflowDiagnostic extends ClassFileOverflowDiagnostic {

    private final MethodReference f36034c;

    private final int f36035d;

    private final MethodPosition f36036e;

    public CodeSizeOverflowDiagnostic(Origin origin, MethodReference methodReference, int i10) {
        super(origin);
        this.f36034c = methodReference;
        this.f36035d = i10;
        this.f36036e = new MethodPosition(methodReference);
    }

    public int getCodeSize() {
        return this.f36035d;
    }

    @Override
    public String getDiagnosticMessage() {
        MethodReference methodReference = this.f36034c;
        return "Method " + ((Object) methodReference) + " too large for class file. Code size was " + getCodeSize() + ".";
    }

    @Override
    public Position getPosition() {
        return this.f36036e;
    }
}
