package A;

import android.annotation.TargetApi;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import w2.C15883c;

public final class a implements Closeable {

    public static final String f5p = "journal";

    public static final String f6q = "journal.tmp";

    public static final String f7r = "journal.bkp";

    public static final String f8s = "libcore.io.DiskLruCache";

    public static final String f9t = "1";

    public static final long f10u = -1;

    public static final String f11v = "CLEAN";

    public static final String f12w = "DIRTY";

    public static final String f13x = "REMOVE";

    public static final String f14y = "READ";

    public final File f15b;

    public final File f16c;

    public final File f17d;

    public final File f18e;

    public final int f19f;

    public long f20g;

    public final int f21h;

    public Writer f23j;

    public int f25l;

    public long f22i = 0;

    public final LinkedHashMap<String, d> f24k = new LinkedHashMap<>(0, 0.75f, true);

    public long f26m = 0;

    public final ThreadPoolExecutor f27n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));

    public final Callable<Void> f28o = new CallableC0000a();

    public class CallableC0000a implements Callable<Void> {
        public CallableC0000a() {
        }

        @Override
        public Void call() throws Exception {
            synchronized (a.this) {
                try {
                    if (a.this.f23j == null) {
                        return null;
                    }
                    a.this.S();
                    if (a.this.x()) {
                        a.this.G();
                        a.this.f25l = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static final class b implements ThreadFactory {
        public b() {
        }

        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        public b(CallableC0000a callableC0000a) {
            this();
        }
    }

    public final class c {

        public final d f30a;

        public final boolean[] f31b;

        public boolean f32c;

        public c(a aVar, d dVar, CallableC0000a callableC0000a) {
            this(dVar);
        }

        public void a() throws IOException {
            a.this.n(this, false);
        }

        public void b() {
            if (this.f32c) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void e() throws IOException {
            a.this.n(this, true);
            this.f32c = true;
        }

        public File f(int i10) throws IOException {
            File k10;
            synchronized (a.this) {
                try {
                    if (this.f30a.f39f != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f30a.f38e) {
                        this.f31b[i10] = true;
                    }
                    k10 = this.f30a.k(i10);
                    if (!a.this.f15b.exists()) {
                        a.this.f15b.mkdirs();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return k10;
        }

        public String g(int i10) throws IOException {
            InputStream h10 = h(i10);
            if (h10 != null) {
                return a.w(h10);
            }
            return null;
        }

        public final InputStream h(int i10) throws IOException {
            synchronized (a.this) {
                if (this.f30a.f39f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f30a.f38e) {
                    return null;
                }
                try {
                    return new FileInputStream(this.f30a.j(i10));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public void i(int i10, String str) throws IOException {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(f(i10)), A.c.f56b);
                try {
                    outputStreamWriter2.write(str);
                    A.c.a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    A.c.a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public c(d dVar) {
            this.f30a = dVar;
            this.f31b = dVar.f38e ? null : new boolean[a.this.f21h];
        }
    }

    public final class d {

        public final String f34a;

        public final long[] f35b;

        public File[] f36c;

        public File[] f37d;

        public boolean f38e;

        public c f39f;

        public long f40g;

        public d(a aVar, String str, CallableC0000a callableC0000a) {
            this(str);
        }

        public File j(int i10) {
            return this.f36c[i10];
        }

        public File k(int i10) {
            return this.f37d[i10];
        }

        public String l() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f35b) {
                sb2.append(C15883c.f126249O);
                sb2.append(j10);
            }
            return sb2.toString();
        }

        public final IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final void n(String[] strArr) throws IOException {
            if (strArr.length != a.this.f21h) {
                throw m(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.f35b[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw m(strArr);
                }
            }
        }

        public d(String str) {
            this.f34a = str;
            this.f35b = new long[a.this.f21h];
            this.f36c = new File[a.this.f21h];
            this.f37d = new File[a.this.f21h];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i10 = 0; i10 < a.this.f21h; i10++) {
                sb2.append(i10);
                this.f36c[i10] = new File(a.this.f15b, sb2.toString());
                sb2.append(".tmp");
                this.f37d[i10] = new File(a.this.f15b, sb2.toString());
                sb2.setLength(length);
            }
        }
    }

    public final class e {

        public final String f42a;

        public final long f43b;

        public final long[] f44c;

        public final File[] f45d;

        public e(a aVar, String str, long j10, File[] fileArr, long[] jArr, CallableC0000a callableC0000a) {
            this(str, j10, fileArr, jArr);
        }

        public c a() throws IOException {
            return a.this.r(this.f42a, this.f43b);
        }

        public File b(int i10) {
            return this.f45d[i10];
        }

        public long c(int i10) {
            return this.f44c[i10];
        }

        public String d(int i10) throws IOException {
            return a.w(new FileInputStream(this.f45d[i10]));
        }

        public e(String str, long j10, File[] fileArr, long[] jArr) {
            this.f42a = str;
            this.f43b = j10;
            this.f45d = fileArr;
            this.f44c = jArr;
        }
    }

    public a(File file, int i10, int i11, long j10) {
        this.f15b = file;
        this.f19f = i10;
        this.f16c = new File(file, "journal");
        this.f17d = new File(file, "journal.tmp");
        this.f18e = new File(file, "journal.bkp");
        this.f21h = i11;
        this.f20g = j10;
    }

    public static void N(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            p(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void m(Writer writer) throws IOException {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void p(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void s(Writer writer) throws IOException {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static String w(InputStream inputStream) throws IOException {
        return A.c.c(new InputStreamReader(inputStream, A.c.f56b));
    }

    public static a y(File file, int i10, int i11, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                N(file2, file3, false);
            }
        }
        a aVar = new a(file, i10, i11, j10);
        if (aVar.f16c.exists()) {
            try {
                aVar.A();
                aVar.z();
                return aVar;
            } catch (IOException e10) {
                System.out.println("DiskLruCache " + ((Object) file) + " is corrupt: " + e10.getMessage() + ", removing");
                aVar.o();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i10, i11, j10);
        aVar2.G();
        return aVar2;
    }

    public final void A() throws IOException {
        A.b bVar = new A.b(new FileInputStream(this.f16c), A.c.f55a);
        try {
            String e10 = bVar.e();
            String e11 = bVar.e();
            String e12 = bVar.e();
            String e13 = bVar.e();
            String e14 = bVar.e();
            if (!"libcore.io.DiskLruCache".equals(e10) || !"1".equals(e11) || !Integer.toString(this.f19f).equals(e12) || !Integer.toString(this.f21h).equals(e13) || !"".equals(e14)) {
                throw new IOException("unexpected journal header: [" + e10 + ", " + e11 + ", " + e13 + ", " + e14 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    B(bVar.e());
                    i10++;
                } catch (EOFException unused) {
                    this.f25l = i10 - this.f24k.size();
                    if (bVar.d()) {
                        G();
                    } else {
                        this.f23j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f16c, true), A.c.f55a));
                    }
                    A.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th2) {
            A.c.a(bVar);
            throw th2;
        }
    }

    public final void B(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i10 = indexOf + 1;
        int indexOf2 = str.indexOf(32, i10);
        if (indexOf2 == -1) {
            substring = str.substring(i10);
            if (indexOf == 6 && str.startsWith("REMOVE")) {
                this.f24k.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i10, indexOf2);
        }
        d dVar = this.f24k.get(substring);
        CallableC0000a callableC0000a = null;
        if (dVar == null) {
            dVar = new d(this, substring, callableC0000a);
            this.f24k.put(substring, dVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            dVar.f38e = true;
            dVar.f39f = null;
            dVar.n(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            dVar.f39f = new c(this, dVar, callableC0000a);
            return;
        }
        if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public final synchronized void G() throws IOException {
        try {
            Writer writer = this.f23j;
            if (writer != null) {
                m(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f17d), A.c.f55a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f19f));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f21h));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.f24k.values()) {
                    if (dVar.f39f != null) {
                        bufferedWriter.write("DIRTY " + dVar.f34a + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + dVar.f34a + dVar.l() + '\n');
                    }
                }
                m(bufferedWriter);
                if (this.f16c.exists()) {
                    N(this.f16c, this.f18e, true);
                }
                N(this.f17d, this.f16c, false);
                this.f18e.delete();
                this.f23j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f16c, true), A.c.f55a));
            } catch (Throwable th2) {
                m(bufferedWriter);
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public synchronized boolean L(String str) throws IOException {
        try {
            l();
            d dVar = this.f24k.get(str);
            if (dVar != null && dVar.f39f == null) {
                for (int i10 = 0; i10 < this.f21h; i10++) {
                    File j10 = dVar.j(i10);
                    if (j10.exists() && !j10.delete()) {
                        throw new IOException("failed to delete " + ((Object) j10));
                    }
                    this.f22i -= dVar.f35b[i10];
                    dVar.f35b[i10] = 0;
                }
                this.f25l++;
                this.f23j.append((CharSequence) "REMOVE");
                this.f23j.append(C15883c.f126249O);
                this.f23j.append((CharSequence) str);
                this.f23j.append('\n');
                this.f24k.remove(str);
                if (x()) {
                    this.f27n.submit(this.f28o);
                }
                return true;
            }
            return false;
        } finally {
        }
    }

    public synchronized void Q(long j10) {
        this.f20g = j10;
        this.f27n.submit(this.f28o);
    }

    public synchronized long R() {
        return this.f22i;
    }

    public final void S() throws IOException {
        while (this.f22i > this.f20g) {
            L(this.f24k.entrySet().iterator().next().getKey());
        }
    }

    @Override
    public synchronized void close() throws IOException {
        try {
            if (this.f23j == null) {
                return;
            }
            Iterator it = new ArrayList(this.f24k.values()).iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar.f39f != null) {
                    dVar.f39f.a();
                }
            }
            S();
            m(this.f23j);
            this.f23j = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() throws IOException {
        l();
        S();
        s(this.f23j);
    }

    public synchronized boolean isClosed() {
        return this.f23j == null;
    }

    public final void l() {
        if (this.f23j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void n(c cVar, boolean z10) throws IOException {
        d dVar = cVar.f30a;
        if (dVar.f39f != cVar) {
            throw new IllegalStateException();
        }
        if (z10 && !dVar.f38e) {
            for (int i10 = 0; i10 < this.f21h; i10++) {
                if (!cVar.f31b[i10]) {
                    cVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!dVar.k(i10).exists()) {
                    cVar.a();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.f21h; i11++) {
            File k10 = dVar.k(i11);
            if (!z10) {
                p(k10);
            } else if (k10.exists()) {
                File j10 = dVar.j(i11);
                k10.renameTo(j10);
                long j11 = dVar.f35b[i11];
                long length = j10.length();
                dVar.f35b[i11] = length;
                this.f22i = (this.f22i - j11) + length;
            }
        }
        this.f25l++;
        dVar.f39f = null;
        if (dVar.f38e || z10) {
            dVar.f38e = true;
            this.f23j.append((CharSequence) "CLEAN");
            this.f23j.append(C15883c.f126249O);
            this.f23j.append((CharSequence) dVar.f34a);
            this.f23j.append((CharSequence) dVar.l());
            this.f23j.append('\n');
            if (z10) {
                long j12 = this.f26m;
                this.f26m = 1 + j12;
                dVar.f40g = j12;
            }
        } else {
            this.f24k.remove(dVar.f34a);
            this.f23j.append((CharSequence) "REMOVE");
            this.f23j.append(C15883c.f126249O);
            this.f23j.append((CharSequence) dVar.f34a);
            this.f23j.append('\n');
        }
        s(this.f23j);
        if (this.f22i > this.f20g || x()) {
            this.f27n.submit(this.f28o);
        }
    }

    public void o() throws IOException {
        close();
        A.c.b(this.f15b);
    }

    public c q(String str) throws IOException {
        return r(str, -1L);
    }

    public final synchronized c r(String str, long j10) throws IOException {
        l();
        d dVar = this.f24k.get(str);
        CallableC0000a callableC0000a = null;
        if (j10 != -1 && (dVar == null || dVar.f40g != j10)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(this, str, callableC0000a);
            this.f24k.put(str, dVar);
        } else if (dVar.f39f != null) {
            return null;
        }
        c cVar = new c(this, dVar, callableC0000a);
        dVar.f39f = cVar;
        this.f23j.append((CharSequence) "DIRTY");
        this.f23j.append(C15883c.f126249O);
        this.f23j.append((CharSequence) str);
        this.f23j.append('\n');
        s(this.f23j);
        return cVar;
    }

    public synchronized e t(String str) throws IOException {
        l();
        d dVar = this.f24k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f38e) {
            return null;
        }
        for (File file : dVar.f36c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f25l++;
        this.f23j.append((CharSequence) "READ");
        this.f23j.append(C15883c.f126249O);
        this.f23j.append((CharSequence) str);
        this.f23j.append('\n');
        if (x()) {
            this.f27n.submit(this.f28o);
        }
        return new e(this, str, dVar.f40g, dVar.f36c, dVar.f35b, null);
    }

    public File u() {
        return this.f15b;
    }

    public synchronized long v() {
        return this.f20g;
    }

    public final boolean x() {
        int i10 = this.f25l;
        return i10 >= 2000 && i10 >= this.f24k.size();
    }

    public final void z() throws IOException {
        p(this.f17d);
        Iterator<d> it = this.f24k.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i10 = 0;
            if (next.f39f == null) {
                while (i10 < this.f21h) {
                    this.f22i += next.f35b[i10];
                    i10++;
                }
            } else {
                next.f39f = null;
                while (i10 < this.f21h) {
                    p(next.j(i10));
                    p(next.k(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }
}
