package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IntConstant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldInt;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantInt extends NdConstant {
    public static final FieldInt VALUE;
    public static StructDef<NdConstantInt> type;

    static {
        StructDef<NdConstantInt> create = StructDef.create(NdConstantInt.class, NdConstant.type);
        type = create;
        VALUE = create.addInt();
        type.done();
    }

    public NdConstantInt(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantInt create(Nd nd2, int i10) {
        NdConstantInt ndConstantInt = new NdConstantInt(nd2);
        ndConstantInt.setValue(i10);
        return ndConstantInt;
    }

    @Override
    public Constant getConstant() {
        return IntConstant.fromValue(getValue());
    }

    public int getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(int i10) {
        VALUE.put(getNd(), this.address, i10);
    }

    public NdConstantInt(Nd nd2) {
        super(nd2);
    }
}
