package D2;

import fd.C13208a;
import java.io.IOException;
import org.apache.commons.lang3.StringUtils;

@v2.c
@p
public abstract class v {

    public StringBuilder f4805a = new StringBuilder();

    public boolean f4806b;

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(char[] cArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        if (this.f4806b && i11 > 0) {
            if (c(cArr[i10] == '\n')) {
                i12 = i10 + 1;
                i13 = i10 + i11;
                int i14 = i12;
                while (i12 < i13) {
                    char c10 = cArr[i12];
                    if (c10 == '\n') {
                        this.f4805a.append(cArr, i14, i12 - i14);
                        c(true);
                    } else if (c10 != '\r') {
                        i12++;
                    } else {
                        this.f4805a.append(cArr, i14, i12 - i14);
                        this.f4806b = true;
                        int i15 = i12 + 1;
                        if (i15 < i13) {
                            if (c(cArr[i15] == '\n')) {
                                i12 = i15;
                            }
                        }
                    }
                    i14 = i12 + 1;
                    i12++;
                }
                this.f4805a.append(cArr, i14, i13 - i14);
            }
        }
        i12 = i10;
        i13 = i10 + i11;
        int i142 = i12;
        while (i12 < i13) {
        }
        this.f4805a.append(cArr, i142, i13 - i142);
    }

    public void b() throws IOException {
        if (this.f4806b || this.f4805a.length() > 0) {
            c(false);
        }
    }

    @I2.a
    public final boolean c(boolean z10) throws IOException {
        d(this.f4805a.toString(), this.f4806b ? z10 ? C13208a.f86201f : StringUtils.CR : z10 ? "\n" : "");
        this.f4805a = new StringBuilder();
        this.f4806b = false;
        return z10;
    }

    public abstract void d(String str, String str2) throws IOException;
}
