package oh;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class AbstractC14545v implements InterfaceC14516g, org.bouncycastle.util.g {
    public static boolean t(Object obj, int i10) {
        return (obj instanceof byte[]) && ((byte[]) obj)[0] == i10;
    }

    public void e(OutputStream outputStream) throws IOException {
        r().e(outputStream);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InterfaceC14516g) {
            return r().A(((InterfaceC14516g) obj).r());
        }
        return false;
    }

    public void f(OutputStream outputStream, String str) throws IOException {
        r().f(outputStream, str);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        r().e(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return r().hashCode();
    }

    @Override
    public abstract B r();

    public byte[] s(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        r().f(byteArrayOutputStream, str);
        return byteArrayOutputStream.toByteArray();
    }
}
