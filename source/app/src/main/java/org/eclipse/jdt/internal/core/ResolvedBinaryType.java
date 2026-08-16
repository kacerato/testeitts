package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.JavaModelException;

public class ResolvedBinaryType extends BinaryType {
    private String uniqueKey;

    public ResolvedBinaryType(JavaElement javaElement, String str, String str2) {
        super(javaElement, str);
        this.uniqueKey = str2;
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
            stringBuffer.append(this.uniqueKey);
            stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        }
    }

    @Override
    public JavaElement unresolved() {
        BinaryType binaryType = new BinaryType(this.parent, this.name);
        binaryType.occurrenceCount = this.occurrenceCount;
        return binaryType;
    }

    @Override
    public String getKey(boolean z10) throws JavaModelException {
        return this.uniqueKey;
    }
}
