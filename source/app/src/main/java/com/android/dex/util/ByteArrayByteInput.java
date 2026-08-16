package com.android.dex.util;

public final class ByteArrayByteInput implements ByteInput {
    private final byte[] bytes;
    private int position;

    public ByteArrayByteInput(byte... bArr) {
        this.bytes = bArr;
    }

    @Override
    public byte readByte() {
        byte[] bArr = this.bytes;
        int i10 = this.position;
        this.position = i10 + 1;
        return bArr[i10];
    }
}
