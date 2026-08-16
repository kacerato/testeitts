package fl;

public class h extends C13255e {

    public final byte[] f86530d;

    public h(C13256f c13256f, byte[] bArr) {
        super(false, c13256f);
        byte[] bArr2 = new byte[bArr.length];
        this.f86530d = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
    }

    public byte[] e() {
        return this.f86530d;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f86530d);
    }
}
