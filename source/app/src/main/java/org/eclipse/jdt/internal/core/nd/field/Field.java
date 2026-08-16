package org.eclipse.jdt.internal.core.nd.field;

import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.Nd;

public final class Field<T> extends BaseField implements IDestructableField {
    public final ITypeFactory<T> factory;

    public Field(ITypeFactory<T> iTypeFactory, String str, int i10) {
        setFieldName("field " + i10 + ", a " + Field.class.getSimpleName() + " in struct " + str);
        this.factory = iTypeFactory;
    }

    public static <T> Field<T> create(StructDef<?> structDef, StructDef<T> structDef2) {
        Field<T> field = new Field<>(structDef2.getFactory(), structDef.getStructName(), structDef.getNumFields());
        structDef.add(field);
        structDef.addDestructableField(field);
        structDef2.addDependency(structDef);
        return field;
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        this.factory.destruct(nd2, j10 + this.offset);
    }

    public T get(Nd nd2, long j10) {
        return this.factory.create(nd2, j10 + this.offset);
    }

    @Override
    public int getAlignment() {
        return 8;
    }

    @Override
    public int getRecordSize() {
        return this.factory.getRecordSize();
    }

    public boolean hasDestructor() {
        return this.factory.hasDestructor();
    }
}
