package tk;

import java.io.IOException;
import java.io.InputStream;
import uk.C15639a;
import uk.C15641c;

public class C15464a implements i {

    public final InputStream f117697a;

    public final j f117698b;

    public final String f117699c;

    public C15468e f117700d;

    public boolean f117701e;

    public final String f117702f;

    public C15464a(InputStream inputStream) throws IOException {
        this(null, new C15468e(inputStream, "7bit"), inputStream);
    }

    @Override
    public void a(k kVar) throws IOException {
        InterfaceC15470g b10 = kVar.b(this.f117698b, this.f117700d);
        if (!this.f117701e) {
            InputStream b11 = b10.b(this.f117700d, this.f117697a);
            j jVar = this.f117698b;
            C15468e c15468e = this.f117700d;
            kVar.a(jVar, c15468e, c(c15468e, b11));
            return;
        }
        h hVar = (h) b10;
        String str = "--" + this.f117702f;
        C15469f c15469f = new C15469f(this.f117697a);
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            String a10 = c15469f.a();
            if (a10 == null || "--".equals(a10)) {
                return;
            }
            if (z10) {
                C15465b c15465b = new C15465b(this.f117697a, this.f117702f);
                C15468e c15468e2 = new C15468e(c15465b, this.f117699c);
                int i11 = i10 + 1;
                InputStream b12 = hVar.a(i10).b(c15468e2, c15465b);
                kVar.a(this.f117698b, c15468e2, c(c15468e2, b12));
                if (b12.read() >= 0) {
                    throw new IOException("MIME object not fully processed");
                }
                i10 = i11;
            } else if (str.equals(a10)) {
                C15465b c15465b2 = new C15465b(this.f117697a, this.f117702f);
                C15468e c15468e3 = new C15468e(c15465b2, this.f117699c);
                int i12 = i10 + 1;
                InputStream b13 = hVar.a(i10).b(c15468e3, c15465b2);
                kVar.a(this.f117698b, c15468e3, c(c15468e3, b13));
                if (b13.read() >= 0) {
                    throw new IOException("MIME object not fully processed");
                }
                z10 = true;
                i10 = i12;
            } else {
                continue;
            }
        }
    }

    public boolean b() {
        return this.f117701e;
    }

    public final InputStream c(C15468e c15468e, InputStream inputStream) {
        return c15468e.g().equals("base64") ? new C15639a(inputStream) : c15468e.g().equals("quoted-printable") ? new C15641c(inputStream) : inputStream;
    }

    public C15464a(C15468e c15468e, InputStream inputStream) {
        this(null, c15468e, inputStream);
    }

    public C15464a(j jVar, InputStream inputStream) throws IOException {
        this(jVar, new C15468e(inputStream, jVar.a()), inputStream);
    }

    public C15464a(j jVar, C15468e c15468e, InputStream inputStream) {
        String str;
        this.f117701e = false;
        if (c15468e.l()) {
            this.f117701e = true;
            str = c15468e.d();
        } else {
            str = null;
        }
        this.f117702f = str;
        this.f117700d = c15468e;
        this.f117698b = jVar;
        this.f117697a = inputStream;
        this.f117699c = jVar != null ? jVar.a() : "7bit";
    }
}
