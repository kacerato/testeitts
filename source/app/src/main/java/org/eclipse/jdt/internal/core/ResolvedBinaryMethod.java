package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.JavaModelException;

public class ResolvedBinaryMethod extends BinaryMethod {
    private String uniqueKey;

    public ResolvedBinaryMethod(JavaElement javaElement, String str, String[] strArr, String str2) {
        super(javaElement, str, strArr);
        this.uniqueKey = str2;
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
            stringBuffer.append(this.uniqueKey);
            stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        }
    }

    @Override
    public JavaElement unresolved() {
        BinaryMethod binaryMethod = new BinaryMethod(this.parent, this.name, this.parameterTypes);
        binaryMethod.occurrenceCount = this.occurrenceCount;
        return binaryMethod;
    }

    @Override
    public String getKey(boolean z10) throws JavaModelException {
        return this.uniqueKey;
    }
}
