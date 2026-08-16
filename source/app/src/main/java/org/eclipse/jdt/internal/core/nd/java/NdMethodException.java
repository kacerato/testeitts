package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdMethodException extends NdStruct {
    public static final FieldManyToOne<NdTypeSignature> EXCEPTION_TYPE;
    public static StructDef<NdMethodException> type;

    static {
        StructDef<NdMethodException> create = StructDef.create(NdMethodException.class);
        type = create;
        EXCEPTION_TYPE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_EXCEPTION);
        type.done();
    }

    public NdMethodException(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public NdTypeSignature getExceptionType() {
        return EXCEPTION_TYPE.get(getNd(), this.address);
    }

    public void setExceptionType(NdTypeSignature ndTypeSignature) {
        EXCEPTION_TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public String toString() {
        try {
            return getExceptionType().toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }
}
