package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.FloatConstant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldFloat;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantFloat extends NdConstant {
    public static final FieldFloat VALUE;
    public static StructDef<NdConstantFloat> type;

    static {
        StructDef<NdConstantFloat> create = StructDef.create(NdConstantFloat.class, NdConstant.type);
        type = create;
        VALUE = create.addFloat();
        type.done();
    }

    public NdConstantFloat(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantFloat create(Nd nd2, float f10) {
        NdConstantFloat ndConstantFloat = new NdConstantFloat(nd2);
        ndConstantFloat.setValue(f10);
        return ndConstantFloat;
    }

    @Override
    public Constant getConstant() {
        return FloatConstant.fromValue(getValue());
    }

    public float getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(float f10) {
        VALUE.put(getNd(), this.address, f10);
    }

    public NdConstantFloat(Nd nd2) {
        super(nd2);
    }
}
