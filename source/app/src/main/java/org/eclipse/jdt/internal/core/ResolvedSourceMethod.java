package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;

public class ResolvedSourceMethod extends SourceMethod {
    private String uniqueKey;

    public ResolvedSourceMethod(JavaElement javaElement, String str, String[] strArr, String str2) {
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
            stringBuffer.append(getKey());
            stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        }
    }

    @Override
    public JavaElement unresolved() {
        SourceMethod sourceMethod = new SourceMethod(this.parent, this.name, this.parameterTypes);
        sourceMethod.occurrenceCount = this.occurrenceCount;
        return sourceMethod;
    }
}
