package ij;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class C13750e extends InputStream {

    public InputStream f92319b;

    public int f92320c = 0;

    public C13750e(InputStream inputStream) {
        this.f92319b = inputStream;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        return r0.toString().trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String c() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = this.f92319b.read();
            if (read != -1) {
                byteArrayOutputStream.write(read & 255);
                if (read == 10) {
                    break;
                }
            } else if (byteArrayOutputStream.size() == 0) {
                return null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0016, code lost:
    
        if (r0 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0018, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        r0 = java.lang.Integer.parseInt(r0.trim(), 16);
        r4.f92320c = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
    
        if (r0 != 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        c();
        r4.f92320c = Integer.MIN_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002d, code lost:
    
        r4.f92320c--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        return r4.f92319b.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
    
        if (r0 == 0) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000a, code lost:
    
        r0 = c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        if (r0 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r0.length() == 0) goto L20;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read() throws IOException {
        int i10 = this.f92320c;
        if (i10 == Integer.MIN_VALUE) {
            return -1;
        }
    }
}
