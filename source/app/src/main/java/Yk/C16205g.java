package yk;

import java.io.ByteArrayOutputStream;
import oh.InterfaceC14516g;

public class C16205g {
    public static byte[] a(InterfaceC14516g interfaceC14516g, C16201c c16201c) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new j(byteArrayOutputStream).e(interfaceC14516g, c16201c);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new IllegalStateException(e10.getMessage(), e10);
        }
    }
}
