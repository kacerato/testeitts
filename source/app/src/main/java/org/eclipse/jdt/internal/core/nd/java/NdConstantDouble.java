package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.DoubleConstant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldDouble;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantDouble extends NdConstant {
    public static final FieldDouble VALUE;
    public static StructDef<NdConstantDouble> type;

    static {
        StructDef<NdConstantDouble> create = StructDef.create(NdConstantDouble.class, NdConstant.type);
        type = create;
        VALUE = create.addDouble();
        type.done();
    }

    public NdConstantDouble(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantDouble create(Nd nd2, double d10) {
        NdConstantDouble ndConstantDouble = new NdConstantDouble(nd2);
        ndConstantDouble.setValue(d10);
        return ndConstantDouble;
    }

    @Override
    public Constant getConstant() {
        return DoubleConstant.fromValue(getValue());
    }

    public double getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(double d10) {
        VALUE.put(getNd(), this.address, d10);
    }

    public NdConstantDouble(Nd nd2) {
        super(nd2);
    }
}
