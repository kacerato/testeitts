package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.JavaModelException;

public class ResolvedLambdaExpression extends LambdaExpression {
    private String uniqueKey;
    LambdaExpression unresolved;

    public ResolvedLambdaExpression(JavaElement javaElement, LambdaExpression lambdaExpression, String str) {
        super(javaElement, lambdaExpression.interphase, lambdaExpression.sourceStart, lambdaExpression.sourceEnd, lambdaExpression.arrowPosition, lambdaExpression.lambdaMethod);
        this.uniqueKey = str;
        this.unresolved = lambdaExpression;
    }

    @Override
    public boolean equals(Object obj) {
        return this.unresolved.equals(obj);
    }

    @Override
    public String getFullyQualifiedParameterizedName() throws JavaModelException {
        return getFullyQualifiedParameterizedName(getFullyQualifiedName('.'), this.uniqueKey);
    }

    @Override
    public String getKey() {
        return this.uniqueKey;
    }

    @Override
    public boolean isResolved() {
        return true;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        super.toStringInfo(i10, stringBuffer, obj, z10);
        if (z10) {
            stringBuffer.append(" {key=");
            stringBuffer.append(getKey());
            stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        }
    }

    @Override
    public JavaElement unresolved() {
        return this.unresolved;
    }
}
