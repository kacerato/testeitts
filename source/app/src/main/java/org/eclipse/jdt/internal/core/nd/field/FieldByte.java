package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldByte extends BaseField {
    private final ModificationLog.Tag tag;

    public FieldByte(String str, int i10) {
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.tag = ModificationLog.createTag(sb2.toString());
    }

    public byte get(Nd nd2, long j10) {
        return nd2.getDB().getByte(j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return 1;
    }

    public void put(Nd nd2, long j10, byte b10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.tag);
        try {
            db2.putByte(j10 + this.offset, b10);
        } finally {
            db2.getLog().end(this.tag);
        }
    }
}
