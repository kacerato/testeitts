package yg;

import Bg.j;
import Bg.r;
import Fg.h;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;

public class C16188d {
    public static String a(byte[] bArr, boolean z10, Charset charset) {
        if (charset != null) {
            return new String(bArr, charset);
        }
        if (z10) {
            return new String(bArr, Fg.d.f6822w);
        }
        try {
            return new String(bArr, Fg.d.f6821v);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static byte[] b(String str, Charset charset) {
        return charset == null ? str.getBytes(Fg.d.f6823x) : str.getBytes(charset);
    }

    public static j c(r rVar, String str) throws ZipException {
        j d10 = d(rVar, str);
        if (d10 != null) {
            return d10;
        }
        String replaceAll = str.replaceAll("\\\\", "/");
        j d11 = d(rVar, replaceAll);
        return d11 == null ? d(rVar, replaceAll.replaceAll("/", "\\\\")) : d11;
    }

    public static j d(r rVar, String str) throws ZipException {
        if (rVar == null) {
            throw new ZipException("zip model is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (!h.j(str)) {
            throw new ZipException("file name is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (rVar.b() == null) {
            throw new ZipException("central directory is null, cannot determine file header with exact match for fileName: " + str);
        }
        if (rVar.b().b() == null) {
            throw new ZipException("file Headers are null, cannot determine file header with exact match for fileName: " + str);
        }
        if (rVar.b().b().size() == 0) {
            return null;
        }
        for (j jVar : rVar.b().b()) {
            String j10 = jVar.j();
            if (h.j(j10) && str.equals(j10)) {
                return jVar;
            }
        }
        return null;
    }

    public static List<j> e(List<j> list, String str) {
        ArrayList arrayList = new ArrayList();
        for (j jVar : list) {
            if (jVar.j().startsWith(str)) {
                arrayList.add(jVar);
            }
        }
        return arrayList;
    }

    public static long f(r rVar) {
        return rVar.n() ? rVar.j().f() : rVar.e().g();
    }

    public static long g(List<j> list) {
        long j10 = 0;
        for (j jVar : list) {
            j10 += (jVar.q() == null || jVar.q().g() <= 0) ? jVar.o() : jVar.q().g();
        }
        return j10;
    }
}
