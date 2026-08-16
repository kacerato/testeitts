package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.Field;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantAnnotation extends NdConstant {
    public static final Field<NdAnnotation> VALUE;
    public static StructDef<NdConstantAnnotation> type;

    static {
        StructDef<NdConstantAnnotation> create = StructDef.create(NdConstantAnnotation.class, NdConstant.type);
        type = create;
        VALUE = Field.create(create, NdAnnotation.type);
        type.done();
    }

    public NdConstantAnnotation(Nd nd2, long j10) {
        super(nd2, j10);
    }

    @Override
    public Constant getConstant() {
        return null;
    }

    public NdAnnotation getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public NdConstantAnnotation(Nd nd2) {
        super(nd2);
    }
}
