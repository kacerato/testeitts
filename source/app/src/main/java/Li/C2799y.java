package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import java.util.ArrayList;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class C2799y implements Bi.Z {

    public static final int f14342h = 4;

    public boolean f14343a;

    public C2798x f14344b;

    public byte[] f14345c;

    public byte[] f14346d;

    public byte[] f14347e;

    public byte[] f14348f;

    public ArrayList<byte[]> f14349g;

    public C2799y(int i10) {
        C2798x c2798x = new C2798x(i10);
        this.f14344b = c2798x;
        this.f14345c = new byte[c2798x.c() / 2];
        this.f14347e = new byte[this.f14344b.c()];
        this.f14348f = new byte[this.f14344b.c()];
        this.f14349g = new ArrayList<>();
        this.f14346d = new byte[4];
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        this.f14343a = z10;
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameters passed to DSTU7624WrapEngine");
        }
        this.f14344b.a(z10, interfaceC2379k);
    }

    @Override
    public String b() {
        return "DSTU7624WrapEngine";
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        if (!this.f14343a) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (i11 % this.f14344b.c() != 0) {
            throw new DataLengthException("wrap data must be a multiple of " + this.f14344b.c() + " bytes");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        int c10 = ((i11 / this.f14344b.c()) + 1) * 2;
        int i12 = c10 - 1;
        int i13 = i12 * 6;
        int c11 = this.f14344b.c() + i11;
        byte[] bArr2 = new byte[c11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        System.arraycopy(bArr2, 0, this.f14345c, 0, this.f14344b.c() / 2);
        this.f14349g.clear();
        int c12 = c11 - (this.f14344b.c() / 2);
        int c13 = this.f14344b.c() / 2;
        while (c12 != 0) {
            byte[] bArr3 = new byte[this.f14344b.c() / 2];
            System.arraycopy(bArr2, c13, bArr3, 0, this.f14344b.c() / 2);
            this.f14349g.add(bArr3);
            c12 -= this.f14344b.c() / 2;
            c13 += this.f14344b.c() / 2;
        }
        int i14 = 0;
        while (i14 < i13) {
            System.arraycopy(this.f14345c, 0, bArr2, 0, this.f14344b.c() / 2);
            System.arraycopy(this.f14349g.get(0), 0, bArr2, this.f14344b.c() / 2, this.f14344b.c() / 2);
            this.f14344b.g(bArr2, 0, bArr2, 0);
            i14++;
            e(i14, this.f14346d, 0);
            for (int i15 = 0; i15 < 4; i15++) {
                int c14 = (this.f14344b.c() / 2) + i15;
                bArr2[c14] = (byte) (bArr2[c14] ^ this.f14346d[i15]);
            }
            System.arraycopy(bArr2, this.f14344b.c() / 2, this.f14345c, 0, this.f14344b.c() / 2);
            for (int i16 = 2; i16 < c10; i16++) {
                System.arraycopy(this.f14349g.get(i16 - 1), 0, this.f14349g.get(i16 - 2), 0, this.f14344b.c() / 2);
            }
            System.arraycopy(bArr2, 0, this.f14349g.get(c10 - 2), 0, this.f14344b.c() / 2);
        }
        System.arraycopy(this.f14345c, 0, bArr2, 0, this.f14344b.c() / 2);
        int c15 = this.f14344b.c() / 2;
        for (int i17 = 0; i17 < i12; i17++) {
            System.arraycopy(this.f14349g.get(i17), 0, bArr2, c15, this.f14344b.c() / 2);
            c15 += this.f14344b.c() / 2;
        }
        return bArr2;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.f14343a) {
            throw new IllegalStateException("not set for unwrapping");
        }
        if (i11 % this.f14344b.c() != 0) {
            throw new DataLengthException("unwrap data must be a multiple of " + this.f14344b.c() + " bytes");
        }
        int c10 = (i11 * 2) / this.f14344b.c();
        int i12 = c10 - 1;
        int i13 = i12 * 6;
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        byte[] bArr3 = new byte[this.f14344b.c() / 2];
        System.arraycopy(bArr2, 0, bArr3, 0, this.f14344b.c() / 2);
        this.f14349g.clear();
        int c11 = i11 - (this.f14344b.c() / 2);
        int c12 = this.f14344b.c() / 2;
        while (c11 != 0) {
            byte[] bArr4 = new byte[this.f14344b.c() / 2];
            System.arraycopy(bArr2, c12, bArr4, 0, this.f14344b.c() / 2);
            this.f14349g.add(bArr4);
            c11 -= this.f14344b.c() / 2;
            c12 += this.f14344b.c() / 2;
        }
        for (int i14 = 0; i14 < i13; i14++) {
            System.arraycopy(this.f14349g.get(c10 - 2), 0, bArr2, 0, this.f14344b.c() / 2);
            System.arraycopy(bArr3, 0, bArr2, this.f14344b.c() / 2, this.f14344b.c() / 2);
            e(i13 - i14, this.f14346d, 0);
            for (int i15 = 0; i15 < 4; i15++) {
                int c13 = (this.f14344b.c() / 2) + i15;
                bArr2[c13] = (byte) (bArr2[c13] ^ this.f14346d[i15]);
            }
            this.f14344b.g(bArr2, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr3, 0, this.f14344b.c() / 2);
            for (int i16 = 2; i16 < c10; i16++) {
                int i17 = c10 - i16;
                System.arraycopy(this.f14349g.get(i17 - 1), 0, this.f14349g.get(i17), 0, this.f14344b.c() / 2);
            }
            System.arraycopy(bArr2, this.f14344b.c() / 2, this.f14349g.get(0), 0, this.f14344b.c() / 2);
        }
        System.arraycopy(bArr3, 0, bArr2, 0, this.f14344b.c() / 2);
        int c14 = this.f14344b.c() / 2;
        for (int i18 = 0; i18 < i12; i18++) {
            System.arraycopy(this.f14349g.get(i18), 0, bArr2, c14, this.f14344b.c() / 2);
            c14 += this.f14344b.c() / 2;
        }
        System.arraycopy(bArr2, i11 - this.f14344b.c(), this.f14347e, 0, this.f14344b.c());
        byte[] bArr5 = new byte[i11 - this.f14344b.c()];
        if (!org.bouncycastle.util.a.g(this.f14347e, this.f14348f)) {
            throw new InvalidCipherTextException("checksum failed");
        }
        System.arraycopy(bArr2, 0, bArr5, 0, i11 - this.f14344b.c());
        return bArr5;
    }

    public final void e(int i10, byte[] bArr, int i11) {
        bArr[i11 + 3] = (byte) (i10 >> 24);
        bArr[i11 + 2] = (byte) (i10 >> 16);
        bArr[i11 + 1] = (byte) (i10 >> 8);
        bArr[i11] = (byte) i10;
    }
}
