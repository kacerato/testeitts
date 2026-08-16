package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public abstract class NdConstant extends NdNode {
    public static final FieldOneToOne<NdAnnotationValuePair> PARENT_ANNOTATION_VALUE;
    public static final FieldManyToOne<NdConstantArray> PARENT_ARRAY;
    public static final FieldOneToOne<NdMethod> PARENT_METHOD;
    public static final FieldOneToOne<NdVariable> PARENT_VARIABLE;
    public static StructDef<NdConstant> type;

    static {
        StructDef<NdConstant> createAbstract = StructDef.createAbstract(NdConstant.class, NdNode.type);
        type = createAbstract;
        PARENT_ARRAY = FieldManyToOne.createOwner(createAbstract, NdConstantArray.ELEMENTS);
        PARENT_ANNOTATION_VALUE = FieldOneToOne.createOwner(type, NdAnnotationValuePair.type, NdAnnotationValuePair.VALUE);
        PARENT_VARIABLE = FieldOneToOne.createOwner(type, NdVariable.type, NdVariable.CONSTANT);
        PARENT_METHOD = FieldOneToOne.createOwner(type, NdMethod.type, NdMethod.DEFAULT_VALUE);
        type.done();
    }

    public NdConstant(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstant create(Nd nd2, Constant constant) {
        if (constant == Constant.NotAConstant) {
            return null;
        }
        switch (constant.typeID()) {
            case 2:
                return NdConstantChar.create(nd2, constant.charValue());
            case 3:
                return NdConstantByte.create(nd2, constant.byteValue());
            case 4:
                return NdConstantShort.create(nd2, constant.shortValue());
            case 5:
                return NdConstantBoolean.create(nd2, constant.booleanValue());
            case 6:
            default:
                throw new IllegalArgumentException("Unknown typeID() " + constant.typeID());
            case 7:
                return NdConstantLong.create(nd2, constant.longValue());
            case 8:
                return NdConstantDouble.create(nd2, constant.doubleValue());
            case 9:
                return NdConstantFloat.create(nd2, constant.floatValue());
            case 10:
                return NdConstantInt.create(nd2, constant.intValue());
            case 11:
                return NdConstantString.create(nd2, constant.stringValue());
        }
    }

    public abstract Constant getConstant();

    public void setParent(NdConstantArray ndConstantArray) {
        PARENT_ARRAY.put(getNd(), this.address, (long) ndConstantArray);
    }

    public String toString() {
        try {
            return getConstant().toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }

    public NdConstant(Nd nd2) {
        super(nd2);
    }
}
