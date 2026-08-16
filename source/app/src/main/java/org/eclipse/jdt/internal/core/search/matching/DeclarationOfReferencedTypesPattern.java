package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class DeclarationOfReferencedTypesPattern extends TypeReferencePattern {
    protected IJavaElement enclosingElement;
    protected SimpleSet knownTypes;

    public DeclarationOfReferencedTypesPattern(IJavaElement iJavaElement) {
        super(null, null, 2);
        this.enclosingElement = iJavaElement;
        this.knownTypes = new SimpleSet();
        this.mustResolve = true;
    }
}
