package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ShortConstant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldShort;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantShort extends NdConstant {
    public static final FieldShort VALUE;
    public static StructDef<NdConstantShort> type;

    static {
        StructDef<NdConstantShort> create = StructDef.create(NdConstantShort.class, NdConstant.type);
        type = create;
        VALUE = create.addShort();
        type.done();
    }

    public NdConstantShort(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantShort create(Nd nd2, short s10) {
        NdConstantShort ndConstantShort = new NdConstantShort(nd2);
        ndConstantShort.setValue(s10);
        return ndConstantShort;
    }

    @Override
    public Constant getConstant() {
        return ShortConstant.fromValue(getValue());
    }

    public short getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(short s10) {
        VALUE.put(getNd(), this.address, s10);
    }

    public NdConstantShort(Nd nd2) {
        super(nd2);
    }
}
