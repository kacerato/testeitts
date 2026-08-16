package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldInt extends BaseField {
    private final ModificationLog.Tag tag;

    public FieldInt(String str, int i10) {
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.tag = ModificationLog.createTag(sb2.toString());
    }

    public int get(Nd nd2, long j10) {
        return nd2.getDB().getInt(j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return 4;
    }

    public void put(Nd nd2, long j10, int i10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.tag);
        try {
            nd2.getDB().putInt(j10 + this.offset, i10);
        } finally {
            db2.getLog().end(this.tag);
        }
    }
}
