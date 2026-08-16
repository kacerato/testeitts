package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class DeclarationOfAccessedFieldsPattern extends FieldPattern {
    protected IJavaElement enclosingElement;
    protected SimpleSet knownFields;

    public DeclarationOfAccessedFieldsPattern(IJavaElement iJavaElement) {
        super(null, null, null, null, null, 2, 2);
        this.enclosingElement = iJavaElement;
        this.knownFields = new SimpleSet();
        this.mustResolve = true;
    }
}
