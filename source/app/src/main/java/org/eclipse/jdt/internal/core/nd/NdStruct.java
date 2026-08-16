package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdStruct implements INdStruct {
    public static final StructDef<NdStruct> type;
    public long address;

    protected final Nd f102534nd;

    static {
        StructDef<NdStruct> createAbstract = StructDef.createAbstract(NdStruct.class);
        type = createAbstract;
        createAbstract.done();
    }

    public NdStruct(Nd nd2, long j10) {
        this.f102534nd = nd2;
        this.address = j10;
    }

    @Override
    public long getAddress() {
        return this.address;
    }

    public final Database getDB() {
        return this.f102534nd.getDB();
    }

    @Override
    public Nd getNd() {
        return this.f102534nd;
    }
}
