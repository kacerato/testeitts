package ug;

import Bg.j;
import Bg.m;
import Bg.r;
import Bg.s;
import Cg.f;
import Eg.e;
import Eg.f;
import Eg.g;
import Eg.h;
import Eg.i;
import Eg.j;
import Eg.k;
import Eg.l;
import Eg.m;
import Eg.n;
import Fg.c;
import Fg.d;
import Fg.g;
import Fg.h;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import net.lingala.zip4j.exception.ZipException;
import yg.C16186b;
import yg.C16188d;
import yg.C16189e;
import zg.k;

public class C15608a implements Closeable {

    public File f120539b;

    public r f120540c;

    public boolean f120541d;

    public Dg.a f120542e;

    public boolean f120543f;

    public char[] f120544g;

    public C16189e f120545h;

    public Charset f120546i;

    public ThreadFactory f120547j;

    public ExecutorService f120548k;

    public int f120549l;

    public List<InputStream> f120550m;

    public boolean f120551n;

    public C15608a(String str) {
        this(new File(str), (char[]) null);
    }

    public int A() {
        return this.f120549l;
    }

    public Charset B() {
        Charset charset = this.f120546i;
        return charset == null ? d.f6822w : charset;
    }

    public String G() throws ZipException {
        if (!this.f120539b.exists()) {
            throw new ZipException("zip file does not exist, cannot read comment");
        }
        i0();
        r rVar = this.f120540c;
        if (rVar == null) {
            throw new ZipException("zip model is null, cannot read comment");
        }
        if (rVar.e() != null) {
            return this.f120540c.e().c();
        }
        throw new ZipException("end of central directory record is null, cannot read comment");
    }

    public ExecutorService L() {
        return this.f120548k;
    }

    public File N() {
        return this.f120539b;
    }

    public j Q(String str) throws ZipException {
        if (!h.j(str)) {
            throw new ZipException("input file name is emtpy or null, cannot get FileHeader");
        }
        i0();
        r rVar = this.f120540c;
        if (rVar == null || rVar.b() == null) {
            return null;
        }
        return C16188d.c(this.f120540c, str);
    }

    public List<j> R() throws ZipException {
        i0();
        r rVar = this.f120540c;
        return (rVar == null || rVar.b() == null) ? Collections.emptyList() : this.f120540c.b().b();
    }

    public k S(j jVar) throws IOException {
        if (jVar == null) {
            throw new ZipException("FileHeader is null, cannot get InputStream");
        }
        i0();
        r rVar = this.f120540c;
        if (rVar == null) {
            throw new ZipException("zip model is null, cannot get inputstream");
        }
        k c10 = g.c(rVar, jVar, this.f120544g);
        this.f120550m.add(c10);
        return c10;
    }

    public Dg.a V() {
        return this.f120542e;
    }

    public List<File> Y() throws ZipException {
        i0();
        return c.s(this.f120540c);
    }

    public final RandomAccessFile Z() throws IOException {
        if (!c.w(this.f120539b)) {
            return new RandomAccessFile(this.f120539b, f.READ.a());
        }
        zg.g gVar = new zg.g(this.f120539b, f.READ.a(), c.h(this.f120539b));
        gVar.c();
        return gVar;
    }

    public void a(File file) throws ZipException {
        f(Collections.singletonList(file), new s());
    }

    public void b(File file, s sVar) throws ZipException {
        f(Collections.singletonList(file), sVar);
    }

    public boolean b0() throws ZipException {
        if (this.f120540c == null) {
            i0();
            if (this.f120540c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f120540c.b() == null || this.f120540c.b().b() == null) {
            throw new ZipException("invalid zip file");
        }
        Iterator<j> it = this.f120540c.b().b().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            j next = it.next();
            if (next != null && next.t()) {
                this.f120541d = true;
                break;
            }
        }
        return this.f120541d;
    }

    public void c(String str) throws ZipException {
        d(str, new s());
    }

    public boolean c0() {
        return this.f120543f;
    }

    @Override
    public void close() throws IOException {
        Iterator<InputStream> it = this.f120550m.iterator();
        while (it.hasNext()) {
            it.next().close();
        }
        this.f120550m.clear();
    }

    public void d(String str, s sVar) throws ZipException {
        if (!h.j(str)) {
            throw new ZipException("file to add is null or empty");
        }
        f(Collections.singletonList(new File(str)), sVar);
    }

    public boolean d0() throws ZipException {
        if (this.f120540c == null) {
            i0();
            if (this.f120540c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        return this.f120540c.m();
    }

    public void e(List<File> list) throws ZipException {
        f(list, new s());
    }

    public boolean e0() {
        return this.f120551n;
    }

    public void f(List<File> list, s sVar) throws ZipException {
        if (list == null || list.size() == 0) {
            throw new ZipException("input file List is null or empty");
        }
        if (sVar == null) {
            throw new ZipException("input parameters are null");
        }
        i0();
        if (this.f120540c == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (this.f120539b.exists() && this.f120540c.m()) {
            throw new ZipException("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new e(this.f120540c, this.f120544g, this.f120545h, l()).e(new e.a(list, sVar, m()));
    }

    public boolean f0() {
        if (!this.f120539b.exists()) {
            return false;
        }
        try {
            i0();
            if (this.f120540c.m()) {
                return z0(Y());
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void g(File file) throws ZipException {
        h(file, new s());
    }

    public void g0(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("outputZipFile is null, cannot merge split files");
        }
        if (file.exists()) {
            throw new ZipException("output Zip File already exists");
        }
        i0();
        r rVar = this.f120540c;
        if (rVar == null) {
            throw new ZipException("zip model is null, corrupt zip file?");
        }
        new Eg.k(rVar, l()).e(new k.a(file, m()));
    }

    public void h(File file, s sVar) throws ZipException {
        if (file == null) {
            throw new ZipException("input path is null, cannot add folder to zip file");
        }
        if (!file.exists()) {
            throw new ZipException("folder does not exist");
        }
        if (!file.isDirectory()) {
            throw new ZipException("input folder is not a directory");
        }
        if (!file.canRead()) {
            throw new ZipException("cannot read input folder");
        }
        if (sVar == null) {
            throw new ZipException("input parameters are null, cannot add folder to zip file");
        }
        j(file, sVar, true);
    }

    public final void i0() throws ZipException {
        if (this.f120540c != null) {
            return;
        }
        if (!this.f120539b.exists()) {
            n();
            return;
        }
        if (!this.f120539b.canRead()) {
            throw new ZipException("no read access for the input zip file");
        }
        try {
            RandomAccessFile Z10 = Z();
            try {
                r h10 = new C16186b().h(Z10, m());
                this.f120540c = h10;
                h10.B(this.f120539b);
                if (Z10 != null) {
                    Z10.close();
                }
            } finally {
            }
        } catch (ZipException e10) {
            throw e10;
        } catch (IOException e11) {
            throw new ZipException(e11);
        }
    }

    public final void j(File file, s sVar, boolean z10) throws ZipException {
        i0();
        r rVar = this.f120540c;
        if (rVar == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (z10 && rVar.m()) {
            throw new ZipException("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
        new Eg.f(this.f120540c, this.f120544g, this.f120545h, l()).e(new f.a(file, sVar, m()));
    }

    public void j0(j jVar) throws ZipException {
        if (jVar == null) {
            throw new ZipException("input file header is null, cannot remove file");
        }
        k0(jVar.j());
    }

    public void k(InputStream inputStream, s sVar) throws ZipException {
        if (inputStream == null) {
            throw new ZipException("inputstream is null, cannot add file to zip");
        }
        if (sVar == null) {
            throw new ZipException("zip parameters are null");
        }
        w0(false);
        i0();
        if (this.f120540c == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (this.f120539b.exists() && this.f120540c.m()) {
            throw new ZipException("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new Eg.g(this.f120540c, this.f120544g, this.f120545h, l()).e(new g.a(inputStream, sVar, m()));
    }

    public void k0(String str) throws ZipException {
        if (!h.j(str)) {
            throw new ZipException("file name is empty or null, cannot remove file");
        }
        m0(Collections.singletonList(str));
    }

    public final h.b l() {
        if (this.f120543f) {
            if (this.f120547j == null) {
                this.f120547j = Executors.defaultThreadFactory();
            }
            this.f120548k = Executors.newSingleThreadExecutor(this.f120547j);
        }
        return new h.b(this.f120548k, this.f120543f, this.f120542e);
    }

    public final m m() {
        return new m(this.f120546i, this.f120549l, this.f120551n);
    }

    public void m0(List<String> list) throws ZipException {
        if (list == null) {
            throw new ZipException("fileNames list is null");
        }
        if (list.isEmpty()) {
            return;
        }
        if (this.f120540c == null) {
            i0();
        }
        if (this.f120540c.m()) {
            throw new ZipException("Zip file format does not allow updating split/spanned files");
        }
        new l(this.f120540c, this.f120545h, l()).e(new l.a(list, m()));
    }

    public final void n() {
        r rVar = new r();
        this.f120540c = rVar;
        rVar.B(this.f120539b);
    }

    public void n0(j jVar, String str) throws ZipException {
        if (jVar == null) {
            throw new ZipException("File header is null");
        }
        o0(jVar.j(), str);
    }

    public void o(List<File> list, s sVar, boolean z10, long j10) throws ZipException {
        if (this.f120539b.exists()) {
            throw new ZipException("zip file: " + ((Object) this.f120539b) + " already exists. To add files to existing zip file use addFile method");
        }
        if (list == null || list.size() == 0) {
            throw new ZipException("input file List is null, cannot create zip file");
        }
        n();
        this.f120540c.v(z10);
        this.f120540c.w(j10);
        new e(this.f120540c, this.f120544g, this.f120545h, l()).e(new e.a(list, sVar, m()));
    }

    public void o0(String str, String str2) throws ZipException {
        if (!Fg.h.j(str)) {
            throw new ZipException("file name to be changed is null or empty");
        }
        if (!Fg.h.j(str2)) {
            throw new ZipException("newFileName is null or empty");
        }
        p0(Collections.singletonMap(str, str2));
    }

    public void p(File file, s sVar, boolean z10, long j10) throws ZipException {
        if (file == null) {
            throw new ZipException("folderToAdd is null, cannot create zip file from folder");
        }
        if (sVar == null) {
            throw new ZipException("input parameters are null, cannot create zip file from folder");
        }
        if (this.f120539b.exists()) {
            throw new ZipException("zip file: " + ((Object) this.f120539b) + " already exists. To add files to existing zip file use addFolder method");
        }
        n();
        this.f120540c.v(z10);
        if (z10) {
            this.f120540c.w(j10);
        }
        j(file, sVar, false);
    }

    public void p0(Map<String, String> map) throws ZipException {
        if (map == null) {
            throw new ZipException("fileNamesMap is null");
        }
        if (map.size() == 0) {
            return;
        }
        i0();
        if (this.f120540c.m()) {
            throw new ZipException("Zip file format does not allow updating split/spanned files");
        }
        new Eg.m(this.f120540c, this.f120545h, new Fg.f(), l()).e(new m.a(map, m()));
    }

    public void q(String str) throws ZipException {
        r(str, new Bg.l());
    }

    public void q0(int i10) {
        if (i10 < 512) {
            throw new IllegalArgumentException("Buffer size cannot be less than 512 bytes");
        }
        this.f120549l = i10;
    }

    public void r(String str, Bg.l lVar) throws ZipException {
        if (!Fg.h.j(str)) {
            throw new ZipException("output path is null or invalid");
        }
        if (!Fg.h.d(new File(str))) {
            throw new ZipException("invalid output path");
        }
        if (this.f120540c == null) {
            i0();
        }
        r rVar = this.f120540c;
        if (rVar == null) {
            throw new ZipException("Internal error occurred when extracting zip file");
        }
        new i(rVar, this.f120544g, lVar, l()).e(new i.a(str, m()));
    }

    public void r0(Charset charset) throws IllegalArgumentException {
        if (charset == null) {
            throw new IllegalArgumentException("charset cannot be null");
        }
        this.f120546i = charset;
    }

    public void s(j jVar, String str) throws ZipException {
        v(jVar, str, null, new Bg.l());
    }

    public void t(j jVar, String str, Bg.l lVar) throws ZipException {
        v(jVar, str, null, lVar);
    }

    public String toString() {
        return this.f120539b.toString();
    }

    public void u(j jVar, String str, String str2) throws ZipException {
        v(jVar, str, str2, new Bg.l());
    }

    public void u0(String str) throws ZipException {
        if (str == null) {
            throw new ZipException("input comment is null, cannot update zip file");
        }
        if (!this.f120539b.exists()) {
            throw new ZipException("zip file does not exist, cannot set comment for zip file");
        }
        i0();
        r rVar = this.f120540c;
        if (rVar == null) {
            throw new ZipException("zipModel is null, cannot update zip file");
        }
        if (rVar.e() == null) {
            throw new ZipException("end of central directory is null, cannot set comment");
        }
        new n(this.f120540c, l()).e(new n.a(str, m()));
    }

    public void v(j jVar, String str, String str2, Bg.l lVar) throws ZipException {
        if (jVar == null) {
            throw new ZipException("input file header is null, cannot extract file");
        }
        z(jVar.j(), str, str2, lVar);
    }

    public void v0(char[] cArr) {
        this.f120544g = cArr;
    }

    public void w(String str, String str2) throws ZipException {
        z(str, str2, null, new Bg.l());
    }

    public void w0(boolean z10) {
        this.f120543f = z10;
    }

    public void x(String str, String str2, Bg.l lVar) throws ZipException {
        z(str, str2, null, lVar);
    }

    public void x0(ThreadFactory threadFactory) {
        this.f120547j = threadFactory;
    }

    public void y(String str, String str2, String str3) throws ZipException {
        z(str, str2, str3, new Bg.l());
    }

    public void y0(boolean z10) {
        this.f120551n = z10;
    }

    public void z(String str, String str2, String str3, Bg.l lVar) throws ZipException {
        if (!Fg.h.j(str)) {
            throw new ZipException("file to extract is null or empty, cannot extract file");
        }
        if (!Fg.h.j(str2)) {
            throw new ZipException("destination path is empty or null, cannot extract file");
        }
        if (lVar == null) {
            lVar = new Bg.l();
        }
        i0();
        new Eg.j(this.f120540c, this.f120544g, lVar, l()).e(new j.a(str2, str, str3, m()));
    }

    public final boolean z0(List<File> list) {
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            if (!it.next().exists()) {
                return false;
            }
        }
        return true;
    }

    public C15608a(String str, char[] cArr) {
        this(new File(str), cArr);
    }

    public C15608a(File file) {
        this(file, (char[]) null);
    }

    public C15608a(File file, char[] cArr) {
        this.f120545h = new C16189e();
        this.f120546i = null;
        this.f120549l = 4096;
        this.f120550m = new ArrayList();
        this.f120551n = true;
        if (file != null) {
            this.f120539b = file;
            this.f120544g = cArr;
            this.f120543f = false;
            this.f120542e = new Dg.a();
            return;
        }
        throw new IllegalArgumentException("input zip file parameter is null");
    }
}
