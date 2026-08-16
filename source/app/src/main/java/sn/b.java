package sn;

import java.util.Arrays;
import qn.i;

public class b implements i {
    @Override
    public byte[] a(byte[] buf, int offset, int len, int outputlen) {
        byte[] bArr = new byte[outputlen];
        a.c(buf, offset, len, bArr, 0, outputlen);
        return bArr;
    }

    @Override
    public byte[] b(byte[] buf) {
        int a10 = a.a(buf.length);
        byte[] bArr = new byte[a10];
        return Arrays.copyOf(bArr, a.b(buf, 0, buf.length, bArr, 0, a10));
    }
}
