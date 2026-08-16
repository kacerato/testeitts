package Eg;

import Bg.r;
import Dg.a;
import Eg.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.regex.Matcher;
import net.lingala.zip4j.exception.ZipException;

public abstract class b<T> extends h<T> {

    public final r f5779d;

    public final Bg.l f5780e;

    public b(r rVar, Bg.l lVar, h.b bVar) {
        super(bVar);
        this.f5779d = rVar;
        this.f5780e = lVar;
    }

    @Override
    public a.c g() {
        return a.c.EXTRACT_ENTRY;
    }

    public final void k(File file, String str, Bg.j jVar) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        if (file.isDirectory()) {
            String str2 = Fg.d.f6818s;
            if (!canonicalPath.endsWith(str2)) {
                canonicalPath = canonicalPath + str2;
            }
        }
        String canonicalPath2 = new File(str).getCanonicalPath();
        String str3 = Fg.d.f6818s;
        if (!canonicalPath2.endsWith(str3)) {
            canonicalPath2 = canonicalPath2 + str3;
        }
        if (canonicalPath.startsWith(canonicalPath2)) {
            return;
        }
        throw new ZipException("illegal file name that breaks out of the target directory: " + jVar.j());
    }

    public final void l(File file) throws ZipException {
        if (file.getParentFile().exists() || file.getParentFile().mkdirs()) {
            return;
        }
        throw new ZipException("Unable to create parent directories: " + ((Object) file.getParentFile()));
    }

    public final void m(zg.k kVar, Bg.j jVar, File file, Dg.a aVar) throws IOException {
        String str = new String(s(kVar, jVar, aVar));
        if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
            throw new ZipException("Could not create parent directories");
        }
        try {
            Path path = Paths.get(str, new String[0]);
            if (file.exists() && !file.delete()) {
                throw new ZipException("Could not delete existing symlink " + ((Object) file));
            }
            Files.createSymbolicLink(file.toPath(), path, new FileAttribute[0]);
        } catch (NoSuchMethodError unused) {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(str.getBytes());
                fileOutputStream.close();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public final File n(Bg.j jVar, String str, String str2) {
        String j10 = jVar.j();
        if (!Fg.h.j(str2)) {
            str2 = j10;
        }
        return new File(str, p(str2));
    }

    public void o(zg.k kVar, Bg.j jVar, String str, String str2, Dg.a aVar, byte[] bArr) throws IOException {
        boolean r10 = r(jVar);
        if (!r10 || this.f5780e.a()) {
            String str3 = Fg.d.f6818s;
            if (!str.endsWith(str3)) {
                str = str + str3;
            }
            File n10 = n(jVar, str, str2);
            aVar.r(n10.getAbsolutePath());
            k(n10, str, jVar);
            u(kVar, jVar);
            if (jVar.s()) {
                if (!n10.exists() && !n10.mkdirs()) {
                    throw new ZipException("Could not create directory: " + ((Object) n10));
                }
            } else if (r10) {
                m(kVar, jVar, n10, aVar);
            } else {
                l(n10);
                t(kVar, n10, aVar, bArr);
            }
            if (r10) {
                return;
            }
            Fg.g.a(jVar, n10);
        }
    }

    public final String p(String str) {
        return str.replaceAll(":\\\\", ConstantDescs.DEFAULT_NAME).replaceAll("[/\\\\]", Matcher.quoteReplacement(Fg.d.f6818s));
    }

    public r q() {
        return this.f5779d;
    }

    public final boolean r(Bg.j jVar) {
        byte[] P10 = jVar.P();
        if (P10 == null || P10.length < 4) {
            return false;
        }
        return Fg.a.a(P10[3], 5);
    }

    public final byte[] s(zg.k kVar, Bg.j jVar, Dg.a aVar) throws IOException {
        int o10 = (int) jVar.o();
        byte[] bArr = new byte[o10];
        if (kVar.read(bArr) != o10) {
            throw new ZipException("Could not read complete entry");
        }
        aVar.x(o10);
        return bArr;
    }

    public final void t(zg.k kVar, File file, Dg.a aVar, byte[] bArr) throws IOException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            while (true) {
                try {
                    int read = kVar.read(bArr);
                    if (read == -1) {
                        fileOutputStream.close();
                        return;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                        aVar.x(read);
                        j();
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (Exception e10) {
            if (file.exists()) {
                file.delete();
            }
            throw e10;
        }
    }

    public final void u(zg.k kVar, Bg.j jVar) throws IOException {
        if (Fg.a.a(jVar.l()[0], 6)) {
            throw new ZipException("Entry with name " + jVar.j() + " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented.");
        }
        Bg.k k10 = kVar.k(jVar, false);
        if (k10 != null) {
            if (!jVar.j().equals(k10.j())) {
                throw new ZipException("File header and local file header mismatch");
            }
        } else {
            throw new ZipException("Could not read corresponding local file header for file header: " + jVar.j());
        }
    }
}
