package Ig;

import Tg.p;
import Tg.x;
import Tg.y;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class d implements Closeable, Flushable {

    public static final long f9371A = -1;

    public static final Pattern f9372B = Pattern.compile("[a-z0-9_-]{1,120}");

    public static final String f9373C = "CLEAN";

    public static final String f9374D = "DIRTY";

    public static final String f9375E = "REMOVE";

    public static final String f9376F = "READ";

    public static final boolean f9377G = false;

    public static final String f9378v = "journal";

    public static final String f9379w = "journal.tmp";

    public static final String f9380x = "journal.bkp";

    public static final String f9381y = "libcore.io.DiskLruCache";

    public static final String f9382z = "1";

    public final Og.a f9383b;

    public final File f9384c;

    public final File f9385d;

    public final File f9386e;

    public final File f9387f;

    public final int f9388g;

    public long f9389h;

    public final int f9390i;

    public Tg.d f9392k;

    public int f9394m;

    public boolean f9395n;

    public boolean f9396o;

    public boolean f9397p;

    public boolean f9398q;

    public boolean f9399r;

    public final Executor f9401t;

    public long f9391j = 0;

    public final LinkedHashMap<String, e> f9393l = new LinkedHashMap<>(0, 0.75f, true);

    public long f9400s = 0;

    public final Runnable f9402u = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            synchronized (d.this) {
                d dVar = d.this;
                if ((!dVar.f9396o) || dVar.f9397p) {
                    return;
                }
                try {
                    dVar.z();
                } catch (IOException unused) {
                    d.this.f9398q = true;
                }
                try {
                    if (d.this.o()) {
                        d.this.t();
                        d.this.f9394m = 0;
                    }
                } catch (IOException unused2) {
                    d dVar2 = d.this;
                    dVar2.f9399r = true;
                    dVar2.f9392k = p.c(p.b());
                }
            }
        }
    }

    public class b extends Ig.e {

        public static final boolean f9404e = false;

        public b(x xVar) {
            super(xVar);
        }

        @Override
        public void d(IOException iOException) {
            d.this.f9395n = true;
        }
    }

    public class c implements Iterator<f> {

        public final Iterator<e> f9406b;

        public f f9407c;

        public f f9408d;

        public c() {
            this.f9406b = new ArrayList(d.this.f9393l.values()).iterator();
        }

        @Override
        public f next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            f fVar = this.f9407c;
            this.f9408d = fVar;
            this.f9407c = null;
            return fVar;
        }

        @Override
        public boolean hasNext() {
            if (this.f9407c != null) {
                return true;
            }
            synchronized (d.this) {
                try {
                    if (d.this.f9397p) {
                        return false;
                    }
                    while (this.f9406b.hasNext()) {
                        f c10 = this.f9406b.next().c();
                        if (c10 != null) {
                            this.f9407c = c10;
                            return true;
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void remove() {
            f fVar = this.f9408d;
            if (fVar == null) {
                throw new IllegalStateException("remove() before next()");
            }
            try {
                d.this.u(fVar.f9423b);
            } catch (IOException unused) {
            } catch (Throwable th2) {
                this.f9408d = null;
                throw th2;
            }
            this.f9408d = null;
        }
    }

    public final class C0237d {

        public final e f9410a;

        public final boolean[] f9411b;

        public boolean f9412c;

        public class a extends Ig.e {
            public a(x xVar) {
                super(xVar);
            }

            @Override
            public void d(IOException iOException) {
                synchronized (d.this) {
                    C0237d.this.d();
                }
            }
        }

        public C0237d(e eVar) {
            this.f9410a = eVar;
            this.f9411b = eVar.f9419e ? null : new boolean[d.this.f9390i];
        }

        public void a() throws IOException {
            synchronized (d.this) {
                try {
                    if (this.f9412c) {
                        throw new IllegalStateException();
                    }
                    if (this.f9410a.f9420f == this) {
                        d.this.d(this, false);
                    }
                    this.f9412c = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void b() {
            synchronized (d.this) {
                if (!this.f9412c && this.f9410a.f9420f == this) {
                    try {
                        d.this.d(this, false);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public void c() throws IOException {
            synchronized (d.this) {
                try {
                    if (this.f9412c) {
                        throw new IllegalStateException();
                    }
                    if (this.f9410a.f9420f == this) {
                        d.this.d(this, true);
                    }
                    this.f9412c = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void d() {
            if (this.f9410a.f9420f != this) {
                return;
            }
            int i10 = 0;
            while (true) {
                d dVar = d.this;
                if (i10 >= dVar.f9390i) {
                    this.f9410a.f9420f = null;
                    return;
                } else {
                    try {
                        dVar.f9383b.c(this.f9410a.f9418d[i10]);
                    } catch (IOException unused) {
                    }
                    i10++;
                }
            }
        }

        public x e(int i10) {
            synchronized (d.this) {
                try {
                    if (this.f9412c) {
                        throw new IllegalStateException();
                    }
                    e eVar = this.f9410a;
                    if (eVar.f9420f != this) {
                        return p.b();
                    }
                    if (!eVar.f9419e) {
                        this.f9411b[i10] = true;
                    }
                    try {
                        return new a(d.this.f9383b.h(eVar.f9418d[i10]));
                    } catch (FileNotFoundException unused) {
                        return p.b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public y f(int i10) {
            synchronized (d.this) {
                try {
                    if (this.f9412c) {
                        throw new IllegalStateException();
                    }
                    e eVar = this.f9410a;
                    if (!eVar.f9419e || eVar.f9420f != this) {
                        return null;
                    }
                    try {
                        return d.this.f9383b.g(eVar.f9417c[i10]);
                    } catch (FileNotFoundException unused) {
                        return null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final class e {

        public final String f9415a;

        public final long[] f9416b;

        public final File[] f9417c;

        public final File[] f9418d;

        public boolean f9419e;

        public C0237d f9420f;

        public long f9421g;

        public e(String str) {
            this.f9415a = str;
            int i10 = d.this.f9390i;
            this.f9416b = new long[i10];
            this.f9417c = new File[i10];
            this.f9418d = new File[i10];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i11 = 0; i11 < d.this.f9390i; i11++) {
                sb2.append(i11);
                this.f9417c[i11] = new File(d.this.f9384c, sb2.toString());
                sb2.append(".tmp");
                this.f9418d[i11] = new File(d.this.f9384c, sb2.toString());
                sb2.setLength(length);
            }
        }

        public final IOException a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void b(String[] strArr) throws IOException {
            if (strArr.length != d.this.f9390i) {
                throw a(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.f9416b[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw a(strArr);
                }
            }
        }

        public f c() {
            y yVar;
            if (!Thread.holdsLock(d.this)) {
                throw new AssertionError();
            }
            y[] yVarArr = new y[d.this.f9390i];
            long[] jArr = (long[]) this.f9416b.clone();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    d dVar = d.this;
                    if (i11 >= dVar.f9390i) {
                        return new f(this.f9415a, this.f9421g, yVarArr, jArr);
                    }
                    yVarArr[i11] = dVar.f9383b.g(this.f9417c[i11]);
                    i11++;
                } catch (FileNotFoundException unused) {
                    while (true) {
                        d dVar2 = d.this;
                        if (i10 >= dVar2.f9390i || (yVar = yVarArr[i10]) == null) {
                            try {
                                dVar2.v(this);
                                return null;
                            } catch (IOException unused2) {
                                return null;
                            }
                        }
                        Gg.c.g(yVar);
                        i10++;
                    }
                }
            }
        }

        public void d(Tg.d dVar) throws IOException {
            for (long j10 : this.f9416b) {
                dVar.writeByte(32).J(j10);
            }
        }
    }

    public final class f implements Closeable {

        public final String f9423b;

        public final long f9424c;

        public final y[] f9425d;

        public final long[] f9426e;

        public f(String str, long j10, y[] yVarArr, long[] jArr) {
            this.f9423b = str;
            this.f9424c = j10;
            this.f9425d = yVarArr;
            this.f9426e = jArr;
        }

        @Nullable
        public C0237d c() throws IOException {
            return d.this.h(this.f9423b, this.f9424c);
        }

        @Override
        public void close() {
            for (y yVar : this.f9425d) {
                Gg.c.g(yVar);
            }
        }

        public long d(int i10) {
            return this.f9426e[i10];
        }

        public y e(int i10) {
            return this.f9425d[i10];
        }

        public String f() {
            return this.f9423b;
        }
    }

    public d(Og.a aVar, File file, int i10, int i11, long j10, Executor executor) {
        this.f9383b = aVar;
        this.f9384c = file;
        this.f9388g = i10;
        this.f9385d = new File(file, "journal");
        this.f9386e = new File(file, "journal.tmp");
        this.f9387f = new File(file, "journal.bkp");
        this.f9390i = i11;
        this.f9389h = j10;
        this.f9401t = executor;
    }

    public static d e(Og.a aVar, File file, int i10, int i11, long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 > 0) {
            return new d(aVar, file, i10, i11, j10, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Gg.c.H("OkHttp DiskLruCache", true)));
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    public final void A(String str) {
        if (f9372B.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + JavadocConstants.ANCHOR_PREFIX_END);
    }

    public final synchronized void c() {
        if (isClosed()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override
    public synchronized void close() throws IOException {
        try {
            if (this.f9396o && !this.f9397p) {
                for (e eVar : (e[]) this.f9393l.values().toArray(new e[this.f9393l.size()])) {
                    C0237d c0237d = eVar.f9420f;
                    if (c0237d != null) {
                        c0237d.a();
                    }
                }
                z();
                this.f9392k.close();
                this.f9392k = null;
                this.f9397p = true;
                return;
            }
            this.f9397p = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void d(C0237d c0237d, boolean z10) throws IOException {
        e eVar = c0237d.f9410a;
        if (eVar.f9420f != c0237d) {
            throw new IllegalStateException();
        }
        if (z10 && !eVar.f9419e) {
            for (int i10 = 0; i10 < this.f9390i; i10++) {
                if (!c0237d.f9411b[i10]) {
                    c0237d.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!this.f9383b.d(eVar.f9418d[i10])) {
                    c0237d.a();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.f9390i; i11++) {
            File file = eVar.f9418d[i11];
            if (!z10) {
                this.f9383b.c(file);
            } else if (this.f9383b.d(file)) {
                File file2 = eVar.f9417c[i11];
                this.f9383b.b(file, file2);
                long j10 = eVar.f9416b[i11];
                long f10 = this.f9383b.f(file2);
                eVar.f9416b[i11] = f10;
                this.f9391j = (this.f9391j - j10) + f10;
            }
        }
        this.f9394m++;
        eVar.f9420f = null;
        if (eVar.f9419e || z10) {
            eVar.f9419e = true;
            this.f9392k.X("CLEAN").writeByte(32);
            this.f9392k.X(eVar.f9415a);
            eVar.d(this.f9392k);
            this.f9392k.writeByte(10);
            if (z10) {
                long j11 = this.f9400s;
                this.f9400s = 1 + j11;
                eVar.f9421g = j11;
            }
        } else {
            this.f9393l.remove(eVar.f9415a);
            this.f9392k.X("REMOVE").writeByte(32);
            this.f9392k.X(eVar.f9415a);
            this.f9392k.writeByte(10);
        }
        this.f9392k.flush();
        if (this.f9391j > this.f9389h || o()) {
            this.f9401t.execute(this.f9402u);
        }
    }

    public void f() throws IOException {
        close();
        this.f9383b.a(this.f9384c);
    }

    @Override
    public synchronized void flush() throws IOException {
        if (this.f9396o) {
            c();
            z();
            this.f9392k.flush();
        }
    }

    @Nullable
    public C0237d g(String str) throws IOException {
        return h(str, -1L);
    }

    public synchronized C0237d h(String str, long j10) throws IOException {
        n();
        c();
        A(str);
        e eVar = this.f9393l.get(str);
        if (j10 != -1 && (eVar == null || eVar.f9421g != j10)) {
            return null;
        }
        if (eVar != null && eVar.f9420f != null) {
            return null;
        }
        if (!this.f9398q && !this.f9399r) {
            this.f9392k.X("DIRTY").writeByte(32).X(str).writeByte(10);
            this.f9392k.flush();
            if (this.f9395n) {
                return null;
            }
            if (eVar == null) {
                eVar = new e(str);
                this.f9393l.put(str, eVar);
            }
            C0237d c0237d = new C0237d(eVar);
            eVar.f9420f = c0237d;
            return c0237d;
        }
        this.f9401t.execute(this.f9402u);
        return null;
    }

    public synchronized boolean isClosed() {
        return this.f9397p;
    }

    public synchronized void j() throws IOException {
        try {
            n();
            for (e eVar : (e[]) this.f9393l.values().toArray(new e[this.f9393l.size()])) {
                v(eVar);
            }
            this.f9398q = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized f k(String str) throws IOException {
        n();
        c();
        A(str);
        e eVar = this.f9393l.get(str);
        if (eVar != null && eVar.f9419e) {
            f c10 = eVar.c();
            if (c10 == null) {
                return null;
            }
            this.f9394m++;
            this.f9392k.X("READ").writeByte(32).X(str).writeByte(10);
            if (o()) {
                this.f9401t.execute(this.f9402u);
            }
            return c10;
        }
        return null;
    }

    public File l() {
        return this.f9384c;
    }

    public synchronized long m() {
        return this.f9389h;
    }

    public synchronized void n() throws IOException {
        try {
            if (this.f9396o) {
                return;
            }
            if (this.f9383b.d(this.f9387f)) {
                if (this.f9383b.d(this.f9385d)) {
                    this.f9383b.c(this.f9387f);
                } else {
                    this.f9383b.b(this.f9387f, this.f9385d);
                }
            }
            if (this.f9383b.d(this.f9385d)) {
                try {
                    r();
                    q();
                    this.f9396o = true;
                    return;
                } catch (IOException e10) {
                    Pg.f.k().r(5, "DiskLruCache " + ((Object) this.f9384c) + " is corrupt: " + e10.getMessage() + ", removing", e10);
                    try {
                        f();
                        this.f9397p = false;
                    } catch (Throwable th2) {
                        this.f9397p = false;
                        throw th2;
                    }
                }
            }
            t();
            this.f9396o = true;
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public boolean o() {
        int i10 = this.f9394m;
        return i10 >= 2000 && i10 >= this.f9393l.size();
    }

    public final Tg.d p() throws FileNotFoundException {
        return p.c(new b(this.f9383b.e(this.f9385d)));
    }

    public final void q() throws IOException {
        this.f9383b.c(this.f9386e);
        Iterator<e> it = this.f9393l.values().iterator();
        while (it.hasNext()) {
            e next = it.next();
            int i10 = 0;
            if (next.f9420f == null) {
                while (i10 < this.f9390i) {
                    this.f9391j += next.f9416b[i10];
                    i10++;
                }
            } else {
                next.f9420f = null;
                while (i10 < this.f9390i) {
                    this.f9383b.c(next.f9417c[i10]);
                    this.f9383b.c(next.f9418d[i10]);
                    i10++;
                }
                it.remove();
            }
        }
    }

    public final void r() throws IOException {
        Tg.e d10 = p.d(this.f9383b.g(this.f9385d));
        try {
            String L12 = d10.L1();
            String L13 = d10.L1();
            String L14 = d10.L1();
            String L15 = d10.L1();
            String L16 = d10.L1();
            if (!"libcore.io.DiskLruCache".equals(L12) || !"1".equals(L13) || !Integer.toString(this.f9388g).equals(L14) || !Integer.toString(this.f9390i).equals(L15) || !"".equals(L16)) {
                throw new IOException("unexpected journal header: [" + L12 + ", " + L13 + ", " + L15 + ", " + L16 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    s(d10.L1());
                    i10++;
                } catch (EOFException unused) {
                    this.f9394m = i10 - this.f9393l.size();
                    if (d10.b2()) {
                        this.f9392k = p();
                    } else {
                        t();
                    }
                    Gg.c.g(d10);
                    return;
                }
            }
        } catch (Throwable th2) {
            Gg.c.g(d10);
            throw th2;
        }
    }

    public final void s(String str) throws IOException {
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
                this.f9393l.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i10, indexOf2);
        }
        e eVar = this.f9393l.get(substring);
        if (eVar == null) {
            eVar = new e(substring);
            this.f9393l.put(substring, eVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            eVar.f9419e = true;
            eVar.f9420f = null;
            eVar.b(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            eVar.f9420f = new C0237d(eVar);
            return;
        }
        if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public synchronized void t() throws IOException {
        try {
            Tg.d dVar = this.f9392k;
            if (dVar != null) {
                dVar.close();
            }
            Tg.d c10 = p.c(this.f9383b.h(this.f9386e));
            try {
                c10.X("libcore.io.DiskLruCache").writeByte(10);
                c10.X("1").writeByte(10);
                c10.J(this.f9388g).writeByte(10);
                c10.J(this.f9390i).writeByte(10);
                c10.writeByte(10);
                for (e eVar : this.f9393l.values()) {
                    if (eVar.f9420f != null) {
                        c10.X("DIRTY").writeByte(32);
                        c10.X(eVar.f9415a);
                        c10.writeByte(10);
                    } else {
                        c10.X("CLEAN").writeByte(32);
                        c10.X(eVar.f9415a);
                        eVar.d(c10);
                        c10.writeByte(10);
                    }
                }
                c10.close();
                if (this.f9383b.d(this.f9385d)) {
                    this.f9383b.b(this.f9385d, this.f9387f);
                }
                this.f9383b.b(this.f9386e, this.f9385d);
                this.f9383b.c(this.f9387f);
                this.f9392k = p();
                this.f9395n = false;
                this.f9399r = false;
            } catch (Throwable th2) {
                c10.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public synchronized boolean u(String str) throws IOException {
        n();
        c();
        A(str);
        e eVar = this.f9393l.get(str);
        if (eVar == null) {
            return false;
        }
        boolean v10 = v(eVar);
        if (v10 && this.f9391j <= this.f9389h) {
            this.f9398q = false;
        }
        return v10;
    }

    public boolean v(e eVar) throws IOException {
        C0237d c0237d = eVar.f9420f;
        if (c0237d != null) {
            c0237d.d();
        }
        for (int i10 = 0; i10 < this.f9390i; i10++) {
            this.f9383b.c(eVar.f9417c[i10]);
            long j10 = this.f9391j;
            long[] jArr = eVar.f9416b;
            this.f9391j = j10 - jArr[i10];
            jArr[i10] = 0;
        }
        this.f9394m++;
        this.f9392k.X("REMOVE").writeByte(32).X(eVar.f9415a).writeByte(10);
        this.f9393l.remove(eVar.f9415a);
        if (o()) {
            this.f9401t.execute(this.f9402u);
        }
        return true;
    }

    public synchronized void w(long j10) {
        this.f9389h = j10;
        if (this.f9396o) {
            this.f9401t.execute(this.f9402u);
        }
    }

    public synchronized long x() throws IOException {
        n();
        return this.f9391j;
    }

    public synchronized Iterator<f> y() throws IOException {
        n();
        return new c();
    }

    public void z() throws IOException {
        while (this.f9391j > this.f9389h) {
            v(this.f9393l.values().iterator().next());
        }
        this.f9398q = false;
    }
}
