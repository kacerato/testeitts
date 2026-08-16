package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantBoolean extends NdConstant {
    public static final FieldByte VALUE;
    public static StructDef<NdConstantBoolean> type;

    static {
        StructDef<NdConstantBoolean> create = StructDef.create(NdConstantBoolean.class, NdConstant.type);
        type = create;
        VALUE = create.addByte();
        type.done();
    }

    public NdConstantBoolean(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantBoolean create(Nd nd2, boolean z10) {
        NdConstantBoolean ndConstantBoolean = new NdConstantBoolean(nd2);
        ndConstantBoolean.setValue(z10);
        return ndConstantBoolean;
    }

    @Override
    public Constant getConstant() {
        return BooleanConstant.fromValue(getValue());
    }

    public boolean getValue() {
        return VALUE.get(getNd(), this.address) != 0;
    }

    public void setValue(boolean z10) {
        VALUE.put(getNd(), this.address, z10 ? (byte) 1 : (byte) 0);
    }

    public NdConstantBoolean(Nd nd2) {
        super(nd2);
    }
}
