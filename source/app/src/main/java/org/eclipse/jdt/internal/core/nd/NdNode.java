package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.field.FieldShort;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public abstract class NdNode extends NdStruct implements IDestructable {
    public static final FieldShort NODE_TYPE;
    public static final StructDef<NdNode> type;

    static {
        StructDef<NdNode> create = StructDef.create(NdNode.class, NdStruct.type);
        type = create;
        NODE_TYPE = create.addShort();
        create.done();
    }

    public NdNode(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static boolean getBit(int i10, int i11) {
        return (i10 & (1 << i11)) != 0;
    }

    public static int getNodeId(int i10, int i11) {
        return (i10 << 16) | (i11 & 65535);
    }

    public static NdNode load(Nd nd2, long j10) {
        if (j10 == 0) {
            return null;
        }
        try {
            return nd2.getNode(j10, NODE_TYPE.get(nd2, j10));
        } catch (IndexException e10) {
            nd2.describeProblem().addProblemAddress(NODE_TYPE, j10).attachTo(e10);
            throw e10;
        }
    }

    public final void delete() {
        getNd().delete(this.address);
    }

    @Override
    public void destruct() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NdNode)) {
            return super.equals(obj);
        }
        NdNode ndNode = (NdNode) obj;
        return getNd() == ndNode.getNd() && this.address == ndNode.address;
    }

    @Override
    public final long getAddress() {
        return this.address;
    }

    public final long getBindingID() {
        return this.address;
    }

    public byte getByte(long j10) {
        return getDB().getByte(j10);
    }

    public short getNodeType() {
        return this.f102534nd.getNodeType(getClass());
    }

    public final int hashCode() {
        return (int) (this.address >> 3);
    }

    public NdNode(Nd nd2) {
        super(nd2, 0L);
        Database db2 = nd2.getDB();
        short nodeType = nd2.getNodeType(getClass());
        long malloc = db2.malloc(nd2.getTypeFactory(nodeType).getRecordSize(), (short) (nodeType + Database.POOL_FIRST_NODE_TYPE));
        this.address = malloc;
        NODE_TYPE.put(nd2, malloc, nodeType);
    }

    public static <T extends INdStruct> T load(Nd nd2, long j10, StructDef<T> structDef) {
        if (j10 == 0) {
            return null;
        }
        try {
            FieldShort fieldShort = NODE_TYPE;
            NdNode node = nd2.getNode(j10, fieldShort.get(nd2, j10));
            Class<T> structClass = structDef.getStructClass();
            if (structClass.isAssignableFrom(node.getClass())) {
                return node;
            }
            throw nd2.describeProblem().addProblemAddress(fieldShort, j10).build("Found wrong data type at address " + j10 + ". Expected a subclass of " + ((Object) structClass) + " but found " + ((Object) node.getClass()));
        } catch (IndexException e10) {
            nd2.describeProblem().addProblemAddress(NODE_TYPE, j10).attachTo(e10);
            throw e10;
        }
    }
}
