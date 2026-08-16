package org.openjdk.tools.javac.jvm;

import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.TypeTag;

class UninitializedType extends Type.DelegatedType {
    public final int offset;

    private UninitializedType(TypeTag typeTag, Type type, int i10, TypeMetadata typeMetadata) {
        super(typeTag, type, typeMetadata);
        this.offset = i10;
    }

    public static UninitializedType uninitializedObject(Type type, int i10) {
        return new UninitializedType(TypeTag.UNINITIALIZED_OBJECT, type, i10, type.getMetadata());
    }

    public static UninitializedType uninitializedThis(Type type) {
        return new UninitializedType(TypeTag.UNINITIALIZED_THIS, type, -1, type.getMetadata());
    }

    public Type initializedType() {
        return this.qtype;
    }

    @Override
    public UninitializedType cloneWithMetadata(TypeMetadata typeMetadata) {
        return new UninitializedType(this.tag, this.qtype, this.offset, typeMetadata);
    }
}
