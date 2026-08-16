package Xi;

public class B0 extends C3360o0 {

    public int f29196c;

    public B0(byte[] bArr) {
        this(bArr, bArr.length > 128 ? 1024 : bArr.length * 8);
    }

    public int e() {
        return this.f29196c;
    }

    public B0(byte[] bArr, int i10) {
        super(bArr);
        this.f29196c = i10;
    }
}
