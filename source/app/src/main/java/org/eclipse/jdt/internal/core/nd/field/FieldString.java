package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.EmptyString;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldString extends BaseField implements IDestructableField {
    private static final char[] EMPTY_CHAR_ARRAY = new char[0];
    public static final int RECORD_SIZE = 4;
    private final ModificationLog.Tag destructTag;
    private final ModificationLog.Tag putTag;

    public FieldString(String str, int i10) {
        this.putTag = ModificationLog.createTag("Writing field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        this.destructTag = ModificationLog.createTag("Destructing field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.destructTag);
        try {
            get(nd2, j10).delete();
            nd2.getDB().putRecPtr(j10 + this.offset, 0L);
        } finally {
            db2.getLog().end(this.destructTag);
        }
    }

    public IString get(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        long recPtr = db2.getRecPtr(j10 + this.offset);
        return recPtr == 0 ? EmptyString.create() : db2.getString(recPtr);
    }

    @Override
    public int getRecordSize() {
        return 4;
    }

    public void put(Nd nd2, long j10, char[] cArr) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.putTag);
        if (cArr == null) {
            try {
                cArr = EMPTY_CHAR_ARRAY;
            } catch (Throwable th2) {
                db2.getLog().end(this.putTag);
                throw th2;
            }
        }
        IString iString = get(nd2, j10);
        if (iString.compare(cArr, true) != 0) {
            iString.delete();
            if (cArr != null && cArr.length > 0) {
                db2.putRecPtr(j10 + this.offset, db2.newString(cArr).getRecord());
            } else {
                db2.putRecPtr(j10 + this.offset, 0L);
            }
        }
        db2.getLog().end(this.putTag);
    }

    public void put(Nd nd2, long j10, String str) {
        put(nd2, j10, str.toCharArray());
    }
}
