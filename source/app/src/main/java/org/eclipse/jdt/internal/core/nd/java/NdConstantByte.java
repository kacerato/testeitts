package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.ByteConstant;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantByte extends NdConstant {
    public static final FieldByte VALUE;
    public static StructDef<NdConstantByte> type;

    static {
        StructDef<NdConstantByte> create = StructDef.create(NdConstantByte.class, NdConstant.type);
        type = create;
        VALUE = create.addByte();
        type.done();
    }

    public NdConstantByte(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantByte create(Nd nd2, byte b10) {
        NdConstantByte ndConstantByte = new NdConstantByte(nd2);
        ndConstantByte.setValue(b10);
        return ndConstantByte;
    }

    @Override
    public Constant getConstant() {
        return ByteConstant.fromValue(getValue());
    }

    public byte getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(byte b10) {
        VALUE.put(getNd(), this.address, b10);
    }

    public NdConstantByte(Nd nd2) {
        super(nd2);
    }
}
