package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.impl.Constant;

public class ParameterizedFieldBinding extends FieldBinding {
    public FieldBinding originalField;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.eclipse.jdt.internal.compiler.lookup.TypeBinding] */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.eclipse.jdt.internal.compiler.lookup.TypeBinding] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ParameterizedFieldBinding(ParameterizedTypeBinding parameterizedTypeBinding, FieldBinding fieldBinding) {
        super(r1, r2, fieldBinding.modifiers, parameterizedTypeBinding, null);
        ParameterizedTypeBinding substitute;
        char[] cArr = fieldBinding.name;
        int i10 = fieldBinding.modifiers;
        if ((i10 & 16384) != 0) {
            substitute = parameterizedTypeBinding;
        } else {
            substitute = (i10 & 8) != 0 ? fieldBinding.type : Scope.substitute(parameterizedTypeBinding, fieldBinding.type);
        }
        this.originalField = fieldBinding;
        this.tagBits = fieldBinding.tagBits;
        this.f102483id = fieldBinding.f102483id;
    }

    @Override
    public Constant constant() {
        return this.originalField.constant();
    }

    @Override
    public FieldBinding original() {
        return this.originalField.original();
    }

    @Override
    public void setConstant(Constant constant) {
        this.originalField.setConstant(constant);
    }
}
