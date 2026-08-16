package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdTypeInterface extends NdNode {
    public static final FieldManyToOne<NdType> APPLIES_TO;
    public static final FieldManyToOne<NdTypeSignature> IMPLEMENTS;
    public static StructDef<NdTypeInterface> type;

    static {
        StructDef<NdTypeInterface> create = StructDef.create(NdTypeInterface.class, NdNode.type);
        type = create;
        APPLIES_TO = FieldManyToOne.createOwner(create, NdType.INTERFACES);
        IMPLEMENTS = FieldManyToOne.create(type, NdTypeSignature.IMPLEMENTATIONS);
        type.done();
    }

    public NdTypeInterface(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public NdType getImplementation() {
        return APPLIES_TO.get(getNd(), this.address);
    }

    public NdTypeSignature getInterface() {
        return IMPLEMENTS.get(getNd(), this.address);
    }

    public NdTypeInterface(Nd nd2, NdType ndType, NdTypeSignature ndTypeSignature) {
        super(nd2);
        APPLIES_TO.put(nd2, this.address, (long) ndType);
        IMPLEMENTS.put(nd2, this.address, (long) ndTypeSignature);
    }
}
