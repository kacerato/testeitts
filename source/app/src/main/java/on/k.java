package on;

import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Arrays;
import java.util.zip.ZipFile;

public class k {
    public j a(ZipFile file, String filename) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(file.getInputStream(file.getEntry(filename)));
        try {
            j jVar = (j) new GsonBuilder().create().fromJson((Reader) inputStreamReader, j.class);
            if (!jVar.a()) {
                throw new IllegalArgumentException("Unsupported graph type " + Arrays.toString(jVar.f99734c));
            }
            if (jVar.b()) {
                inputStreamReader.close();
                return jVar;
            }
            throw new IllegalArgumentException("Unsupported version " + jVar.f99732a);
        } catch (Throwable th2) {
            try {
                inputStreamReader.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
