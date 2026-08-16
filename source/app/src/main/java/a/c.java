package A;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public final class c {

    public static final Charset f55a = Charset.forName(CharEncoding.US_ASCII);

    public static final Charset f56b = Charset.forName("UTF-8");

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void b(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + ((Object) file));
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + ((Object) file2));
            }
        }
    }

    public static String c(Reader reader) throws IOException {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    String stringWriter2 = stringWriter.toString();
                    reader.close();
                    return stringWriter2;
                }
                stringWriter.write(cArr, 0, read);
            }
        } catch (Throwable th2) {
            reader.close();
            throw th2;
        }
    }
}
