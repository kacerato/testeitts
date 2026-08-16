package org.eclipse.jdt.internal.core.nd.java;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.FieldSearchKey;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdTypeId extends NdTypeSignature {
    public static final FieldOneToMany<NdType> DECLARED_TYPES;
    public static final FieldSearchKey<JavaIndex> FIELD_DESCRIPTOR;
    public static final FieldSearchKey<JavaIndex> SIMPLE_NAME;
    public static final FieldOneToMany<NdType> TYPES;
    public static final FieldOneToMany<NdComplexTypeSignature> USED_AS_COMPLEX_TYPE;
    public static final StructDef<NdTypeId> type;
    private String fName;

    static {
        StructDef<NdTypeId> create = StructDef.create(NdTypeId.class, NdTypeSignature.type);
        type = create;
        FIELD_DESCRIPTOR = FieldSearchKey.create(create, JavaIndex.TYPES);
        SIMPLE_NAME = FieldSearchKey.create(create, JavaIndex.SIMPLE_INDEX);
        TYPES = FieldOneToMany.create(create, NdType.TYPENAME, 2);
        USED_AS_COMPLEX_TYPE = FieldOneToMany.create(create, NdComplexTypeSignature.RAW_TYPE);
        DECLARED_TYPES = FieldOneToMany.create(create, NdType.DECLARING_TYPE);
        create.useStandardRefCounting().done();
    }

    public NdTypeId(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public NdType findTypeByResourceAddress(long j10) {
        int size = TYPES.size(getNd(), this.address);
        for (int i10 = 0; i10 < size; i10++) {
            NdType ndType = TYPES.get(getNd(), this.address, i10);
            if (ndType.getResourceAddress() == j10) {
                return ndType;
            }
        }
        return null;
    }

    @Override
    public NdTypeSignature getArrayDimensionType() {
        return null;
    }

    public char[] getBinaryName() {
        return JavaNames.fieldDescriptorToBinaryName(getFieldDescriptor().getChars());
    }

    public List<NdComplexTypeSignature> getComplexTypes() {
        return USED_AS_COMPLEX_TYPE.asList(getNd(), this.address);
    }

    public List<NdType> getDeclaredTypes() {
        return DECLARED_TYPES.asList(getNd(), this.address);
    }

    @Override
    public List<NdTypeSignature> getDeclaringTypeChain() {
        return Collections.singletonList(this);
    }

    public IString getFieldDescriptor() {
        return FIELD_DESCRIPTOR.get(getNd(), this.address);
    }

    public char[] getFieldDescriptorWithoutTrailingSemicolon() {
        char[] chars = getFieldDescriptor().getChars();
        int length = chars.length;
        if (chars.length > 0 && chars[length - 1] == ';') {
            length--;
        }
        return CharArrayUtils.subarray(chars, 0, length);
    }

    @Override
    public NdTypeId getRawType() {
        return this;
    }

    @Override
    public void getSignature(CharArrayBuffer charArrayBuffer, boolean z10) {
        if (z10) {
            charArrayBuffer.append(getFieldDescriptor().getChars());
        } else {
            charArrayBuffer.append(getFieldDescriptorWithoutTrailingSemicolon());
        }
    }

    public IString getSimpleName() {
        return SIMPLE_NAME.get(getNd(), this.address);
    }

    public char[] getSimpleNameCharArray() {
        if (this.fName == null) {
            this.fName = getSimpleName().getString();
        }
        return this.fName.toCharArray();
    }

    @Override
    public List<NdType> getSubTypes() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.getSubTypes());
        Iterator<NdComplexTypeSignature> it = getComplexTypes().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getSubTypes());
        }
        return arrayList;
    }

    @Override
    public List<NdTypeArgument> getTypeArguments() {
        return Collections.emptyList();
    }

    public List<NdType> getTypes() {
        return TYPES.asList(getNd(), this.address);
    }

    public boolean hasFieldDescriptor(String str) {
        return getFieldDescriptor().compare(str, true) == 0;
    }

    public boolean hasSimpleName(String str) {
        String str2 = this.fName;
        return str2 != null ? str2.equals(str) : getSimpleName().toString().equals(str);
    }

    @Override
    public boolean isArrayType() {
        return false;
    }

    @Override
    public boolean isTypeVariable() {
        return false;
    }

    public void setSimpleName(String str) {
        if (Objects.equals(str, this.fName)) {
            return;
        }
        this.fName = str;
        SIMPLE_NAME.put(getNd(), this.address, str);
    }

    public NdTypeId(Nd nd2, char[] cArr) {
        super(nd2);
        char[] fieldDescriptorToJavaName = JavaNames.fieldDescriptorToJavaName(cArr, false);
        FIELD_DESCRIPTOR.put(nd2, this.address, cArr);
        SIMPLE_NAME.put(nd2, this.address, fieldDescriptorToJavaName);
    }
}
