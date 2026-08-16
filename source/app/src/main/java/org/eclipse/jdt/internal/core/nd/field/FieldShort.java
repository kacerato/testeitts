package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldShort extends BaseField {
    private final ModificationLog.Tag putTag;

    public FieldShort(String str, int i10) {
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.putTag = ModificationLog.createTag(sb2.toString());
    }

    public short get(Nd nd2, long j10) {
        return nd2.getDB().getShort(j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return 2;
    }

    public void put(Nd nd2, long j10, short s10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.putTag);
        try {
            nd2.getDB().putShort(j10 + this.offset, s10);
        } finally {
            db2.getLog().end(this.putTag);
        }
    }
}
