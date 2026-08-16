package tk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.w;

public class C15469f {

    public final InputStream f117723a;

    public int f117724b = -1;

    public C15469f(InputStream inputStream) {
        this.f117723a = inputStream;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        r2 = r4.f117723a.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
    
        if (r2 == 10) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        if (r2 < 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
    
        r4.f117724b = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x001a, code lost:
    
        r1 = r4.f117723a.read();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String a() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = this.f117724b;
        if (i10 != -1) {
            if (i10 == 13) {
                return "";
            }
            this.f117724b = -1;
            while (i10 >= 0 && i10 != 13 && i10 != 10) {
                byteArrayOutputStream.write(i10);
            }
            if (i10 < 0) {
                return null;
            }
            return w.d(byteArrayOutputStream.toByteArray());
        }
        i10 = this.f117723a.read();
    }
}
