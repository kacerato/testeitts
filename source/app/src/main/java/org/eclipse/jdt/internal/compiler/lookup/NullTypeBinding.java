package org.eclipse.jdt.internal.compiler.lookup;

public class NullTypeBinding extends BaseTypeBinding {
    public NullTypeBinding() {
        super(12, TypeConstants.NULL, new char[]{'N'});
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return this;
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
    }

    @Override
    public TypeBinding unannotated() {
        return this;
    }
}
