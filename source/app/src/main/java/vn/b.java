package vn;

import java.nio.ByteOrder;
import net.jpountz.lz4.i;

public class b {
    public byte[] a(byte[] data) {
        byte[] f10 = i.e().g().f(data);
        byte[] bArr = new byte[f10.length + 4];
        a.g(data.length, bArr, 0, ByteOrder.BIG_ENDIAN);
        System.arraycopy(f10, 0, bArr, 4, f10.length);
        return bArr;
    }

    public byte[] b(byte[] data) {
        return i.e().d().g(data, 4, a.b(data, 0));
    }
}
