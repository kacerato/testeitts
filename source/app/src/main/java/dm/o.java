package dm;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class o extends f {

    public final InputStream f84883b;

    public o(File file) throws FileNotFoundException {
        if (file.isDirectory()) {
            throw new IllegalArgumentException("directory not allowed");
        }
        this.f84883b = new FileInputStream(file);
    }

    @Override
    public byte[] b(Qk.p pVar, byte[] bArr) {
        byte[] f10 = q.f(pVar, this.f84883b);
        return bArr != null ? q.k(pVar, bArr, f10) : f10;
    }

    public o(InputStream inputStream) {
        this.f84883b = inputStream;
    }
}
