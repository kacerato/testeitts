package com.android.tools.r8.errors;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.ClassReference;

public class ConstantPoolOverflowDiagnostic extends ClassFileOverflowDiagnostic {

    private final int f36040c;

    private final ClassReference f36041d;

    public ConstantPoolOverflowDiagnostic(Origin origin, ClassReference classReference, int i10) {
        super(origin);
        this.f36041d = classReference;
        this.f36040c = i10;
    }

    public int getConstantPoolSize() {
        return this.f36040c;
    }

    @Override
    public String getDiagnosticMessage() {
        ClassReference classReference = this.f36041d;
        return "Class " + ((Object) classReference) + " too large for class file. Constant pool size was " + getConstantPoolSize() + ".";
    }
}
