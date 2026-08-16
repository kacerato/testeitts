package Zl;

import Yl.d;
import Yl.l;
import Yl.m;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import org.bouncycastle.util.k;

public class b {

    public static volatile boolean f31514a;

    public static volatile boolean f31515b;

    public static m a(int i10, int i11, int i12, boolean z10, SecureRandom secureRandom) {
        return z10 ? l.h(i10, i11, i12, secureRandom) : d.Y(i10, i11, i12, secureRandom);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int[] b(int i10, int i11, int i12, SecureRandom secureRandom) {
        Integer j10 = k.j(1);
        Integer j11 = k.j(-1);
        Integer j12 = k.j(0);
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < i11; i13++) {
            arrayList.add(j10);
        }
        for (int i14 = 0; i14 < i12; i14++) {
            arrayList.add(j11);
        }
        while (arrayList.size() < i10) {
            arrayList.add(j12);
        }
        Collections.shuffle(arrayList, secureRandom);
        int[] iArr = new int[i10];
        for (int i15 = 0; i15 < i10; i15++) {
            iArr[i15] = ((Integer) arrayList.get(i15)).intValue();
        }
        return iArr;
    }

    public static int c(int i10, int i11) {
        int i12 = i10 % i11;
        if (i12 < 0) {
            i12 += i11;
        }
        return Xl.b.a(i12, i11).f29650a;
    }

    public static boolean d() {
        if (!f31514a) {
            String property = System.getProperty("os.arch");
            f31515b = "amd64".equals(property) || "x86_64".equals(property) || "ppc64".equals(property) || "64".equals(System.getProperty("sun.arch.data.model"));
            f31514a = true;
        }
        return f31515b;
    }

    public static int e(int i10, int i11, int i12) {
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            i13 = (i13 * i10) % i12;
        }
        return i13;
    }

    public static long f(long j10, int i10, long j11) {
        long j12 = 1;
        for (int i11 = 0; i11 < i10; i11++) {
            j12 = (j12 * j10) % j11;
        }
        return j12;
    }

    public static byte[] g(InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        if (inputStream.read(bArr) == i10) {
            return bArr;
        }
        throw new IOException("Not enough bytes to read.");
    }
}
