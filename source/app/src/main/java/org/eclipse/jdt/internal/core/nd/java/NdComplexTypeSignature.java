package org.eclipse.jdt.internal.core.nd.java;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdComplexTypeSignature extends NdTypeSignature {
    public static final FieldOneToMany<NdComplexTypeSignature> DECLARED_TYPES;
    public static final FieldManyToOne<NdComplexTypeSignature> DECLARING_TYPE;
    public static final FieldManyToOne<NdTypeId> RAW_TYPE;
    public static final FieldOneToMany<NdTypeArgument> TYPE_ARGUMENTS;
    public static final FieldString VARIABLE_IDENTIFIER;
    public static final StructDef<NdComplexTypeSignature> type;

    static {
        StructDef<NdComplexTypeSignature> create = StructDef.create(NdComplexTypeSignature.class, NdTypeSignature.type);
        type = create;
        VARIABLE_IDENTIFIER = create.addString();
        RAW_TYPE = FieldManyToOne.create(create, NdTypeId.USED_AS_COMPLEX_TYPE);
        TYPE_ARGUMENTS = FieldOneToMany.create(create, NdTypeArgument.PARENT);
        FieldManyToOne<NdComplexTypeSignature> create2 = FieldManyToOne.create(create, null);
        DECLARING_TYPE = create2;
        DECLARED_TYPES = FieldOneToMany.create(create, create2);
        create.useStandardRefCounting().done();
    }

    public NdComplexTypeSignature(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private void computeDeclaringTypes(List<NdTypeSignature> list) {
        NdComplexTypeSignature genericDeclaringType = getGenericDeclaringType();
        if (genericDeclaringType != null) {
            genericDeclaringType.computeDeclaringTypes(list);
        }
        list.add(this);
    }

    @Override
    public NdTypeSignature getArrayDimensionType() {
        if (!isArrayType()) {
            return null;
        }
        FieldOneToMany<NdTypeArgument> fieldOneToMany = TYPE_ARGUMENTS;
        if (fieldOneToMany.size(getNd(), this.address) == 1) {
            return fieldOneToMany.get(getNd(), this.address, 0).getType();
        }
        throw getNd().describeProblem().addProblemAddress(fieldOneToMany, this.address).build("Array types should have exactly one argument");
    }

    @Override
    public List<NdTypeSignature> getDeclaringTypeChain() {
        if (getGenericDeclaringType() == null) {
            return Collections.singletonList(this);
        }
        ArrayList arrayList = new ArrayList();
        computeDeclaringTypes(arrayList);
        return arrayList;
    }

    public NdComplexTypeSignature getGenericDeclaringType() {
        return DECLARING_TYPE.get(getNd(), this.address);
    }

    @Override
    public NdTypeId getRawType() {
        return RAW_TYPE.get(getNd(), this.address);
    }

    @Override
    public void getSignature(CharArrayBuffer charArrayBuffer, boolean z10) {
        NdComplexTypeSignature genericDeclaringType = getGenericDeclaringType();
        if (isTypeVariable()) {
            charArrayBuffer.append('T');
            charArrayBuffer.append(getVariableIdentifier().getChars());
            if (z10) {
                charArrayBuffer.append(';');
                return;
            }
            return;
        }
        NdTypeSignature arrayDimensionType = getArrayDimensionType();
        if (arrayDimensionType != null) {
            charArrayBuffer.append('[');
            arrayDimensionType.getSignature(charArrayBuffer);
            return;
        }
        if (genericDeclaringType != null) {
            genericDeclaringType.getSignature(charArrayBuffer, false);
            charArrayBuffer.append('.');
            charArrayBuffer.append(getRawType().getSimpleName().getChars());
        } else {
            charArrayBuffer.append(getRawType().getFieldDescriptorWithoutTrailingSemicolon());
        }
        List<NdTypeArgument> typeArguments = getTypeArguments();
        if (!typeArguments.isEmpty()) {
            charArrayBuffer.append('<');
            Iterator<NdTypeArgument> it = typeArguments.iterator();
            while (it.hasNext()) {
                it.next().getSignature(charArrayBuffer);
            }
            charArrayBuffer.append('>');
        }
        if (z10) {
            charArrayBuffer.append(';');
        }
    }

    @Override
    public List<NdTypeArgument> getTypeArguments() {
        return TYPE_ARGUMENTS.asList(getNd(), this.address);
    }

    public IString getVariableIdentifier() {
        return VARIABLE_IDENTIFIER.get(getNd(), this.address);
    }

    @Override
    public boolean isArrayType() {
        NdTypeId rawType = getRawType();
        return rawType != null && rawType.getFieldDescriptor().comparePrefix(JavaNames.ARRAY_FIELD_DESCRIPTOR_PREFIX, true) == 0;
    }

    @Override
    public boolean isTypeVariable() {
        return getVariableIdentifier().length() != 0;
    }

    public void setGenericDeclaringType(NdComplexTypeSignature ndComplexTypeSignature) {
        DECLARING_TYPE.put(getNd(), this.address, (long) ndComplexTypeSignature);
    }

    public void setRawType(NdTypeId ndTypeId) {
        RAW_TYPE.put(getNd(), this.address, (long) ndTypeId);
    }

    public void setVariableIdentifier(char[] cArr) {
        VARIABLE_IDENTIFIER.put(getNd(), this.address, cArr);
    }

    public NdComplexTypeSignature(Nd nd2) {
        super(nd2);
    }
}
