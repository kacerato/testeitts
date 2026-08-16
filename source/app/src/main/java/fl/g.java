package fl;

public class g extends C13255e {

    public final byte[] f86529d;

    public g(C13256f c13256f, byte[] bArr) {
        super(false, c13256f);
        byte[] bArr2 = new byte[bArr.length];
        this.f86529d = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f86529d);
    }
}
