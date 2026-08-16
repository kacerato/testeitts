package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;

public class ResolvedSourceField extends SourceField {
    private String uniqueKey;

    public ResolvedSourceField(JavaElement javaElement, String str, String str2) {
        super(javaElement, str);
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
        SourceField sourceField = new SourceField(this.parent, this.name);
        sourceField.occurrenceCount = this.occurrenceCount;
        return sourceField;
    }
}
