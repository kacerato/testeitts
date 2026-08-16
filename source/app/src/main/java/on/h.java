package on;

import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.zip.ZipFile;

public class h {
    public g a(ZipFile file, String filename) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(file.getInputStream(file.getEntry(filename)));
        try {
            g gVar = (g) new GsonBuilder().create().fromJson((Reader) inputStreamReader, g.class);
            inputStreamReader.close();
            return gVar;
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
