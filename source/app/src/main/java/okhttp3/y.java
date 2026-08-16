package okhttp3;

import Tg.C3089c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class y extends D {

    public static final x f99484f = x.c("multipart/mixed");

    public static final x f99485g = x.c("multipart/alternative");

    public static final x f99486h = x.c("multipart/digest");

    public static final x f99487i = x.c("multipart/parallel");

    public static final x f99488j = x.c("multipart/form-data");

    public static final byte[] f99489k = {Opcodes.OPC_astore, 32};

    public static final byte[] f99490l = {13, 10};

    public static final byte[] f99491m = {Opcodes.OPC_aload_3, Opcodes.OPC_aload_3};

    public final Tg.f f99492a;

    public final x f99493b;

    public final x f99494c;

    public final List<b> f99495d;

    public long f99496e = -1;

    public static final class a {

        public final Tg.f f99497a;

        public x f99498b;

        public final List<b> f99499c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a a(String str, String str2) {
            return d(b.d(str, str2));
        }

        public a b(String str, @Nullable String str2, D d10) {
            return d(b.e(str, str2, d10));
        }

        public a c(@Nullable u uVar, D d10) {
            return d(b.b(uVar, d10));
        }

        public a d(b bVar) {
            if (bVar == null) {
                throw new NullPointerException("part == null");
            }
            this.f99499c.add(bVar);
            return this;
        }

        public a e(D d10) {
            return d(b.c(d10));
        }

        public y f() {
            if (this.f99499c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new y(this.f99497a, this.f99498b, this.f99499c);
        }

        public a g(x xVar) {
            if (xVar == null) {
                throw new NullPointerException("type == null");
            }
            if (xVar.f().equals("multipart")) {
                this.f99498b = xVar;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + ((Object) xVar));
        }

        public a(String str) {
            this.f99498b = y.f99484f;
            this.f99499c = new ArrayList();
            this.f99497a = Tg.f.m(str);
        }
    }

    public static final class b {

        @Nullable
        public final u f99500a;

        public final D f99501b;

        public b(@Nullable u uVar, D d10) {
            this.f99500a = uVar;
            this.f99501b = d10;
        }

        public static b b(@Nullable u uVar, D d10) {
            if (d10 == null) {
                throw new NullPointerException("body == null");
            }
            if (uVar != null && uVar.d("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (uVar == null || uVar.d("Content-Length") == null) {
                return new b(uVar, d10);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static b c(D d10) {
            return b(null, d10);
        }

        public static b d(String str, String str2) {
            return e(str, null, D.e(null, str2));
        }

        public static b e(String str, @Nullable String str2, D d10) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            StringBuilder sb2 = new StringBuilder("form-data; name=");
            y.i(sb2, str);
            if (str2 != null) {
                sb2.append("; filename=");
                y.i(sb2, str2);
            }
            return b(u.k(F2.d.f6218a0, sb2.toString()), d10);
        }

        public D a() {
            return this.f99501b;
        }

        @Nullable
        public u f() {
            return this.f99500a;
        }
    }

    public y(Tg.f fVar, x xVar, List<b> list) {
        this.f99492a = fVar;
        this.f99493b = xVar;
        this.f99494c = x.c(((Object) xVar) + "; boundary=" + fVar.b0());
        this.f99495d = Gg.c.u(list);
    }

    public static StringBuilder i(StringBuilder sb2, String str) {
        sb2.append('\"');
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\n') {
                sb2.append("%0A");
            } else if (charAt == '\r') {
                sb2.append("%0D");
            } else if (charAt != '\"') {
                sb2.append(charAt);
            } else {
                sb2.append("%22");
            }
        }
        sb2.append('\"');
        return sb2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long o(@Nullable Tg.d dVar, boolean z10) throws IOException {
        C3089c c3089c;
        if (z10) {
            dVar = new C3089c();
            c3089c = dVar;
        } else {
            c3089c = 0;
        }
        int size = this.f99495d.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f99495d.get(i10);
            u uVar = bVar.f99500a;
            D d10 = bVar.f99501b;
            dVar.write(f99491m);
            dVar.D(this.f99492a);
            dVar.write(f99490l);
            if (uVar != null) {
                int l10 = uVar.l();
                for (int i11 = 0; i11 < l10; i11++) {
                    dVar.X(uVar.g(i11)).write(f99489k).X(uVar.n(i11)).write(f99490l);
                }
            }
            x b10 = d10.b();
            if (b10 != null) {
                dVar.X("Content-Type: ").X(b10.toString()).write(f99490l);
            }
            long a10 = d10.a();
            if (a10 != -1) {
                dVar.X("Content-Length: ").J(a10).write(f99490l);
            } else if (z10) {
                c3089c.c();
                return -1L;
            }
            byte[] bArr = f99490l;
            dVar.write(bArr);
            if (z10) {
                j10 += a10;
            } else {
                d10.h(dVar);
            }
            dVar.write(bArr);
        }
        byte[] bArr2 = f99491m;
        dVar.write(bArr2);
        dVar.D(this.f99492a);
        dVar.write(bArr2);
        dVar.write(f99490l);
        if (!z10) {
            return j10;
        }
        long Q10 = j10 + c3089c.Q();
        c3089c.c();
        return Q10;
    }

    @Override
    public long a() throws IOException {
        long j10 = this.f99496e;
        if (j10 != -1) {
            return j10;
        }
        long o10 = o(null, true);
        this.f99496e = o10;
        return o10;
    }

    @Override
    public x b() {
        return this.f99494c;
    }

    @Override
    public void h(Tg.d dVar) throws IOException {
        o(dVar, false);
    }

    public String j() {
        return this.f99492a.b0();
    }

    public b k(int i10) {
        return this.f99495d.get(i10);
    }

    public List<b> l() {
        return this.f99495d;
    }

    public int m() {
        return this.f99495d.size();
    }

    public x n() {
        return this.f99493b;
    }
}
