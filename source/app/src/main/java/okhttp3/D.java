package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public abstract class D {

    public class a extends D {

        public final x f99113a;

        public final Tg.f f99114b;

        public a(x xVar, Tg.f fVar) {
            this.f99113a = xVar;
            this.f99114b = fVar;
        }

        @Override
        public long a() throws IOException {
            return this.f99114b.S();
        }

        @Override
        @Nullable
        public x b() {
            return this.f99113a;
        }

        @Override
        public void h(Tg.d dVar) throws IOException {
            dVar.D(this.f99114b);
        }
    }

    public class b extends D {

        public final x f99115a;

        public final int f99116b;

        public final byte[] f99117c;

        public final int f99118d;

        public b(x xVar, int i10, byte[] bArr, int i11) {
            this.f99115a = xVar;
            this.f99116b = i10;
            this.f99117c = bArr;
            this.f99118d = i11;
        }

        @Override
        public long a() {
            return this.f99116b;
        }

        @Override
        @Nullable
        public x b() {
            return this.f99115a;
        }

        @Override
        public void h(Tg.d dVar) throws IOException {
            dVar.write(this.f99117c, this.f99118d, this.f99116b);
        }
    }

    public class c extends D {

        public final x f99119a;

        public final File f99120b;

        public c(x xVar, File file) {
            this.f99119a = xVar;
            this.f99120b = file;
        }

        @Override
        public long a() {
            return this.f99120b.length();
        }

        @Override
        @Nullable
        public x b() {
            return this.f99119a;
        }

        @Override
        public void h(Tg.d dVar) throws IOException {
            Tg.y yVar = null;
            try {
                yVar = Tg.p.k(this.f99120b);
                dVar.H(yVar);
            } finally {
                Gg.c.g(yVar);
            }
        }
    }

    public static D c(@Nullable x xVar, Tg.f fVar) {
        return new a(xVar, fVar);
    }

    public static D d(@Nullable x xVar, File file) {
        if (file != null) {
            return new c(xVar, file);
        }
        throw new NullPointerException("file == null");
    }

    public static D e(@Nullable x xVar, String str) {
        Charset charset = Gg.c.f7807j;
        if (xVar != null) {
            Charset a10 = xVar.a();
            if (a10 == null) {
                xVar = x.d(((Object) xVar) + "; charset=utf-8");
            } else {
                charset = a10;
            }
        }
        return f(xVar, str.getBytes(charset));
    }

    public static D f(@Nullable x xVar, byte[] bArr) {
        return g(xVar, bArr, 0, bArr.length);
    }

    public static D g(@Nullable x xVar, byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        Gg.c.f(bArr.length, i10, i11);
        return new b(xVar, i11, bArr, i10);
    }

    public long a() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract x b();

    public abstract void h(Tg.d dVar) throws IOException;
}
