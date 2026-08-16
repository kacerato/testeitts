package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldDouble extends BaseField {
    private final ModificationLog.Tag tag;

    public FieldDouble(String str, int i10) {
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        this.tag = ModificationLog.createTag("Writing ");
    }

    public double get(Nd nd2, long j10) {
        return nd2.getDB().getDouble(j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return 8;
    }

    public void put(Nd nd2, long j10, double d10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.tag);
        try {
            nd2.getDB().putDouble(j10 + this.offset, d10);
        } finally {
            db2.getLog().end(this.tag);
        }
    }
}
