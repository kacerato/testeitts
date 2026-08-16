package D2;

import A2.d0;
import A2.e0;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.M1;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import v2.InterfaceC15800a;
import w2.H;
import w2.I;
import w2.M;

@v2.c
@p
public final class s {

    public static final int f4798a = 10000;

    public static final d0<File> f4799b = new b();

    public class a implements w<List<String>> {

        public final List<String> f4800a = M1.q();

        @Override
        public boolean a(String str) {
            this.f4800a.add(str);
            return true;
        }

        @Override
        public List<String> getResult() {
            return this.f4800a;
        }
    }

    public class b implements d0<File> {
        @Override
        public Iterable<File> a(File file) {
            File[] listFiles;
            return (!file.isDirectory() || (listFiles = file.listFiles()) == null) ? AbstractC12521g1.x() : Collections.unmodifiableList(Arrays.asList(listFiles));
        }
    }

    public static final class c extends AbstractC2487e {

        public final File f4801a;

        public final AbstractC12564r1<r> f4802b;

        public c(File file, r[] rVarArr, a aVar) {
            this(file, rVarArr);
        }

        @Override
        public FileOutputStream c() throws IOException {
            return new FileOutputStream(this.f4801a, this.f4802b.contains(r.APPEND));
        }

        public String toString() {
            String valueOf = String.valueOf(this.f4801a);
            String valueOf2 = String.valueOf(this.f4802b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20 + valueOf2.length());
            sb2.append("Files.asByteSink(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        public c(File file, r... rVarArr) {
            this.f4801a = (File) H.E(file);
            this.f4802b = AbstractC12564r1.v(rVarArr);
        }
    }

    public static final class d extends AbstractC2488f {

        public final File f4803a;

        public d(File file, a aVar) {
            this(file);
        }

        @Override
        public byte[] o() throws IOException {
            try {
                FileInputStream fileInputStream = (FileInputStream) m.c().d(m());
                return C2489g.v(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        @Override
        public long p() throws IOException {
            if (this.f4803a.isFile()) {
                return this.f4803a.length();
            }
            throw new FileNotFoundException(this.f4803a.toString());
        }

        @Override
        public w2.C<Long> q() {
            return this.f4803a.isFile() ? w2.C.f(Long.valueOf(this.f4803a.length())) : w2.C.a();
        }

        @Override
        public FileInputStream m() throws IOException {
            return new FileInputStream(this.f4803a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f4803a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("Files.asByteSource(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public d(File file) {
            this.f4803a = (File) H.E(file);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class e implements I<File> {
        public static final e IS_DIRECTORY = new a("IS_DIRECTORY", 0);
        public static final e IS_FILE = new b("IS_FILE", 1);
        private static final e[] $VALUES = a();

        public enum a extends e {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public boolean apply(File file) {
                return file.isDirectory();
            }

            @Override
            public String toString() {
                return "Files.isDirectory()";
            }
        }

        public enum b extends e {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public boolean apply(File file) {
                return file.isFile();
            }

            @Override
            public String toString() {
                return "Files.isFile()";
            }
        }

        public e(String str, int i10) {
        }

        public static e[] a() {
            return new e[]{IS_DIRECTORY, IS_FILE};
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) $VALUES.clone();
        }

        public e(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    @I2.a
    @C
    @Deprecated
    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).readLines(callback)")
    public static <T> T A(File file, Charset charset, w<T> wVar) throws IOException {
        return (T) e(file, charset).q(wVar);
    }

    public static List<String> B(File file, Charset charset) throws IOException {
        return (List) e(file, charset).q(new a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String C(String str) {
        H.E(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> n10 = M.h('/').g().n(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : n10) {
            str2.hashCode();
            if (!str2.equals(".")) {
                if (!str2.equals(ClasspathEntry.DOT_DOT)) {
                    arrayList.add(str2);
                } else if (arrayList.size() <= 0 || ((String) arrayList.get(arrayList.size() - 1)).equals(ClasspathEntry.DOT_DOT)) {
                    arrayList.add(ClasspathEntry.DOT_DOT);
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        String k10 = w2.y.o('/').k(arrayList);
        if (str.charAt(0) == '/') {
            String valueOf = String.valueOf(k10);
            k10 = valueOf.length() != 0 ? "/".concat(valueOf) : new String("/");
        }
        while (k10.startsWith("/../")) {
            k10 = k10.substring(3);
        }
        return k10.equals("/..") ? "/" : "".equals(k10) ? "." : k10;
    }

    public static byte[] D(File file) throws IOException {
        return c(file).o();
    }

    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).read()")
    @Deprecated
    public static String E(File file, Charset charset) throws IOException {
        return e(file, charset).n();
    }

    public static void F(File file) throws IOException {
        H.E(file);
        if (file.createNewFile() || file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 38);
        sb2.append("Unable to update modification time of ");
        sb2.append(valueOf);
        throw new IOException(sb2.toString());
    }

    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSink(to, charset).write(from)")
    @Deprecated
    public static void G(CharSequence charSequence, File file, Charset charset) throws IOException {
        d(file, charset, new r[0]).c(charSequence);
    }

    public static void H(byte[] bArr, File file) throws IOException {
        b(file, new r[0]).d(bArr);
    }

    @I2.l(imports = {"com.google.common.io.FileWriteMode", "com.google.common.io.Files"}, replacement = "Files.asCharSink(to, charset, FileWriteMode.APPEND).write(from)")
    @Deprecated
    public static void a(CharSequence charSequence, File file, Charset charset) throws IOException {
        d(file, charset, r.APPEND).c(charSequence);
    }

    public static AbstractC2487e b(File file, r... rVarArr) {
        return new c(file, rVarArr, null);
    }

    public static AbstractC2488f c(File file) {
        return new d(file, null);
    }

    public static i d(File file, Charset charset, r... rVarArr) {
        return b(file, rVarArr).a(charset);
    }

    public static j e(File file, Charset charset) {
        return c(file).a(charset);
    }

    public static void f(File file, File file2) throws IOException {
        H.y(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        c(file).f(b(file2, new r[0]));
    }

    public static void g(File file, OutputStream outputStream) throws IOException {
        c(file).g(outputStream);
    }

    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(from, charset).copyTo(to)")
    @Deprecated
    public static void h(File file, Charset charset, Appendable appendable) throws IOException {
        e(file, charset).f(appendable);
    }

    public static void i(File file) throws IOException {
        H.E(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 39);
        sb2.append("Unable to create parent directories of ");
        sb2.append(valueOf);
        throw new IOException(sb2.toString());
    }

    @Deprecated
    @InterfaceC15800a
    public static File j() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder(21);
        sb2.append(currentTimeMillis);
        sb2.append("-");
        String sb3 = sb2.toString();
        for (int i10 = 0; i10 < 10000; i10++) {
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb3).length() + 11);
            sb4.append(sb3);
            sb4.append(i10);
            File file2 = new File(file, sb4.toString());
            if (file2.mkdir()) {
                return file2;
            }
        }
        StringBuilder sb5 = new StringBuilder(String.valueOf(sb3).length() + 66 + String.valueOf(sb3).length());
        sb5.append("Failed to create directory within 10000 attempts (tried ");
        sb5.append(sb3);
        sb5.append("0 to ");
        sb5.append(sb3);
        sb5.append(9999);
        sb5.append(')');
        throw new IllegalStateException(sb5.toString());
    }

    public static boolean k(File file, File file2) throws IOException {
        H.E(file);
        H.E(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return c(file).e(c(file2));
        }
        return false;
    }

    @InterfaceC15800a
    public static e0<File> l() {
        return e0.h(f4799b);
    }

    public static String m(String str) {
        H.E(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? "" : name.substring(lastIndexOf + 1);
    }

    public static String n(String str) {
        H.E(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? name : name.substring(0, lastIndexOf);
    }

    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asByteSource(file).hash(hashFunction)")
    @Deprecated
    public static B2.p o(File file, B2.q qVar) throws IOException {
        return c(file).j(qVar);
    }

    public static I<File> p() {
        return e.IS_DIRECTORY;
    }

    public static I<File> q() {
        return e.IS_FILE;
    }

    public static MappedByteBuffer r(File file) throws IOException {
        H.E(file);
        return s(file, FileChannel.MapMode.READ_ONLY);
    }

    public static MappedByteBuffer s(File file, FileChannel.MapMode mapMode) throws IOException {
        return u(file, mapMode, -1L);
    }

    public static MappedByteBuffer t(File file, FileChannel.MapMode mapMode, long j10) throws IOException {
        H.p(j10 >= 0, "size (%s) may not be negative", j10);
        return u(file, mapMode, j10);
    }

    public static MappedByteBuffer u(File file, FileChannel.MapMode mapMode, long j10) throws IOException {
        H.E(file);
        H.E(mapMode);
        m c10 = m.c();
        try {
            FileChannel fileChannel = (FileChannel) c10.d(((RandomAccessFile) c10.d(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? com.itsmagic.engine.Engines.Engine.Animation.a.f72595c : "rw"))).getChannel());
            if (j10 == -1) {
                j10 = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j10);
        } finally {
        }
    }

    public static void v(File file, File file2) throws IOException {
        H.E(file);
        H.E(file2);
        H.y(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (file.renameTo(file2)) {
            return;
        }
        f(file, file2);
        if (file.delete()) {
            return;
        }
        if (file2.delete()) {
            String valueOf = String.valueOf(file);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 17);
            sb2.append("Unable to delete ");
            sb2.append(valueOf);
            throw new IOException(sb2.toString());
        }
        String valueOf2 = String.valueOf(file2);
        StringBuilder sb3 = new StringBuilder(valueOf2.length() + 17);
        sb3.append("Unable to delete ");
        sb3.append(valueOf2);
        throw new IOException(sb3.toString());
    }

    public static BufferedReader w(File file, Charset charset) throws FileNotFoundException {
        H.E(file);
        H.E(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter x(File file, Charset charset) throws FileNotFoundException {
        H.E(file);
        H.E(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    @I2.a
    @C
    @Deprecated
    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asByteSource(file).read(processor)")
    public static <T> T y(File file, InterfaceC2486d<T> interfaceC2486d) throws IOException {
        return (T) c(file).n(interfaceC2486d);
    }

    @I2.l(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).readFirstLine()")
    @CheckForNull
    @Deprecated
    public static String z(File file, Charset charset) throws IOException {
        return e(file, charset).o();
    }
}
