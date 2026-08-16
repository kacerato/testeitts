package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;

public class BinaryLambdaMethod extends LambdaMethod {
    public BinaryLambdaMethod(JavaElement javaElement, String str, String str2, int i10, String[] strArr, String[] strArr2, String str3, SourceMethodElementInfo sourceMethodElementInfo) {
        super(javaElement, str, str2, i10, strArr, strArr2, str3, sourceMethodElementInfo);
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        return this;
    }

    @Override
    public boolean isBinary() {
        return true;
    }
}
