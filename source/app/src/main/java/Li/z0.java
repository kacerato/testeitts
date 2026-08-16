package Li;

public class z0 extends y0 {
    @Override
    public String b() {
        return "VMPC-KSA3";
    }

    @Override
    public void c(byte[] bArr, byte[] bArr2) {
        this.f14352c = (byte) 0;
        this.f14351b = new byte[256];
        for (int i10 = 0; i10 < 256; i10++) {
            this.f14351b[i10] = (byte) i10;
        }
        for (int i11 = 0; i11 < 768; i11++) {
            byte[] bArr3 = this.f14351b;
            byte b10 = this.f14352c;
            int i12 = i11 & 255;
            byte b11 = bArr3[i12];
            byte b12 = bArr3[(b10 + b11 + bArr[i11 % bArr.length]) & 255];
            this.f14352c = b12;
            bArr3[i12] = bArr3[b12 & 255];
            bArr3[b12 & 255] = b11;
        }
        for (int i13 = 0; i13 < 768; i13++) {
            byte[] bArr4 = this.f14351b;
            byte b13 = this.f14352c;
            int i14 = i13 & 255;
            byte b14 = bArr4[i14];
            byte b15 = bArr4[(b13 + b14 + bArr2[i13 % bArr2.length]) & 255];
            this.f14352c = b15;
            bArr4[i14] = bArr4[b15 & 255];
            bArr4[b15 & 255] = b14;
        }
        for (int i15 = 0; i15 < 768; i15++) {
            byte[] bArr5 = this.f14351b;
            byte b16 = this.f14352c;
            int i16 = i15 & 255;
            byte b17 = bArr5[i16];
            byte b18 = bArr5[(b16 + b17 + bArr[i15 % bArr.length]) & 255];
            this.f14352c = b18;
            bArr5[i16] = bArr5[b18 & 255];
            bArr5[b18 & 255] = b17;
        }
        this.f14350a = (byte) 0;
    }
}
