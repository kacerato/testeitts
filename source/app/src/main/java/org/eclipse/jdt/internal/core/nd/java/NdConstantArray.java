package org.eclipse.jdt.internal.core.nd.java;

import java.util.List;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantArray extends NdConstant {
    public static final FieldOneToMany<NdConstant> ELEMENTS;
    public static StructDef<NdConstantArray> type;

    static {
        StructDef<NdConstantArray> create = StructDef.create(NdConstantArray.class, NdConstant.type);
        type = create;
        ELEMENTS = FieldOneToMany.create(create, NdConstant.PARENT_ARRAY, 2);
        type.done();
    }

    public NdConstantArray(Nd nd2, long j10) {
        super(nd2, j10);
    }

    @Override
    public Constant getConstant() {
        return null;
    }

    public List<NdConstant> getValue() {
        return ELEMENTS.asList(getNd(), this.address);
    }

    public NdConstantArray(Nd nd2) {
        super(nd2);
    }
}
