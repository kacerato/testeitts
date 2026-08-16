package okhttp3;

import Tg.C3089c;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public abstract class F implements Closeable {

    @Nullable
    public Reader f99146b;

    public class a extends F {

        public final x f99147c;

        public final long f99148d;

        public final Tg.e f99149e;

        public a(x xVar, long j10, Tg.e eVar) {
            this.f99147c = xVar;
            this.f99148d = j10;
            this.f99149e = eVar;
        }

        @Override
        public long g() {
            return this.f99148d;
        }

        @Override
        @Nullable
        public x h() {
            return this.f99147c;
        }

        @Override
        public Tg.e n() {
            return this.f99149e;
        }
    }

    public static final class b extends Reader {

        public final Tg.e f99150b;

        public final Charset f99151c;

        public boolean f99152d;

        @Nullable
        public Reader f99153e;

        public b(Tg.e eVar, Charset charset) {
            this.f99150b = eVar;
            this.f99151c = charset;
        }

        @Override
        public void close() throws IOException {
            this.f99152d = true;
            Reader reader = this.f99153e;
            if (reader != null) {
                reader.close();
            } else {
                this.f99150b.close();
            }
        }

        @Override
        public int read(char[] cArr, int i10, int i11) throws IOException {
            if (this.f99152d) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.f99153e;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.f99150b.j2(), Gg.c.c(this.f99150b, this.f99151c));
                this.f99153e = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i10, i11);
        }
    }

    public static F j(@Nullable x xVar, long j10, Tg.e eVar) {
        if (eVar != null) {
            return new a(xVar, j10, eVar);
        }
        throw new NullPointerException("source == null");
    }

    public static F k(@Nullable x xVar, Tg.f fVar) {
        return j(xVar, fVar.S(), new C3089c().D(fVar));
    }

    public static F l(@Nullable x xVar, String str) {
        Charset charset = Gg.c.f7807j;
        if (xVar != null) {
            Charset a10 = xVar.a();
            if (a10 == null) {
                xVar = x.d(((Object) xVar) + "; charset=utf-8");
            } else {
                charset = a10;
            }
        }
        C3089c l02 = new C3089c().l0(str, charset);
        return j(xVar, l02.Q(), l02);
    }

    public static F m(@Nullable x xVar, byte[] bArr) {
        return j(xVar, bArr.length, new C3089c().write(bArr));
    }

    public final InputStream c() {
        return n().j2();
    }

    @Override
    public void close() {
        Gg.c.g(n());
    }

    public final byte[] d() throws IOException {
        long g10 = g();
        if (g10 > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + g10);
        }
        Tg.e n10 = n();
        try {
            byte[] z12 = n10.z1();
            Gg.c.g(n10);
            if (g10 == -1 || g10 == z12.length) {
                return z12;
            }
            throw new IOException("Content-Length (" + g10 + ") and stream length (" + z12.length + ") disagree");
        } catch (Throwable th2) {
            Gg.c.g(n10);
            throw th2;
        }
    }

    public final Reader e() {
        Reader reader = this.f99146b;
        if (reader != null) {
            return reader;
        }
        b bVar = new b(n(), f());
        this.f99146b = bVar;
        return bVar;
    }

    public final Charset f() {
        x h10 = h();
        return h10 != null ? h10.b(Gg.c.f7807j) : Gg.c.f7807j;
    }

    public abstract long g();

    @Nullable
    public abstract x h();

    public abstract Tg.e n();

    public final String o() throws IOException {
        Tg.e n10 = n();
        try {
            return n10.A1(Gg.c.c(n10, f()));
        } finally {
            Gg.c.g(n10);
        }
    }
}
