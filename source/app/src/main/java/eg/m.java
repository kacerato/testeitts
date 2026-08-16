package Eg;

import Bg.r;
import Dg.a;
import Eg.h;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.exception.ZipException;
import yg.C16188d;
import yg.C16189e;

public class m extends c<a> {

    public final r f5811d;

    public final C16189e f5812e;

    public final Fg.f f5813f;

    public static class a extends d {

        public final Map<String, String> f5814b;

        public a(Map<String, String> map, Bg.m mVar) {
            super(mVar);
            this.f5814b = map;
        }
    }

    public m(r rVar, C16189e c16189e, Fg.f fVar, h.b bVar) {
        super(bVar);
        this.f5811d = rVar;
        this.f5812e = c16189e;
        this.f5813f = fVar;
    }

    @Override
    public a.c g() {
        return a.c.RENAME_FILE;
    }

    @Override
    public long d(a aVar) {
        return this.f5811d.k().length();
    }

    public final long t(byte[] bArr, Bg.j jVar, long j10, long j11, RandomAccessFile randomAccessFile, OutputStream outputStream, Dg.a aVar, int i10) throws IOException {
        long m10 = j10 + m(randomAccessFile, outputStream, j10, 26L, aVar, i10);
        this.f5813f.s(outputStream, bArr.length);
        long j12 = m10 + 2;
        long m11 = j12 + m(randomAccessFile, outputStream, j12, 2L, aVar, i10);
        outputStream.write(bArr);
        long k10 = m11 + jVar.k();
        return k10 + m(randomAccessFile, outputStream, k10, j11 - (k10 - j10), aVar, i10);
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        boolean z10;
        RandomAccessFile randomAccessFile;
        Throwable th2;
        Ag.h hVar;
        Throwable th3;
        List<Bg.j> list;
        Charset charset;
        Map<String, String> map;
        Map<String, String> v10 = v(aVar.f5814b);
        if (v10.size() == 0) {
            return;
        }
        File p10 = p(this.f5811d.k().getPath());
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.f5811d.k(), Cg.f.WRITE.a());
                try {
                    Ag.h hVar2 = new Ag.h(p10);
                    try {
                        Charset b10 = aVar.f5782a.b();
                        List<Bg.j> l10 = l(this.f5811d.b().b());
                        long j10 = 0;
                        for (Bg.j jVar : l10) {
                            Map.Entry<String, String> w10 = w(jVar, v10);
                            aVar2.r(jVar.j());
                            long o10 = o(l10, jVar, this.f5811d) - hVar2.c();
                            if (w10 == null) {
                                try {
                                    list = l10;
                                    charset = b10;
                                    j10 += m(randomAccessFile2, hVar2, j10, o10, aVar2, aVar.f5782a.a());
                                    randomAccessFile = randomAccessFile2;
                                    map = v10;
                                    hVar = hVar2;
                                } catch (Throwable th4) {
                                    th3 = th4;
                                    hVar = hVar2;
                                    randomAccessFile = randomAccessFile2;
                                    try {
                                        try {
                                            hVar.close();
                                            throw th3;
                                        } catch (Throwable th5) {
                                            th3.addSuppressed(th5);
                                            throw th3;
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        th2 = th;
                                        z10 = false;
                                        try {
                                            randomAccessFile.close();
                                            throw th2;
                                        } catch (Throwable th7) {
                                            th2.addSuppressed(th7);
                                            throw th2;
                                        }
                                    }
                                }
                            } else {
                                list = l10;
                                charset = b10;
                                String x10 = x(w10.getValue(), w10.getKey(), jVar.j());
                                byte[] b11 = C16188d.b(x10, charset);
                                int length = b11.length - jVar.k();
                                map = v10;
                                hVar = hVar2;
                                randomAccessFile = randomAccessFile2;
                                try {
                                    long t10 = t(b11, jVar, j10, o10, randomAccessFile2, hVar2, aVar2, aVar.f5782a.a());
                                    y(list, jVar, x10, b11, length);
                                    j10 = t10;
                                } catch (Throwable th8) {
                                    th = th8;
                                    th3 = th;
                                    hVar.close();
                                    throw th3;
                                }
                            }
                            j();
                            hVar2 = hVar;
                            b10 = charset;
                            v10 = map;
                            l10 = list;
                            randomAccessFile2 = randomAccessFile;
                        }
                        hVar = hVar2;
                        randomAccessFile = randomAccessFile2;
                        this.f5812e.d(this.f5811d, hVar, b10);
                        z10 = true;
                        try {
                            hVar.close();
                            randomAccessFile.close();
                            k(true, this.f5811d.k(), p10);
                        } catch (Throwable th9) {
                            th2 = th9;
                            randomAccessFile.close();
                            throw th2;
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        hVar = hVar2;
                        randomAccessFile = randomAccessFile2;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    randomAccessFile = randomAccessFile2;
                }
            } catch (Throwable th12) {
                th = th12;
                k(z10, this.f5811d.k(), p10);
                throw th;
            }
        } catch (Throwable th13) {
            th = th13;
            z10 = false;
            k(z10, this.f5811d.k(), p10);
            throw th;
        }
    }

    public final Map<String, String> v(Map<String, String> map) throws ZipException {
        Bg.j c10;
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (Fg.h.j(entry.getKey()) && (c10 = C16188d.c(this.f5811d, entry.getKey())) != null) {
                if (!c10.s() || entry.getValue().endsWith("/")) {
                    hashMap.put(entry.getKey(), entry.getValue());
                } else {
                    hashMap.put(entry.getKey(), entry.getValue() + "/");
                }
            }
        }
        return hashMap;
    }

    public final Map.Entry<String, String> w(Bg.j jVar, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (jVar.j().startsWith(entry.getKey())) {
                return entry;
            }
        }
        return null;
    }

    public final String x(String str, String str2, String str3) throws ZipException {
        if (str3.equals(str2)) {
            return str;
        }
        if (!str3.startsWith(str2)) {
            throw new ZipException("old file name was neither an exact match nor a partial match");
        }
        return str + str3.substring(str2.length());
    }

    public final void y(List<Bg.j> list, Bg.j jVar, String str, byte[] bArr, int i10) throws ZipException {
        Bg.j c10 = C16188d.c(this.f5811d, jVar.j());
        if (c10 == null) {
            throw new ZipException("could not find any header with name: " + jVar.j());
        }
        c10.F(str);
        c10.G(bArr.length);
        long j10 = i10;
        r(list, this.f5811d, c10, j10);
        this.f5811d.e().o(this.f5811d.e().g() + j10);
        if (this.f5811d.n()) {
            this.f5811d.j().p(this.f5811d.j().f() + j10);
            this.f5811d.i().g(this.f5811d.i().d() + j10);
        }
    }
}
