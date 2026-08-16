package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdZipEntry extends NdStruct {
    public static final FieldString FILE_NAME;
    public static final StructDef<NdZipEntry> type;

    static {
        StructDef<NdZipEntry> create = StructDef.create(NdZipEntry.class, NdStruct.type);
        type = create;
        FILE_NAME = create.addString();
        create.done();
    }

    public NdZipEntry(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public IString getFileName() {
        return FILE_NAME.get(this.f102534nd, this.address);
    }

    public void setFilename(String str) {
        FILE_NAME.put(this.f102534nd, this.address, str);
    }
}
