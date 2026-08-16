package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class ResolvedBinaryField extends BinaryField {
    private String uniqueKey;

    public ResolvedBinaryField(JavaElement javaElement, String str, String str2) {
        super(javaElement, str);
        this.uniqueKey = str2;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public IAnnotation[] getAnnotations() throws JavaModelException {
        return super.getAnnotations();
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return super.getAttachedJavadoc(iProgressMonitor);
    }

    @Override
    public Object getConstant() throws JavaModelException {
        return super.getConstant();
    }

    @Override
    public int getElementType() {
        return super.getElementType();
    }

    @Override
    public int getFlags() throws JavaModelException {
        return super.getFlags();
    }

    @Override
    public String getKey() {
        return this.uniqueKey;
    }

    @Override
    public String getTypeSignature() throws JavaModelException {
        return super.getTypeSignature();
    }

    @Override
    public boolean isEnumConstant() throws JavaModelException {
        return super.isEnumConstant();
    }

    @Override
    public boolean isResolved() {
        return true;
    }

    @Override
    public JavaElement resolved(Binding binding) {
        return super.resolved(binding);
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
        BinaryField binaryField = new BinaryField(this.parent, this.name);
        binaryField.occurrenceCount = this.occurrenceCount;
        return binaryField;
    }

    @Override
    public String getKey(boolean z10) {
        return this.uniqueKey;
    }
}
