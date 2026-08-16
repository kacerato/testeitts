package org.eclipse.jdt.internal.compiler.lookup;

public class VoidTypeBinding extends BaseTypeBinding {
    public VoidTypeBinding() {
        super(6, TypeConstants.VOID, new char[]{'V'});
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
