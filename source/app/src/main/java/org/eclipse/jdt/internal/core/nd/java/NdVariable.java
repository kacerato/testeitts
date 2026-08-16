package org.eclipse.jdt.internal.core.nd.java;

import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.FieldInt;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldLong;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdVariable extends NdBinding {
    public static final FieldList<NdAnnotation> ANNOTATIONS;
    public static final FieldOneToOne<NdConstant> CONSTANT;
    public static final FieldManyToOne<NdMethod> DECLARING_METHOD;
    public static final byte FLG_GENERIC_SIGNATURE_PRESENT = 1;
    public static final FieldString NAME;
    public static final FieldLong TAG_BITS;
    public static final FieldManyToOne<NdTypeSignature> TYPE;
    public static final FieldList<NdTypeAnnotation> TYPE_ANNOTATIONS;
    public static final FieldByte VARIABLE_FLAGS;
    public static final FieldInt VARIABLE_ID;
    public static StructDef<NdVariable> type;

    static {
        StructDef<NdVariable> create = StructDef.create(NdVariable.class, NdBinding.type);
        type = create;
        TYPE = FieldManyToOne.create(create, NdTypeSignature.VARIABLES_OF_TYPE);
        VARIABLE_ID = type.addInt();
        DECLARING_METHOD = FieldManyToOne.create(type, NdMethod.DECLARED_VARIABLES);
        NAME = type.addString();
        CONSTANT = FieldOneToOne.create(type, NdConstant.type, NdConstant.PARENT_VARIABLE);
        TAG_BITS = type.addLong();
        VARIABLE_FLAGS = type.addByte();
        ANNOTATIONS = FieldList.create(type, NdAnnotation.type);
        TYPE_ANNOTATIONS = FieldList.create(type, NdTypeAnnotation.type);
        type.done();
    }

    public NdVariable(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public void allocateAnnotations(int i10) {
        ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public void allocateTypeAnnotations(int i10) {
        TYPE_ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public NdAnnotation createAnnotation() {
        return ANNOTATIONS.append(getNd(), getAddress());
    }

    public NdTypeAnnotation createTypeAnnotation() {
        return TYPE_ANNOTATIONS.append(getNd(), getAddress());
    }

    public List<NdAnnotation> getAnnotations() {
        return ANNOTATIONS.asList(getNd(), this.address);
    }

    public NdConstant getConstant() {
        return CONSTANT.get(getNd(), this.address);
    }

    public IString getName() {
        return NAME.get(getNd(), this.address);
    }

    public long getTagBits() {
        return TAG_BITS.get(getNd(), this.address);
    }

    public NdTypeSignature getType() {
        return TYPE.get(getNd(), this.address);
    }

    public List<NdTypeAnnotation> getTypeAnnotations() {
        return TYPE_ANNOTATIONS.asList(getNd(), this.address);
    }

    public boolean hasVariableFlag(int i10) {
        return (i10 & VARIABLE_FLAGS.get(getNd(), this.address)) != 0;
    }

    public void setConstant(NdConstant ndConstant) {
        CONSTANT.put(getNd(), this.address, ndConstant);
    }

    public void setName(char[] cArr) {
        NAME.put(getNd(), this.address, cArr);
    }

    public void setTagBits(long j10) {
        TAG_BITS.put(getNd(), this.address, j10);
    }

    public void setType(NdTypeSignature ndTypeSignature) {
        TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public void setVariableFlag(byte b10) {
        FieldByte fieldByte = VARIABLE_FLAGS;
        fieldByte.put(getNd(), this.address, (byte) (b10 | fieldByte.get(getNd(), this.address)));
    }

    public String toString() {
        try {
            StringBuilder sb2 = new StringBuilder();
            NdTypeSignature type2 = getType();
            if (type2 != null) {
                sb2.append(type2.toString());
                sb2.append(" ");
            }
            IString name = getName();
            if (name != null) {
                sb2.append(name.toString());
            }
            NdConstant constant = getConstant();
            if (constant != null) {
                sb2.append(" = ");
                sb2.append(constant.toString());
            }
            return sb2.toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }
}
