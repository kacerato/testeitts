package Mi;

import Bi.G;
import Li.C2796v;
import Oi.C2931g;
import Ti.C3092c;
import Wi.e;
import Xi.C3360o0;
import em.h;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;

public class a {

    public boolean f15314a;

    public e f15315b;

    public BufferedInputStream f15316c;

    public BufferedOutputStream f15317d;

    public byte[] f15318e;

    public a() {
        this.f15314a = true;
        this.f15315b = null;
        this.f15316c = null;
        this.f15317d = null;
        this.f15318e = null;
    }

    public static void a(String[] strArr) {
        String str;
        boolean z10 = true;
        if (strArr.length < 2) {
            new a();
            System.err.println("Usage: java " + a.class.getName() + " infile outfile [keyfile]");
            System.exit(1);
        }
        String str2 = strArr[0];
        String str3 = strArr[1];
        if (strArr.length > 2) {
            str = strArr[2];
            z10 = false;
        } else {
            str = "deskey.dat";
        }
        new a(str2, str3, str, z10).d();
    }

    public final void b(byte[] bArr) {
        this.f15315b.f(false, new C3360o0(bArr));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f15316c));
        byte[] bArr2 = null;
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    try {
                        break;
                    } catch (CryptoException unused) {
                        return;
                    }
                }
                byte[] b10 = h.b(readLine);
                bArr2 = new byte[this.f15315b.c(b10.length)];
                int h10 = this.f15315b.h(b10, 0, b10.length, bArr2, 0);
                if (h10 > 0) {
                    this.f15317d.write(bArr2, 0, h10);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return;
            }
        }
        int a10 = this.f15315b.a(bArr2, 0);
        if (a10 > 0) {
            this.f15317d.write(bArr2, 0, a10);
        }
    }

    public final void c(byte[] bArr) {
        this.f15315b.f(true, new C3360o0(bArr));
        byte[] bArr2 = new byte[47];
        byte[] bArr3 = new byte[this.f15315b.c(47)];
        while (true) {
            try {
                int read = this.f15316c.read(bArr2, 0, 47);
                if (read <= 0) {
                    try {
                        break;
                    } catch (CryptoException unused) {
                        return;
                    }
                }
                int h10 = this.f15315b.h(bArr2, 0, read, bArr3, 0);
                if (h10 > 0) {
                    byte[] i10 = h.i(bArr3, 0, h10);
                    this.f15317d.write(i10, 0, i10.length);
                    this.f15317d.write(10);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return;
            }
        }
        int a10 = this.f15315b.a(bArr3, 0);
        if (a10 > 0) {
            byte[] i11 = h.i(bArr3, 0, a10);
            this.f15317d.write(i11, 0, i11.length);
            this.f15317d.write(10);
        }
    }

    public final void d() {
        this.f15315b = new e(new C3092c(new C2796v()));
        if (this.f15314a) {
            c(this.f15318e);
        } else {
            b(this.f15318e);
        }
        try {
            this.f15316c.close();
            this.f15317d.flush();
            this.f15317d.close();
        } catch (IOException e10) {
            System.err.println("exception closing resources: " + e10.getMessage());
        }
    }

    public a(String str, String str2, String str3, boolean z10) {
        SecureRandom secureRandom;
        PrintStream printStream;
        StringBuilder sb2;
        String str4;
        SecureRandom secureRandom2 = null;
        this.f15315b = null;
        this.f15316c = null;
        this.f15317d = null;
        this.f15318e = null;
        this.f15314a = z10;
        try {
            this.f15316c = new BufferedInputStream(new FileInputStream(str));
        } catch (FileNotFoundException unused) {
            System.err.println("Input file not found [" + str + "]");
            System.exit(1);
        }
        try {
            this.f15317d = new BufferedOutputStream(new FileOutputStream(str2));
        } catch (IOException unused2) {
            System.err.println("Output file not created [" + str2 + "]");
            System.exit(1);
        }
        if (z10) {
            try {
                secureRandom = new SecureRandom();
            } catch (Exception unused3) {
            }
            try {
                secureRandom.setSeed("www.bouncycastle.org".getBytes());
            } catch (Exception unused4) {
                secureRandom2 = secureRandom;
                try {
                    System.err.println("Hmmm, no SHA1PRNG, you need the Sun implementation");
                    System.exit(1);
                    secureRandom = secureRandom2;
                    G g10 = new G(secureRandom, 192);
                    C2931g c2931g = new C2931g();
                    c2931g.b(g10);
                    this.f15318e = c2931g.a();
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                    byte[] h10 = h.h(this.f15318e);
                    bufferedOutputStream.write(h10, 0, h10.length);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    return;
                } catch (IOException unused5) {
                    printStream = System.err;
                    sb2 = new StringBuilder();
                    str4 = "Could not decryption create key file [";
                }
            }
            G g102 = new G(secureRandom, 192);
            C2931g c2931g2 = new C2931g();
            c2931g2.b(g102);
            this.f15318e = c2931g2.a();
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str3));
            byte[] h102 = h.h(this.f15318e);
            bufferedOutputStream2.write(h102, 0, h102.length);
            bufferedOutputStream2.flush();
            bufferedOutputStream2.close();
            return;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str3));
            int available = bufferedInputStream.available();
            byte[] bArr = new byte[available];
            bufferedInputStream.read(bArr, 0, available);
            this.f15318e = h.c(bArr);
            return;
        } catch (IOException unused6) {
            printStream = System.err;
            sb2 = new StringBuilder();
            str4 = "Decryption key file not found, or not valid [";
        }
        sb2.append(str4);
        sb2.append(str3);
        sb2.append("]");
        printStream.println(sb2.toString());
        System.exit(1);
    }
}
