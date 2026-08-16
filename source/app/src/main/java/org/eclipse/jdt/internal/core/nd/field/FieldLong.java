package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldLong extends BaseField {
    private final ModificationLog.Tag tag;

    public FieldLong(String str, int i10) {
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.tag = ModificationLog.createTag(sb2.toString());
    }

    public long get(Nd nd2, long j10) {
        return nd2.getDB().getLong(j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return 8;
    }

    public void put(Nd nd2, long j10, long j11) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.tag);
        try {
            nd2.getDB().putLong(j10 + this.offset, j11);
        } finally {
            db2.getLog().end(this.tag);
        }
    }
}
