package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.impl.Constant;

public class SyntheticFieldBinding extends FieldBinding {
    public int index;

    public SyntheticFieldBinding(char[] cArr, TypeBinding typeBinding, int i10, ReferenceBinding referenceBinding, Constant constant, int i11) {
        super(cArr, typeBinding, i10, referenceBinding, constant);
        this.index = i11;
        this.tagBits |= 25769803776L;
    }
}
