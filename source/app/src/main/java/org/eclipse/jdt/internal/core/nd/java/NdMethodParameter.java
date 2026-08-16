package org.eclipse.jdt.internal.core.nd.java;

import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdMethodParameter extends NdStruct {
    public static final FieldList<NdAnnotation> ANNOTATIONS;
    public static final FieldManyToOne<NdTypeSignature> ARGUMENT_TYPE;
    public static final FieldByte FLAGS;
    private static final byte FLG_COMPILER_DEFINED = 1;
    public static final FieldString NAME;
    public static StructDef<NdMethodParameter> type;

    static {
        StructDef<NdMethodParameter> create = StructDef.create(NdMethodParameter.class);
        type = create;
        ARGUMENT_TYPE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_METHOD_ARGUMENT);
        NAME = type.addString();
        ANNOTATIONS = FieldList.create(type, NdAnnotation.type);
        FLAGS = type.addByte();
        type.done();
    }

    public NdMethodParameter(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private boolean getFlag(byte b10) {
        return (b10 & FLAGS.get(getNd(), this.address)) != 0;
    }

    private void setFlag(byte b10, boolean z10) {
        FieldByte fieldByte = FLAGS;
        int i10 = fieldByte.get(getNd(), this.address) & (~b10);
        if (!z10) {
            b10 = 0;
        }
        fieldByte.put(getNd(), this.address, (byte) (b10 | i10));
    }

    public void allocateAnnotations(int i10) {
        ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public NdAnnotation createAnnotation() {
        return ANNOTATIONS.append(getNd(), getAddress());
    }

    public List<NdAnnotation> getAnnotations() {
        return ANNOTATIONS.asList(getNd(), this.address);
    }

    public IString getName() {
        return NAME.get(getNd(), this.address);
    }

    public NdTypeSignature getType() {
        return ARGUMENT_TYPE.get(getNd(), this.address);
    }

    public boolean isCompilerDefined() {
        return getFlag((byte) 1);
    }

    public void setCompilerDefined(boolean z10) {
        setFlag((byte) 1, z10);
    }

    public void setName(char[] cArr) {
        NAME.put(getNd(), this.address, cArr);
    }

    public void setType(NdTypeSignature ndTypeSignature) {
        ARGUMENT_TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public String toString() {
        try {
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
            charArrayBuffer.append(getType().toString());
            charArrayBuffer.append(" ");
            charArrayBuffer.append(getName().toString());
            return charArrayBuffer.toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }
}
