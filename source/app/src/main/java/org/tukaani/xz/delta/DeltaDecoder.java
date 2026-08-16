package org.tukaani.xz.delta;

public class DeltaDecoder extends DeltaCoder {
    public DeltaDecoder(int i10) {
        super(i10);
    }

    public void decode(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            byte[] bArr2 = this.history;
            int i13 = this.distance;
            int i14 = this.pos;
            byte b11 = (byte) (b10 + bArr2[(i13 + i14) & 255]);
            bArr[i10] = b11;
            this.pos = i14 - 1;
            bArr2[i14 & 255] = b11;
            i10++;
        }
    }
}
