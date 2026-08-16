package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdWorkspaceLocation extends NdNode {
    public static final FieldString PATH;
    public static final FieldManyToOne<NdResourceFile> RESOURCE;
    public static final StructDef<NdWorkspaceLocation> type;

    static {
        StructDef<NdWorkspaceLocation> create = StructDef.create(NdWorkspaceLocation.class, NdNode.type);
        type = create;
        RESOURCE = FieldManyToOne.createOwner(create, NdResourceFile.WORKSPACE_MAPPINGS);
        PATH = create.addString();
        create.done();
    }

    public NdWorkspaceLocation(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public IString getPath() {
        return PATH.get(getNd(), this.address);
    }

    public NdResourceFile getResourceFile() {
        return RESOURCE.get(getNd(), this.address);
    }

    public String toString() {
        try {
            return getPath().toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }

    public NdWorkspaceLocation(Nd nd2, NdResourceFile ndResourceFile, char[] cArr) {
        super(nd2);
        RESOURCE.put(getNd(), this.address, (long) ndResourceFile);
        PATH.put(getNd(), this.address, cArr);
    }
}
