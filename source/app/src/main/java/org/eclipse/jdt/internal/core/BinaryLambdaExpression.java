package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;

public class BinaryLambdaExpression extends LambdaExpression {
    public BinaryLambdaExpression(JavaElement javaElement, org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        super(javaElement, lambdaExpression);
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        return this;
    }

    @Override
    public boolean isBinary() {
        return true;
    }

    public BinaryLambdaExpression(JavaElement javaElement, String str, int i10, int i11, int i12) {
        super(javaElement, str, i10, i11, i12);
    }

    public BinaryLambdaExpression(JavaElement javaElement, String str, int i10, int i11, int i12, LambdaMethod lambdaMethod) {
        super(javaElement, str, i10, i11, i12, lambdaMethod);
    }
}
