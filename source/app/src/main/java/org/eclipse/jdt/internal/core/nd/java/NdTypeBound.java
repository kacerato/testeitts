package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdTypeBound extends NdStruct {
    public static final FieldManyToOne<NdTypeSignature> TYPE;
    public static final StructDef<NdTypeBound> type;

    static {
        StructDef<NdTypeBound> create = StructDef.create(NdTypeBound.class, NdStruct.type);
        type = create;
        TYPE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_TYPE_BOUND);
        create.done();
    }

    public NdTypeBound(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public void getSignature(CharArrayBuffer charArrayBuffer) {
        charArrayBuffer.append(':');
        getType().getSignature(charArrayBuffer);
    }

    public NdTypeSignature getType() {
        return TYPE.get(getNd(), this.address);
    }

    public void setType(NdTypeSignature ndTypeSignature) {
        TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }
}
