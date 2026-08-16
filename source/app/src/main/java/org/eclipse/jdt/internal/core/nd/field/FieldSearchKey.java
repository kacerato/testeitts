package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.BTree;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.EmptyString;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldSearchKey<T> extends BaseField implements IDestructableField {
    private final ModificationLog.Tag destructTag;
    private final ModificationLog.Tag putTag;
    FieldSearchIndex<?> searchIndex;

    /* JADX WARN: Multi-variable type inference failed */
    private FieldSearchKey(FieldSearchIndex<?> fieldSearchIndex, String str, int i10) {
        if (fieldSearchIndex != null) {
            FieldSearchKey<?> fieldSearchKey = fieldSearchIndex.searchKey;
            if (fieldSearchKey != null && fieldSearchKey != this) {
                throw new IllegalArgumentException("Attempted to construct a FieldSearchKey referring to a search index that is already in use by a different key");
            }
            fieldSearchIndex.searchKey = this;
        }
        this.searchIndex = fieldSearchIndex;
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.putTag = ModificationLog.createTag(sb2.toString());
        StringBuilder sb3 = new StringBuilder("Destructing ");
        sb3.append(getFieldName());
        this.destructTag = ModificationLog.createTag(sb3.toString());
    }

    private void cleanup(Nd nd2, long j10) {
        if (isInIndex(nd2, j10)) {
            this.searchIndex.get(nd2, Database.DATA_AREA_OFFSET).delete(j10);
            get(nd2, j10).delete();
            nd2.getDB().putRecPtr(j10 + this.offset, 0L);
        }
    }

    public static <T, B extends NdNode> FieldSearchKey<T> create(StructDef<B> structDef, FieldSearchIndex<B> fieldSearchIndex) {
        FieldSearchKey<T> fieldSearchKey = new FieldSearchKey<>(fieldSearchIndex, structDef.getStructName(), structDef.getNumFields());
        structDef.add(fieldSearchKey);
        structDef.addDestructableField(fieldSearchKey);
        return fieldSearchKey;
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.destructTag);
        try {
            cleanup(nd2, j10);
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

    public boolean isInIndex(Nd nd2, long j10) {
        return nd2.getDB().getRecPtr(j10 + ((long) this.offset)) != 0;
    }

    public void put(Nd nd2, long j10, String str) {
        put(nd2, j10, str.toCharArray());
    }

    public void removeFromIndex(Nd nd2, long j10) {
        cleanup(nd2, j10);
    }

    public void put(Nd nd2, long j10, char[] cArr) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.putTag);
        try {
            cleanup(nd2, j10);
            BTree bTree = this.searchIndex.get(nd2, Database.DATA_AREA_OFFSET);
            db2.putRecPtr(this.offset + j10, db2.newString(cArr).getRecord());
            bTree.insert(j10);
        } finally {
            db2.getLog().end(this.putTag);
        }
    }
}
