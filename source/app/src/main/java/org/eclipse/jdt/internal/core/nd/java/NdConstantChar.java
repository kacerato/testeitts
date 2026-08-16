package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.CharConstant;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldChar;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantChar extends NdConstant {
    public static final FieldChar VALUE;
    public static StructDef<NdConstantChar> type;

    static {
        StructDef<NdConstantChar> create = StructDef.create(NdConstantChar.class, NdConstant.type);
        type = create;
        VALUE = create.addChar();
        type.done();
    }

    public NdConstantChar(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantChar create(Nd nd2, char c10) {
        NdConstantChar ndConstantChar = new NdConstantChar(nd2);
        ndConstantChar.setValue(c10);
        return ndConstantChar;
    }

    @Override
    public Constant getConstant() {
        return CharConstant.fromValue(getValue());
    }

    public char getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(char c10) {
        VALUE.put(getNd(), this.address, c10);
    }

    public NdConstantChar(Nd nd2) {
        super(nd2);
    }
}
