package org.tukaani.xz.delta;

public class DeltaEncoder extends DeltaCoder {
    public DeltaEncoder(int i10) {
        super(i10);
    }

    public void encode(byte[] bArr, int i10, int i11, byte[] bArr2) {
        for (int i12 = 0; i12 < i11; i12++) {
            byte[] bArr3 = this.history;
            int i13 = this.distance;
            int i14 = this.pos;
            byte b10 = bArr3[(i13 + i14) & 255];
            this.pos = i14 - 1;
            int i15 = i10 + i12;
            bArr3[i14 & 255] = bArr[i15];
            bArr2[i12] = (byte) (bArr[i15] - b10);
        }
    }
}
