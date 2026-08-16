package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public final class NdConstantEnum extends NdConstant {
    public static final FieldManyToOne<NdTypeSignature> ENUM_TYPE;
    public static final FieldString ENUM_VALUE;
    public static StructDef<NdConstantEnum> type;

    static {
        StructDef<NdConstantEnum> create = StructDef.create(NdConstantEnum.class, NdConstant.type);
        type = create;
        ENUM_TYPE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_ENUM_CONSTANT);
        ENUM_VALUE = type.addString();
        type.done();
    }

    public NdConstantEnum(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public static NdConstantEnum create(NdTypeSignature ndTypeSignature, String str) {
        NdConstantEnum ndConstantEnum = new NdConstantEnum(ndTypeSignature.getNd());
        ndConstantEnum.setEnumType(ndTypeSignature);
        ndConstantEnum.setEnumValue(str);
        return ndConstantEnum;
    }

    @Override
    public Constant getConstant() {
        return null;
    }

    public NdTypeSignature getType() {
        return ENUM_TYPE.get(getNd(), this.address);
    }

    public char[] getValue() {
        return ENUM_VALUE.get(getNd(), this.address).getChars();
    }

    public void setEnumType(NdTypeSignature ndTypeSignature) {
        ENUM_TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public void setEnumValue(String str) {
        ENUM_VALUE.put(getNd(), this.address, str);
    }

    public NdConstantEnum(Nd nd2) {
        super(nd2);
    }
}
