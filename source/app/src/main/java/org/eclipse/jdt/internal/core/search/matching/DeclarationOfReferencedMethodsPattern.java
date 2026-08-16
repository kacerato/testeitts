package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class DeclarationOfReferencedMethodsPattern extends MethodPattern {
    protected IJavaElement enclosingElement;
    protected SimpleSet knownMethods;

    public DeclarationOfReferencedMethodsPattern(IJavaElement iJavaElement) {
        super(null, null, null, null, null, null, null, null, 2, 2);
        this.enclosingElement = iJavaElement;
        this.knownMethods = new SimpleSet();
        this.mustResolve = true;
    }
}
