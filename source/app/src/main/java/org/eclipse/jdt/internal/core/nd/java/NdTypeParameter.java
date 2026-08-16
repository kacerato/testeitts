package org.eclipse.jdt.internal.core.nd.java;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdTypeParameter extends NdStruct {
    public static final FieldList<NdTypeBound> BOUNDS;
    public static final byte FLG_FIRST_BOUND_IS_A_CLASS = 1;
    public static final FieldString IDENTIFIER;
    public static final FieldByte TYPE_PARAMETER_FLAGS;
    public static final StructDef<NdTypeParameter> type;

    static {
        StructDef<NdTypeParameter> create = StructDef.create(NdTypeParameter.class, NdStruct.type);
        type = create;
        IDENTIFIER = create.addString();
        BOUNDS = FieldList.create(create, NdTypeBound.type);
        TYPE_PARAMETER_FLAGS = create.addByte();
        create.done();
    }

    public NdTypeParameter(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private void setFlag(byte b10, boolean z10) {
        FieldByte fieldByte = TYPE_PARAMETER_FLAGS;
        byte b11 = fieldByte.get(getNd(), this.address);
        fieldByte.put(getNd(), this.address, (byte) (z10 ? b10 | b11 : (~b10) & b11));
    }

    public void allocateBounds(int i10) {
        BOUNDS.allocate(getNd(), getAddress(), i10);
    }

    public void createBound(NdTypeSignature ndTypeSignature) {
        BOUNDS.append(getNd(), getAddress()).setType(ndTypeSignature);
    }

    public List<NdTypeBound> getBounds() {
        return BOUNDS.asList(getNd(), this.address);
    }

    public char[] getIdentifier() {
        return IDENTIFIER.get(getNd(), this.address).getChars();
    }

    public void getSignature(CharArrayBuffer charArrayBuffer) {
        charArrayBuffer.append(getIdentifier());
        List<NdTypeBound> bounds = getBounds();
        if (!bounds.isEmpty() && !isFirstBoundAClass()) {
            charArrayBuffer.append(':');
        }
        Iterator<NdTypeBound> it = bounds.iterator();
        while (it.hasNext()) {
            it.next().getSignature(charArrayBuffer);
        }
    }

    public boolean isFirstBoundAClass() {
        return (TYPE_PARAMETER_FLAGS.get(getNd(), this.address) & 1) != 0;
    }

    public void setFirstBoundIsClass(boolean z10) {
        setFlag((byte) 1, z10);
    }

    public void setIdentifier(char[] cArr) {
        IDENTIFIER.put(getNd(), this.address, cArr);
    }

    public static void getSignature(CharArrayBuffer charArrayBuffer, List<NdTypeParameter> list) {
        if (list.isEmpty()) {
            return;
        }
        charArrayBuffer.append('<');
        Iterator<NdTypeParameter> it = list.iterator();
        while (it.hasNext()) {
            it.next().getSignature(charArrayBuffer);
        }
        charArrayBuffer.append('>');
    }
}
