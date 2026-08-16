package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.INdStruct;
import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class FieldManyToOne<T extends INdStruct> extends BaseField implements IDestructableField, IRefCountedField {
    public static final FieldInt BACKPOINTER_INDEX;
    public static final FieldPointer TARGET;
    private static final StructDef<FieldManyToOne> type;
    FieldOneToMany<?> backPointer;
    private final ModificationLog.Tag destructTag;
    final StructDef<? extends INdStruct> localType;
    private boolean permitsNull = true;
    public final boolean pointsToOwner;
    private final ModificationLog.Tag putTag;
    StructDef<T> targetType;

    static {
        StructDef<FieldManyToOne> createAbstract = StructDef.createAbstract(FieldManyToOne.class);
        type = createAbstract;
        TARGET = createAbstract.addPointer();
        BACKPOINTER_INDEX = createAbstract.addInt();
        createAbstract.done();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FieldManyToOne(StructDef<? extends INdStruct> structDef, FieldOneToMany<?> fieldOneToMany, boolean z10) {
        this.localType = structDef;
        this.pointsToOwner = z10;
        if (fieldOneToMany != null) {
            FieldManyToOne<?> fieldManyToOne = fieldOneToMany.forwardPointer;
            if (fieldManyToOne != null && fieldManyToOne != this) {
                throw new IllegalArgumentException("Attempted to construct a FieldNodePointer referring to a backpointer list that is already in use by another field");
            }
            fieldOneToMany.targetType = structDef;
            this.targetType = (StructDef<T>) fieldOneToMany.localType;
            fieldOneToMany.forwardPointer = this;
        }
        this.backPointer = fieldOneToMany;
        setFieldName("field " + structDef.getNumFields() + ", a " + getClass().getSimpleName() + " in struct " + structDef.getStructName());
        StringBuilder sb2 = new StringBuilder("Writing ");
        sb2.append(getFieldName());
        this.putTag = ModificationLog.createTag(sb2.toString());
        StringBuilder sb3 = new StringBuilder("Destructing ");
        sb3.append(getFieldName());
        this.destructTag = ModificationLog.createTag(sb3.toString());
    }

    public static <T extends INdStruct, B extends INdStruct> FieldManyToOne<T> create(StructDef<B> structDef, FieldOneToMany<B> fieldOneToMany) {
        FieldManyToOne<T> fieldManyToOne = new FieldManyToOne<>(structDef, fieldOneToMany, false);
        structDef.add(fieldManyToOne);
        structDef.addDestructableField(fieldManyToOne);
        return fieldManyToOne;
    }

    public static <T extends INdStruct, B extends INdStruct> FieldManyToOne<T> createNonNull(StructDef<B> structDef, FieldOneToMany<B> fieldOneToMany) {
        FieldManyToOne<T> create = create(structDef, fieldOneToMany);
        ((FieldManyToOne) create).permitsNull = false;
        return create;
    }

    public static <T extends INdStruct, B extends INdStruct> FieldManyToOne<T> createOwner(StructDef<B> structDef, FieldOneToMany<B> fieldOneToMany) {
        if (NdNode.class.isAssignableFrom(structDef.getStructClass())) {
            FieldManyToOne<T> fieldManyToOne = new FieldManyToOne<>(structDef, fieldOneToMany, true);
            structDef.add(fieldManyToOne);
            structDef.addDestructableField(fieldManyToOne);
            structDef.addOwnerField(fieldManyToOne);
            return fieldManyToOne;
        }
        throw new IllegalArgumentException(FieldManyToOne.class.getSimpleName() + " can't be the owner of " + structDef.getStructClass().getSimpleName() + " because the latter isn't a subclass of " + NdNode.class.getSimpleName());
    }

    public void adjustIndex(Nd nd2, long j10, int i10) {
        BACKPOINTER_INDEX.put(nd2, j10 + this.offset, i10);
    }

    public void clearedByBackPointer(Nd nd2, long j10) {
        long j11 = this.offset + j10;
        TARGET.put(nd2, j11, 0L);
        BACKPOINTER_INDEX.put(nd2, j11, 0);
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.destructTag);
        try {
            long j11 = j10 + this.offset;
            FieldPointer fieldPointer = TARGET;
            detachFromOldTarget(nd2, j10, fieldPointer.get(nd2, j11));
            fieldPointer.put(nd2, j11, 0L);
        } finally {
            db2.getLog().end(this.destructTag);
        }
    }

    public void detachFromOldTarget(Nd nd2, long j10, long j11) {
        long j12 = j10 + this.offset;
        if (j11 != 0) {
            this.backPointer.remove(nd2, j11, BACKPOINTER_INDEX.get(nd2, j12));
            if (this.targetType.isNdNode()) {
                ITypeFactory typeFactory = nd2.getTypeFactory(NdNode.NODE_TYPE.get(nd2, j11));
                if (typeFactory.getDeletionSemantics() == StructDef.DeletionSemantics.REFCOUNTED && typeFactory.isReadyForDeletion(nd2, j11)) {
                    nd2.scheduleDeletion(j11);
                }
            }
        }
    }

    public T get(Nd nd2, long j10) {
        return (T) NdNode.load(nd2, getAddress(nd2, j10), this.targetType);
    }

    public long getAddress(Nd nd2, long j10) {
        long recPtr = nd2.getDB().getRecPtr(this.offset + j10);
        if (this.permitsNull || recPtr != 0) {
            return recPtr;
        }
        throw nd2.describeProblem().addProblemAddress(this, j10).build("Database contained a null in a non-null field");
    }

    @Override
    public int getRecordSize() {
        return type.size();
    }

    @Override
    public boolean hasReferences(Nd nd2, long j10) {
        return TARGET.get(nd2, ((long) this.offset) + j10) != 0;
    }

    public FieldManyToOne<T> permitNull(boolean z10) {
        this.permitsNull = z10;
        return this;
    }

    public void put(Nd nd2, long j10, T t10) {
        if (t10 != null) {
            put(nd2, j10, t10.getAddress());
        } else {
            if (this.permitsNull) {
                put(nd2, j10, 0L);
                return;
            }
            throw new IllegalArgumentException("Attempted to write a null into a non-null field");
        }
    }

    public void put(Nd nd2, long j10, long j11) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.putTag);
        try {
            long j12 = this.offset + j10;
            if (this.backPointer != null) {
                FieldPointer fieldPointer = TARGET;
                long j13 = fieldPointer.get(nd2, j12);
                if (j13 != j11) {
                    detachFromOldTarget(nd2, j10, j13);
                    fieldPointer.put(nd2, j12, j11);
                    if (j11 != 0) {
                        BACKPOINTER_INDEX.put(nd2, j12, this.backPointer.add(nd2, j11, j10));
                    } else if (this.pointsToOwner) {
                        nd2.scheduleDeletion(j10);
                    }
                }
                db2.getLog().end(this.putTag);
                return;
            }
            throw new IllegalStateException(getClass().getSimpleName() + " must be associated with a " + FieldOneToMany.class.getSimpleName());
        } catch (Throwable th2) {
            db2.getLog().end(this.putTag);
            throw th2;
        }
    }
}
