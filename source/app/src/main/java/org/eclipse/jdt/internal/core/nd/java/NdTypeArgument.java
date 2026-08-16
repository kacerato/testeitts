package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdTypeArgument extends NdNode {
    public static final FieldManyToOne<NdComplexTypeSignature> PARENT;
    public static final FieldManyToOne<NdTypeSignature> TYPE_SIGNATURE;
    public static final FieldByte WILDCARD;
    public static final int WILDCARD_EXTENDS = 1;
    public static final int WILDCARD_NONE = 0;
    public static final int WILDCARD_QUESTION = 3;
    public static final int WILDCARD_SUPER = 2;
    public static final StructDef<NdTypeArgument> type;

    static {
        StructDef<NdTypeArgument> create = StructDef.create(NdTypeArgument.class, NdNode.type);
        type = create;
        PARENT = FieldManyToOne.createOwner(create, NdComplexTypeSignature.TYPE_ARGUMENTS);
        TYPE_SIGNATURE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_TYPE_ARGUMENT);
        WILDCARD = create.addByte();
        create.done();
    }

    public NdTypeArgument(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public NdComplexTypeSignature getParent() {
        return PARENT.get(getNd(), this.address);
    }

    public void getSignature(CharArrayBuffer charArrayBuffer) {
        int wildcard = getWildcard();
        if (wildcard == 1) {
            charArrayBuffer.append('-');
        } else if (wildcard == 2) {
            charArrayBuffer.append('+');
        } else if (wildcard == 3) {
            charArrayBuffer.append('*');
            return;
        }
        NdTypeSignature type2 = getType();
        if (type2 != null) {
            type2.getSignature(charArrayBuffer);
        }
    }

    public NdTypeSignature getType() {
        return TYPE_SIGNATURE.get(getNd(), this.address);
    }

    public int getWildcard() {
        return WILDCARD.get(getNd(), this.address);
    }

    public void setType(NdTypeSignature ndTypeSignature) {
        TYPE_SIGNATURE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public void setWildcard(int i10) {
        WILDCARD.put(getNd(), this.address, (byte) i10);
    }

    public NdTypeArgument(Nd nd2, NdComplexTypeSignature ndComplexTypeSignature) {
        super(nd2);
        PARENT.put(nd2, this.address, (long) ndComplexTypeSignature);
    }
}
