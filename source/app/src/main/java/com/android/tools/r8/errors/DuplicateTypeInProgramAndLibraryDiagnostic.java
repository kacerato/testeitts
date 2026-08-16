package com.android.tools.r8.errors;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.ClassReference;
import java.util.List;

public class DuplicateTypeInProgramAndLibraryDiagnostic extends DuplicateTypesDiagnostic {
    public DuplicateTypeInProgramAndLibraryDiagnostic(ClassReference classReference, Origin origin, Origin origin2) {
        super(classReference, AbstractC7552hC.a(origin, origin2));
    }

    @Override
    public String getDiagnosticMessage() {
        return "Type " + getType().getTypeName() + " is defined by both the program: " + ((Object) getProgramOrigin()) + " and the library: " + ((Object) getLibraryOrigin());
    }

    public Origin getLibraryOrigin() {
        return (Origin) ((List) getOrigins()).get(1);
    }

    public Origin getProgramOrigin() {
        return (Origin) ((List) getOrigins()).get(0);
    }
}
