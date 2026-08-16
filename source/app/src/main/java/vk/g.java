package vk;

import com.tonyodev.fetch2core.server.FileResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import oh.C14549x;
import org.bouncycastle.cms.C14624c;
import org.bouncycastle.util.w;

public class g {

    public static final Map f121682a;

    public static final Map f121683b;

    public static final Map f121684c;

    public static final Map f121685d;

    public static final byte[] f121686e;

    public class a extends FilterOutputStream {
        public a(OutputStream outputStream) {
            super(outputStream);
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            bArr.getClass();
            int i12 = i11 + i10;
            if ((i10 | i11 | (bArr.length - i12) | i12) < 0) {
                throw new IndexOutOfBoundsException();
            }
            this.out.write(bArr, i10, i11);
        }
    }

    static {
        f121686e = r0;
        byte[] bArr = {13, 10};
        HashMap hashMap = new HashMap();
        C14549x c14549x = C14624c.f100700h0;
        hashMap.put(c14549x, FileResponse.FIELD_MD5);
        C14549x c14549x2 = C14624c.f100690c0;
        hashMap.put(c14549x2, "sha-1");
        C14549x c14549x3 = C14624c.f100692d0;
        hashMap.put(c14549x3, "sha-224");
        C14549x c14549x4 = C14624c.f100694e0;
        hashMap.put(c14549x4, "sha-256");
        C14549x c14549x5 = C14624c.f100696f0;
        hashMap.put(c14549x5, "sha-384");
        C14549x c14549x6 = C14624c.f100698g0;
        hashMap.put(c14549x6, "sha-512");
        C14549x c14549x7 = C14624c.f100702i0;
        hashMap.put(c14549x7, "gostr3411-94");
        C14549x c14549x8 = C14624c.f100704j0;
        hashMap.put(c14549x8, "gostr3411-2012-256");
        C14549x c14549x9 = C14624c.f100706k0;
        hashMap.put(c14549x9, "gostr3411-2012-512");
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        f121682a = unmodifiableMap;
        HashMap hashMap2 = new HashMap();
        hashMap2.put(c14549x, FileResponse.FIELD_MD5);
        hashMap2.put(c14549x2, "sha1");
        hashMap2.put(c14549x3, "sha224");
        hashMap2.put(c14549x4, "sha256");
        hashMap2.put(c14549x5, "sha384");
        hashMap2.put(c14549x6, "sha512");
        hashMap2.put(c14549x7, "gostr3411-94");
        hashMap2.put(c14549x8, "gostr3411-2012-256");
        hashMap2.put(c14549x9, "gostr3411-2012-512");
        f121683b = Collections.unmodifiableMap(hashMap2);
        f121684c = unmodifiableMap;
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Object obj : unmodifiableMap.o()) {
            treeMap.put(f121684c.get(obj).toString(), (C14549x) obj);
        }
        for (Object obj2 : f121683b.o()) {
            treeMap.put(f121683b.get(obj2).toString(), (C14549x) obj2);
        }
        f121685d = Collections.unmodifiableMap(treeMap);
    }

    public static InputStream a(InputStream inputStream) {
        return inputStream instanceof FileInputStream ? new BufferedInputStream(inputStream) : inputStream;
    }

    public static OutputStream b(OutputStream outputStream) {
        return outputStream instanceof FileOutputStream ? new BufferedOutputStream(outputStream) : outputStream;
    }

    public static OutputStream c(OutputStream outputStream) {
        return new a(outputStream);
    }

    public static C14549x d(String str) {
        C14549x c14549x = (C14549x) f121685d.get(w.l(str));
        if (c14549x != null) {
            return c14549x;
        }
        throw new IllegalArgumentException("unknown micalg passed: " + str);
    }

    public static String e(String str, List<String> list) {
        for (String str2 : list) {
            if (str2.startsWith(str)) {
                return str2;
            }
        }
        return null;
    }

    public static String f(String str) {
        return (str == null || str.length() <= 1 || str.charAt(0) != '\"' || str.charAt(str.length() - 1) != '\"') ? str : str.substring(1, str.length() - 1);
    }
}
