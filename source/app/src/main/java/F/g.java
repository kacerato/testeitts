package F;

public final class g implements a<byte[]> {

    public static final String f6070a = "ByteArrayPool";

    @Override
    public int b() {
        return 1;
    }

    @Override
    public int a(byte[] bArr) {
        return bArr.length;
    }

    @Override
    public byte[] newArray(int i10) {
        return new byte[i10];
    }

    @Override
    public String getTag() {
        return f6070a;
    }
}
