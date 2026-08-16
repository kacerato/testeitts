package Ag;

import Bg.s;
import java.io.IOException;
import java.io.OutputStream;

public class f extends b<a> {

    public static class a implements vg.e {
        @Override
        public int a(byte[] bArr, int i10, int i11) {
            return i11;
        }

        @Override
        public int b(byte[] bArr) {
            return a(bArr, 0, bArr.length);
        }
    }

    public f(j jVar, s sVar, char[] cArr) throws IOException {
        super(jVar, sVar, cArr, true);
    }

    @Override
    public a f(OutputStream outputStream, s sVar, char[] cArr, boolean z10) {
        return new a();
    }
}
