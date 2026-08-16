package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;

public class SyntheticArgumentBinding extends LocalVariableBinding {
    public LocalVariableBinding actualOuterLocalVariable;
    public FieldBinding matchingField;

    public SyntheticArgumentBinding(LocalVariableBinding localVariableBinding) {
        super(CharOperation.concat(TypeConstants.SYNTHETIC_OUTER_LOCAL_PREFIX, localVariableBinding.name), localVariableBinding.type, 16, true);
        this.tagBits |= 1024;
        this.useFlag = 1;
        this.actualOuterLocalVariable = localVariableBinding;
    }

    public SyntheticArgumentBinding(ReferenceBinding referenceBinding) {
        super(CharOperation.concat(TypeConstants.SYNTHETIC_ENCLOSING_INSTANCE_PREFIX, String.valueOf(referenceBinding.depth()).toCharArray()), (TypeBinding) referenceBinding, 16, true);
        this.tagBits |= 1024;
        this.useFlag = 1;
    }
}
