package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;

public class CatchParameterBinding extends LocalVariableBinding {
    TypeBinding[] preciseTypes;

    public CatchParameterBinding(LocalDeclaration localDeclaration, TypeBinding typeBinding, int i10, boolean z10) {
        super(localDeclaration, typeBinding, i10, z10);
        this.preciseTypes = Binding.NO_EXCEPTIONS;
    }

    public TypeBinding[] getPreciseTypes() {
        return this.preciseTypes;
    }

    @Override
    public boolean isCatchParameter() {
        return true;
    }

    public void setPreciseType(TypeBinding typeBinding) {
        int length = this.preciseTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.equalsEquals(this.preciseTypes[i10], typeBinding)) {
                return;
            }
        }
        TypeBinding[] typeBindingArr = this.preciseTypes;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length + 1];
        this.preciseTypes = typeBindingArr2;
        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
        this.preciseTypes[length] = typeBinding;
    }
}
