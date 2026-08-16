package yk;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.InterfaceC14516g;

public class C16203e {
    public static InterfaceC14516g a(InputStream inputStream, C16201c c16201c) throws IOException {
        return new C16206h(inputStream).o(c16201c);
    }

    public static InterfaceC14516g b(byte[] bArr, C16201c c16201c) throws IOException {
        return a(new ByteArrayInputStream(bArr), c16201c);
    }
}
