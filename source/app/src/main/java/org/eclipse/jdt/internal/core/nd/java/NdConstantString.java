package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.StringConstant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantString extends NdConstant {
    public static final FieldString VALUE;
    public static StructDef<NdConstantString> type;

    static {
        StructDef<NdConstantString> create = StructDef.create(NdConstantString.class, NdConstant.type);
        type = create;
        VALUE = create.addString();
        type.done();
    }

    public NdConstantString(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantString create(Nd nd2, String str) {
        NdConstantString ndConstantString = new NdConstantString(nd2);
        ndConstantString.setValue(str);
        return ndConstantString;
    }

    @Override
    public Constant getConstant() {
        return StringConstant.fromValue(getValue().getString());
    }

    public IString getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setValue(String str) {
        VALUE.put(getNd(), this.address, str);
    }

    public NdConstantString(Nd nd2) {
        super(nd2);
    }
}
