package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.INdStruct;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldOneToOne<T extends INdStruct> extends BaseField implements IDestructableField, IRefCountedField {
    FieldOneToOne<?> backPointer;
    private final ModificationLog.Tag destructTag;
    public final StructDef<T> nodeType;
    private boolean pointsToOwner;
    private final ModificationLog.Tag putTag;

    /* JADX WARN: Multi-variable type inference failed */
    private FieldOneToOne(StructDef<T> structDef, FieldOneToOne<?> fieldOneToOne, boolean z10) {
        this.nodeType = structDef;
        if (fieldOneToOne != null) {
            FieldOneToOne<?> fieldOneToOne2 = fieldOneToOne.backPointer;
            if (fieldOneToOne2 != null && fieldOneToOne2 != this) {
                throw new IllegalArgumentException("Attempted to construct a FieldOneToOne referring to a backpointer list that is already in use by another field");
            }
            fieldOneToOne.backPointer = this;
        }
        this.backPointer = fieldOneToOne;
        this.pointsToOwner = z10;
        setFieldName("field " + structDef.getNumFields() + ", a " + getClass().getSimpleName() + " in struct " + structDef.getStructName());
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.putTag = ModificationLog.createTag(sb2.toString());
        StringBuilder sb3 = new StringBuilder("Destructing ");
        sb3.append(getFieldName());
        this.destructTag = ModificationLog.createTag(sb3.toString());
    }

    private void cleanup(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        long recPtr = db2.getRecPtr(j10 + this.offset);
        if (recPtr != 0) {
            db2.putRecPtr(this.backPointer.offset + recPtr, 0L);
            if (this.backPointer.pointsToOwner) {
                nd2.scheduleDeletion(recPtr);
            }
        }
    }

    public static <T extends INdStruct, B extends INdStruct> FieldOneToOne<T> create(StructDef<B> structDef, StructDef<T> structDef2, FieldOneToOne<B> fieldOneToOne) {
        FieldOneToOne<T> fieldOneToOne2 = new FieldOneToOne<>(structDef2, fieldOneToOne, false);
        structDef.add(fieldOneToOne2);
        structDef.addDestructableField(fieldOneToOne2);
        return fieldOneToOne2;
    }

    public static <T extends INdStruct, B extends INdStruct> FieldOneToOne<T> createOwner(StructDef<B> structDef, StructDef<T> structDef2, FieldOneToOne<B> fieldOneToOne) {
        FieldOneToOne<T> fieldOneToOne2 = new FieldOneToOne<>(structDef2, fieldOneToOne, true);
        structDef.add(fieldOneToOne2);
        structDef.addDestructableField(fieldOneToOne2);
        structDef.addOwnerField(fieldOneToOne2);
        return fieldOneToOne2;
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

    public T get(Nd nd2, long j10) {
        return (T) NdNode.load(nd2, nd2.getDB().getRecPtr(j10 + this.offset), this.nodeType);
    }

    @Override
    public int getRecordSize() {
        return 4;
    }

    @Override
    public boolean hasReferences(Nd nd2, long j10) {
        return this.pointsToOwner && nd2.getDB().getRecPtr(j10 + ((long) this.offset)) != 0;
    }

    public void put(Nd nd2, long j10, T t10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.putTag);
        try {
            cleanup(nd2, j10);
            if (t10 == null) {
                db2.putRecPtr(this.offset + j10, 0L);
                if (this.pointsToOwner) {
                    nd2.scheduleDeletion(j10);
                }
            } else {
                db2.putRecPtr(this.offset + j10, t10.getAddress());
                db2.putRecPtr(t10.getAddress() + this.backPointer.offset, j10);
            }
            db2.getLog().end(this.putTag);
        } catch (Throwable th2) {
            db2.getLog().end(this.putTag);
            throw th2;
        }
    }
}
