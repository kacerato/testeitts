package org.eclipse.jdt.internal.core.nd.field;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.INdStruct;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.RawGrowableArray;

public class FieldOneToMany<T extends INdStruct> extends BaseField implements IDestructableField, IRefCountedField {
    private final RawGrowableArray backPointerArray;
    FieldManyToOne<?> forwardPointer;
    public final StructDef<? extends INdStruct> localType;
    public StructDef<T> targetType;

    public interface Visitor<T> {
        void visit(int i10, T t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FieldOneToMany(StructDef<? extends INdStruct> structDef, FieldManyToOne<? extends INdStruct> fieldManyToOne, int i10) {
        this.localType = structDef;
        if (fieldManyToOne != null) {
            FieldOneToMany<?> fieldOneToMany = fieldManyToOne.backPointer;
            if (fieldOneToMany != null && fieldOneToMany != this) {
                throw new IllegalArgumentException("Attempted to construct a FieldBackPointer referring to a forward pointer that is already in use by another field");
            }
            fieldManyToOne.targetType = structDef;
            this.targetType = (StructDef<T>) fieldManyToOne.localType;
            fieldManyToOne.backPointer = this;
        }
        this.forwardPointer = fieldManyToOne;
        setFieldName("field " + structDef.getNumFields() + ", a " + getClass().getSimpleName() + " in struct " + structDef.getStructName());
        this.backPointerArray = new RawGrowableArray(i10);
    }

    public static <T extends INdStruct, B extends INdStruct> FieldOneToMany<T> create(StructDef<B> structDef, FieldManyToOne<B> fieldManyToOne, int i10) {
        FieldOneToMany<T> fieldOneToMany = new FieldOneToMany<>(structDef, fieldManyToOne, i10);
        structDef.add(fieldOneToMany);
        structDef.addDestructableField(fieldOneToMany);
        structDef.addRefCountedField(fieldOneToMany);
        return fieldOneToMany;
    }

    public void accept(Nd nd2, long j10, Visitor<T> visitor) {
        int size = size(nd2, j10);
        for (int i10 = 0; i10 < size; i10++) {
            visitor.visit(i10, get(nd2, j10, i10));
        }
    }

    public int add(Nd nd2, long j10, long j11) {
        return this.backPointerArray.add(nd2, j10 + this.offset, j11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<T> asList(Nd nd2, long j10) {
        final ArrayList arrayList = new ArrayList(size(nd2, j10));
        accept(nd2, j10, new Visitor<T>() {
            @Override
            public void visit(int i10, T t10) {
                arrayList.add(t10);
            }
        });
        return arrayList;
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        long j11 = this.offset + j10;
        int size = size(nd2, j10);
        boolean z10 = this.forwardPointer.pointsToOwner;
        for (int i10 = 0; i10 < size; i10++) {
            long j12 = this.backPointerArray.get(nd2, j11, i10);
            this.forwardPointer.clearedByBackPointer(nd2, j12);
            if (z10) {
                nd2.scheduleDeletion(j12);
            }
        }
        this.backPointerArray.destruct(nd2, j11);
    }

    public void ensureCapacity(Nd nd2, long j10, int i10) {
        this.backPointerArray.ensureCapacity(nd2, j10 + this.offset, i10);
    }

    public T get(Nd nd2, long j10, int i10) {
        return (T) NdNode.load(nd2, this.backPointerArray.get(nd2, j10 + this.offset, i10), this.targetType);
    }

    public long getAddressOf(Nd nd2, long j10, int i10) {
        return this.backPointerArray.get(nd2, j10 + this.offset, i10);
    }

    public int getCapacity(Nd nd2, long j10) {
        return this.backPointerArray.getCapacity(nd2, j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return this.backPointerArray.getRecordSize();
    }

    @Override
    public boolean hasReferences(Nd nd2, long j10) {
        if (this.forwardPointer.pointsToOwner) {
            return false;
        }
        return !isEmpty(nd2, j10);
    }

    public boolean isEmpty(Nd nd2, long j10) {
        return this.backPointerArray.isEmpty(nd2, j10 + this.offset);
    }

    public void remove(Nd nd2, long j10, int i10) {
        long remove = this.backPointerArray.remove(nd2, j10 + this.offset, i10);
        if (remove != 0) {
            this.forwardPointer.adjustIndex(nd2, remove, i10);
        }
    }

    public int size(Nd nd2, long j10) {
        return this.backPointerArray.size(nd2, j10 + this.offset);
    }

    public static <T extends INdStruct, B extends INdStruct> FieldOneToMany<T> create(StructDef<B> structDef, FieldManyToOne<B> fieldManyToOne) {
        return create(structDef, fieldManyToOne, 0);
    }
}
