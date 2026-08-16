package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.LongConstant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldLong;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantLong extends NdConstant {
    public static final FieldLong VALUE;
    public static StructDef<NdConstantLong> type;

    static {
        StructDef<NdConstantLong> create = StructDef.create(NdConstantLong.class, NdConstant.type);
        type = create;
        VALUE = create.addLong();
        type.done();
    }

    public NdConstantLong(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantLong create(Nd nd2, long j10) {
        NdConstantLong ndConstantLong = new NdConstantLong(nd2);
        ndConstantLong.setValue(j10);
        return ndConstantLong;
    }

    @Override
    public Constant getConstant() {
        return LongConstant.fromValue(getValue());
    }

    public long getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(long j10) {
        VALUE.put(getNd(), this.address, j10);
    }

    public NdConstantLong(Nd nd2) {
        super(nd2);
    }
}
