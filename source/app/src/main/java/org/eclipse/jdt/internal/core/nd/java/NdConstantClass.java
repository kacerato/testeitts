package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantClass extends NdConstant {
    public static final FieldManyToOne<NdTypeSignature> VALUE;
    public static StructDef<NdConstantClass> type;

    static {
        StructDef<NdConstantClass> create = StructDef.create(NdConstantClass.class, NdConstant.type);
        type = create;
        VALUE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_CONSTANT);
        type.done();
    }

    public NdConstantClass(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantClass create(Nd nd2, NdTypeSignature ndTypeSignature) {
        NdConstantClass ndConstantClass = new NdConstantClass(nd2);
        ndConstantClass.setValue(ndTypeSignature);
        return ndConstantClass;
    }

    @Override
    public Constant getConstant() {
        return null;
    }

    public NdTypeSignature getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(NdTypeSignature ndTypeSignature) {
        VALUE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public NdConstantClass(Nd nd2) {
        super(nd2);
    }
}
