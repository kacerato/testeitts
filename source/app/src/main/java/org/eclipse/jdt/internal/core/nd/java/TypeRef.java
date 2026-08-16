package org.eclipse.jdt.internal.core.nd.java;

import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.nd.DatabaseRef;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.Nd;

public final class TypeRef implements Supplier<NdType> {
    final char[] fieldDescriptor;
    final char[] fileName;
    final DatabaseRef<NdType> ref;
    final TypeSupplier typeSupplier;

    public final class TypeSupplier implements Supplier<NdType> {
        public TypeSupplier() {
        }

        @Override
        public NdType get() {
            NdTypeId findType = JavaIndex.getIndex(TypeRef.this.ref.getNd()).findType(TypeRef.this.fieldDescriptor);
            if (findType == null) {
                return null;
            }
            for (NdType ndType : findType.getTypes()) {
                NdResourceFile resourceFile = ndType.getResourceFile();
                if (resourceFile.getLocation().compare(TypeRef.this.fileName, false) == 0 && resourceFile.isDoneIndexing()) {
                    return ndType;
                }
            }
            return null;
        }
    }

    private TypeRef(NdType ndType) {
        TypeSupplier typeSupplier = new TypeSupplier();
        this.typeSupplier = typeSupplier;
        this.fieldDescriptor = ndType.getTypeId().getRawType().getFieldDescriptor().getChars();
        this.fileName = ndType.getResourceFile().getLocation().getChars();
        this.ref = new DatabaseRef<>(ndType.getNd(), typeSupplier, ndType);
    }

    public static TypeRef create(NdType ndType) {
        return new TypeRef(ndType);
    }

    public char[] getFieldDescriptor() {
        return this.fieldDescriptor;
    }

    public char[] getFileName() {
        return this.fileName;
    }

    public IReader lock() {
        return this.ref.lock();
    }

    public static TypeRef create(Nd nd2, char[] cArr, char[] cArr2) {
        return new TypeRef(nd2, cArr, cArr2);
    }

    @Override
    public NdType get() {
        return this.ref.get();
    }

    private TypeRef(Nd nd2, char[] cArr, char[] cArr2) {
        TypeSupplier typeSupplier = new TypeSupplier();
        this.typeSupplier = typeSupplier;
        this.fieldDescriptor = cArr2;
        this.fileName = cArr;
        this.ref = new DatabaseRef<>(nd2, typeSupplier);
    }
}
