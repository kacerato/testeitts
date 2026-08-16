package dm;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class n extends f {

    public final File f84882b;

    public n(File file) throws FileNotFoundException {
        if (file.isDirectory()) {
            throw new IllegalArgumentException("directory not allowed as ERSFileData");
        }
        if (!file.exists()) {
            throw new FileNotFoundException(file.getAbsolutePath() + " does not exist");
        }
        if (file.canRead()) {
            this.f84882b = file;
            return;
        }
        throw new FileNotFoundException(file.getAbsolutePath() + " is not readable");
    }

    @Override
    public byte[] b(Qk.p pVar, byte[] bArr) {
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f84882b);
            byte[] f10 = q.f(pVar, fileInputStream);
            fileInputStream.close();
            return bArr != null ? q.k(pVar, bArr, f10) : f10;
        } catch (IOException unused) {
            throw new IllegalStateException("unable to process " + this.f84882b.getAbsolutePath());
        }
    }
}
