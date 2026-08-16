package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;

public final class EncodedValue implements Comparable<EncodedValue> {
    private final byte[] data;

    public EncodedValue(byte[] bArr) {
        this.data = bArr;
    }

    public ByteInput asByteInput() {
        return new ByteArrayByteInput(this.data);
    }

    public byte[] getBytes() {
        return this.data;
    }

    public String toString() {
        return Integer.toHexString(this.data[0] & 255) + "...(" + this.data.length + ")";
    }

    public void writeTo(Dex.Section section) {
        section.write(this.data);
    }

    @Override
    public int compareTo(EncodedValue encodedValue) {
        int min = Math.min(this.data.length, encodedValue.data.length);
        for (int i10 = 0; i10 < min; i10++) {
            byte b10 = this.data[i10];
            byte b11 = encodedValue.data[i10];
            if (b10 != b11) {
                return (b10 & 255) - (b11 & 255);
            }
        }
        return this.data.length - encodedValue.data.length;
    }
}
