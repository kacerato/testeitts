package dm;

import ci.C4198i;
import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class q {

    public static final Comparator<byte[]> f84884a = new C12968b();

    public static List<byte[]> a(Qk.p pVar, List<g> list, byte[] bArr) {
        t tVar = new t();
        for (int i10 = 0; i10 != list.size(); i10++) {
            tVar.a(list.get(i10).a(pVar, bArr));
        }
        return tVar.d();
    }

    public static List<s> b(Qk.p pVar, List<g> list, byte[] bArr) {
        u uVar = new u();
        for (int i10 = 0; i10 != list.size(); i10++) {
            uVar.a(new s(i10, list.get(i10).a(pVar, bArr)));
        }
        return uVar.d();
    }

    public static List<byte[]> c(byte[][] bArr) {
        t tVar = new t();
        for (int i10 = 0; i10 != bArr.length; i10++) {
            tVar.a(bArr[i10]);
        }
        return tVar.d();
    }

    public static byte[] d(Qk.p pVar, byte[] bArr, byte[] bArr2) {
        return f84884a.compare(bArr, bArr2) <= 0 ? i(pVar, bArr, bArr2) : i(pVar, bArr2, bArr);
    }

    public static byte[] e(Qk.p pVar, byte[][] bArr) {
        return bArr.length == 2 ? d(pVar, bArr[0], bArr[1]) : g(pVar, c(bArr).iterator());
    }

    public static byte[] f(Qk.p pVar, InputStream inputStream) {
        try {
            OutputStream outputStream = pVar.getOutputStream();
            C13260d.b(inputStream, outputStream);
            outputStream.close();
            return pVar.b();
        } catch (IOException e10) {
            throw r.a("unable to calculate hash: " + e10.getMessage(), e10);
        }
    }

    public static byte[] g(Qk.p pVar, Iterator<byte[]> it) {
        try {
            OutputStream outputStream = pVar.getOutputStream();
            while (it.hasNext()) {
                outputStream.write(it.next());
            }
            outputStream.close();
            return pVar.b();
        } catch (IOException e10) {
            throw r.a("unable to calculate hash: " + e10.getMessage(), e10);
        }
    }

    public static byte[] h(Qk.p pVar, byte[] bArr) {
        try {
            OutputStream outputStream = pVar.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return pVar.b();
        } catch (IOException e10) {
            throw r.a("unable to calculate hash: " + e10.getMessage(), e10);
        }
    }

    public static byte[] i(Qk.p pVar, byte[] bArr, byte[] bArr2) {
        try {
            OutputStream outputStream = pVar.getOutputStream();
            outputStream.write(bArr);
            outputStream.write(bArr2);
            outputStream.close();
            return pVar.b();
        } catch (IOException e10) {
            throw r.a("unable to calculate hash: " + e10.getMessage(), e10);
        }
    }

    public static byte[] j(Qk.p pVar, C4198i c4198i) {
        byte[][] y10 = c4198i.y();
        return y10.length > 1 ? g(pVar, c(y10).iterator()) : y10[0];
    }

    public static byte[] k(Qk.p pVar, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        try {
            OutputStream outputStream = pVar.getOutputStream();
            outputStream.write(bArr2);
            outputStream.write(bArr);
            outputStream.close();
            return pVar.b();
        } catch (IOException unused) {
            throw new IllegalStateException("unable to hash data");
        }
    }
}
