package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.IDestructable;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.FieldPointer;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdTypeAnnotation extends NdAnnotation implements IDestructable {
    private static final byte[] NO_TYPE_PATH;
    public static final FieldPointer PATH;
    public static final FieldByte PATH_LENGTH;
    public static final FieldByte TARGET_ARG0;
    public static final FieldByte TARGET_ARG1;
    public static final FieldByte TARGET_TYPE;
    public static final StructDef<NdTypeAnnotation> type;

    static {
        StructDef<NdTypeAnnotation> create = StructDef.create(NdTypeAnnotation.class, NdAnnotation.type);
        type = create;
        TARGET_TYPE = create.addByte();
        TARGET_ARG0 = create.addByte();
        TARGET_ARG1 = create.addByte();
        PATH_LENGTH = create.addByte();
        PATH = create.addPointer();
        create.done();
        NO_TYPE_PATH = new byte[0];
    }

    public NdTypeAnnotation(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private void freePath() {
        this.f102534nd.getDB().free(PATH.get(this.f102534nd, this.address), (short) 0);
    }

    @Override
    public void destruct() {
        freePath();
    }

    public int getTarget() {
        return ((TARGET_ARG0.get(getNd(), this.address) & 255) << 8) | (TARGET_ARG1.get(getNd(), this.address) & 255);
    }

    public byte getTargetInfoArg0() {
        return TARGET_ARG0.get(getNd(), this.address);
    }

    public byte getTargetInfoArg1() {
        return TARGET_ARG1.get(getNd(), this.address);
    }

    public int getTargetType() {
        return TARGET_TYPE.get(getNd(), this.address);
    }

    public byte[] getTypePath() {
        long j10 = PATH.get(getNd(), this.address);
        if (j10 == 0) {
            return NO_TYPE_PATH;
        }
        byte[] bArr = new byte[PATH_LENGTH.get(getNd(), this.address)];
        getNd().getDB().getBytes(j10, bArr);
        return bArr;
    }

    public void setPath(byte[] bArr) {
        freePath();
        PATH_LENGTH.put(this.f102534nd, this.address, (byte) bArr.length);
        if (bArr.length > 0) {
            long malloc = this.f102534nd.getDB().malloc(bArr.length, (short) 0);
            PATH.put(this.f102534nd, this.address, malloc);
            this.f102534nd.getDB().putBytes(malloc, bArr, bArr.length);
        }
    }

    public void setTargetInfo(int i10) {
        TARGET_ARG0.put(getNd(), this.address, (byte) ((i10 >> 8) & 255));
        TARGET_ARG1.put(getNd(), this.address, (byte) (i10 & 255));
    }

    public void setTargetType(int i10) {
        TARGET_TYPE.put(getNd(), this.address, (byte) i10);
    }

    public void setTargetInfo(byte b10, byte b11) {
        TARGET_ARG0.put(getNd(), this.address, b10);
        TARGET_ARG1.put(getNd(), this.address, b11);
    }
}
