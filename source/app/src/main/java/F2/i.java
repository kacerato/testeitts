package F2;

import com.google.common.collect.AbstractC12549n1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.C12525h1;
import com.google.common.collect.Q1;
import com.google.common.collect.S1;
import com.google.common.collect.U1;
import com.google.common.collect.e3;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
import javax.xml.XMLConstants;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.AbstractC15885e;
import w2.B;
import w2.C;
import w2.C15883c;
import w2.C15889f;
import w2.H;
import w2.InterfaceC15902t;
import w2.y;
import w2.z;

@v2.b
@F2.a
@I2.j
public final class i {

    public static final String f6398g = "charset";

    public static final String f6416m = "audio";

    public static final String f6422o = "text";

    public static final String f6425p = "video";

    public static final String f6431r = "*";

    public final String f6458a;

    public final String f6459b;

    public final C12525h1<String, String> f6460c;

    @CheckForNull
    @J2.b
    public String f6461d;

    @J2.b
    public int f6462e;

    @CheckForNull
    @J2.b
    public C<Charset> f6463f;

    public static final C12525h1<String, String> f6401h = C12525h1.X("charset", C15883c.g(C15889f.f126321c.name()));

    public static final AbstractC15885e f6404i = AbstractC15885e.f().b(AbstractC15885e.v().F()).b(AbstractC15885e.s(C15883c.f126249O)).b(AbstractC15885e.H("()<>@,;:\\\"/[]?="));

    public static final AbstractC15885e f6407j = AbstractC15885e.f().b(AbstractC15885e.H("\"\\\r"));

    public static final AbstractC15885e f6410k = AbstractC15885e.d(" \t\r\n");

    public static final Map<i, i> f6434s = Q1.Y();

    public static final i f6437t = i("*", "*");

    public static final i f6440u = i("text", "*");

    public static final String f6419n = "image";

    public static final i f6443v = i(f6419n, "*");

    public static final i f6446w = i("audio", "*");

    public static final i f6449x = i("video", "*");

    public static final String f6413l = "application";

    public static final i f6452y = i(f6413l, "*");

    public static final String f6428q = "font";

    public static final i f6455z = i(f6428q, "*");

    public static final i f6330A = j("text", "cache-manifest");

    public static final i f6333B = j("text", "css");

    public static final i f6336C = j("text", "csv");

    public static final i f6339D = j("text", "html");

    public static final i f6342E = j("text", "calendar");

    public static final i f6344F = j("text", "plain");

    public static final i f6346G = j("text", "javascript");

    public static final i f6348H = j("text", "tab-separated-values");

    public static final i f6350I = j("text", "vcard");

    public static final i f6352J = j("text", "vnd.wap.wml");

    public static final i f6354K = j("text", XMLConstants.XML_NS_PREFIX);

    public static final i f6356L = j("text", "vtt");

    public static final i f6358M = i(f6419n, "bmp");

    public static final i f6360N = i(f6419n, "x-canon-crw");

    public static final i f6362O = i(f6419n, "gif");

    public static final i f6364P = i(f6419n, "vnd.microsoft.icon");

    public static final i f6366Q = i(f6419n, "jpeg");

    public static final i f6368R = i(f6419n, "png");

    public static final i f6370S = i(f6419n, "vnd.adobe.photoshop");

    public static final i f6372T = j(f6419n, "svg+xml");

    public static final i f6374U = i(f6419n, "tiff");

    public static final i f6376V = i(f6419n, "webp");

    public static final i f6378W = i(f6419n, "heif");

    public static final i f6380X = i(f6419n, "jp2");

    public static final i f6382Y = i("audio", "mp4");

    public static final i f6384Z = i("audio", "mpeg");

    public static final i f6386a0 = i("audio", "ogg");

    public static final i f6388b0 = i("audio", "webm");

    public static final i f6390c0 = i("audio", "l16");

    public static final i f6392d0 = i("audio", "l24");

    public static final i f6394e0 = i("audio", "basic");

    public static final i f6396f0 = i("audio", "aac");

    public static final i f6399g0 = i("audio", "vorbis");

    public static final i f6402h0 = i("audio", "x-ms-wma");

    public static final i f6405i0 = i("audio", "x-ms-wax");

    public static final i f6408j0 = i("audio", "vnd.rn-realaudio");

    public static final i f6411k0 = i("audio", "vnd.wave");

    public static final i f6414l0 = i("video", "mp4");

    public static final i f6417m0 = i("video", "mpeg");

    public static final i f6420n0 = i("video", "ogg");

    public static final i f6423o0 = i("video", "quicktime");

    public static final i f6426p0 = i("video", "webm");

    public static final i f6429q0 = i("video", "x-ms-wmv");

    public static final i f6432r0 = i("video", "x-flv");

    public static final i f6435s0 = i("video", "3gpp");

    public static final i f6438t0 = i("video", "3gpp2");

    public static final i f6441u0 = j(f6413l, XMLConstants.XML_NS_PREFIX);

    public static final i f6444v0 = j(f6413l, "atom+xml");

    public static final i f6447w0 = i(f6413l, "x-bzip2");

    public static final i f6450x0 = j(f6413l, "dart");

    public static final i f6453y0 = i(f6413l, "vnd.apple.pkpass");

    public static final i f6456z0 = i(f6413l, "vnd.ms-fontobject");

    public static final i f6331A0 = i(f6413l, "epub+zip");

    public static final i f6334B0 = i(f6413l, "x-www-form-urlencoded");

    public static final i f6337C0 = i(f6413l, "pkcs12");

    public static final i f6340D0 = i(f6413l, "binary");

    public static final i f6343E0 = i(f6413l, "geo+json");

    public static final i f6345F0 = i(f6413l, "x-gzip");

    public static final i f6347G0 = i(f6413l, "hal+json");

    public static final i f6349H0 = j(f6413l, "javascript");

    public static final i f6351I0 = i(f6413l, "jose");

    public static final i f6353J0 = i(f6413l, "jose+json");

    public static final i f6355K0 = j(f6413l, "json");

    public static final i f6357L0 = j(f6413l, "manifest+json");

    public static final i f6359M0 = i(f6413l, "vnd.google-earth.kml+xml");

    public static final i f6361N0 = i(f6413l, "vnd.google-earth.kmz");

    public static final i f6363O0 = i(f6413l, "mbox");

    public static final i f6365P0 = i(f6413l, "x-apple-aspen-config");

    public static final i f6367Q0 = i(f6413l, "vnd.ms-excel");

    public static final i f6369R0 = i(f6413l, "vnd.ms-outlook");

    public static final i f6371S0 = i(f6413l, "vnd.ms-powerpoint");

    public static final i f6373T0 = i(f6413l, "msword");

    public static final i f6375U0 = i(f6413l, "dash+xml");

    public static final i f6377V0 = i(f6413l, "wasm");

    public static final i f6379W0 = i(f6413l, "x-nacl");

    public static final i f6381X0 = i(f6413l, "x-pnacl");

    public static final i f6383Y0 = i(f6413l, "octet-stream");

    public static final i f6385Z0 = i(f6413l, "ogg");

    public static final i f6387a1 = i(f6413l, "vnd.openxmlformats-officedocument.wordprocessingml.document");

    public static final i f6389b1 = i(f6413l, "vnd.openxmlformats-officedocument.presentationml.presentation");

    public static final i f6391c1 = i(f6413l, "vnd.openxmlformats-officedocument.spreadsheetml.sheet");

    public static final i f6393d1 = i(f6413l, "vnd.oasis.opendocument.graphics");

    public static final i f6395e1 = i(f6413l, "vnd.oasis.opendocument.presentation");

    public static final i f6397f1 = i(f6413l, "vnd.oasis.opendocument.spreadsheet");

    public static final i f6400g1 = i(f6413l, "vnd.oasis.opendocument.text");

    public static final i f6403h1 = j(f6413l, "opensearchdescription+xml");

    public static final i f6406i1 = i(f6413l, "pdf");

    public static final i f6409j1 = i(f6413l, "postscript");

    public static final i f6412k1 = i(f6413l, "protobuf");

    public static final i f6415l1 = j(f6413l, "rdf+xml");

    public static final i f6418m1 = j(f6413l, "rtf");

    public static final i f6421n1 = i(f6413l, "font-sfnt");

    public static final i f6424o1 = i(f6413l, "x-shockwave-flash");

    public static final i f6427p1 = i(f6413l, "vnd.sketchup.skp");

    public static final i f6430q1 = j(f6413l, "soap+xml");

    public static final i f6433r1 = i(f6413l, "x-tar");

    public static final i f6436s1 = i(f6413l, "font-woff");

    public static final i f6439t1 = i(f6413l, "font-woff2");

    public static final i f6442u1 = j(f6413l, "xhtml+xml");

    public static final i f6445v1 = j(f6413l, "xrd+xml");

    public static final i f6448w1 = i(f6413l, "zip");

    public static final i f6451x1 = i(f6428q, "collection");

    public static final i f6454y1 = i(f6428q, "otf");

    public static final i f6457z1 = i(f6428q, "sfnt");

    public static final i f6332A1 = i(f6428q, "ttf");

    public static final i f6335B1 = i(f6428q, "woff");

    public static final i f6338C1 = i(f6428q, "woff2");

    public static final y.d f6341D1 = y.p(VectorFormat.DEFAULT_SEPARATOR).u("=");

    public static final class a {

        public final String f6464a;

        public int f6465b = 0;

        public a(String str) {
            this.f6464a = str;
        }

        @I2.a
        public char a(char c10) {
            H.g0(e());
            H.g0(f() == c10);
            this.f6465b++;
            return c10;
        }

        public char b(AbstractC15885e abstractC15885e) {
            H.g0(e());
            char f10 = f();
            H.g0(abstractC15885e.B(f10));
            this.f6465b++;
            return f10;
        }

        public String c(AbstractC15885e abstractC15885e) {
            int i10 = this.f6465b;
            String d10 = d(abstractC15885e);
            H.g0(this.f6465b != i10);
            return d10;
        }

        @I2.a
        public String d(AbstractC15885e abstractC15885e) {
            H.g0(e());
            int i10 = this.f6465b;
            this.f6465b = abstractC15885e.F().o(this.f6464a, i10);
            return e() ? this.f6464a.substring(i10, this.f6465b) : this.f6464a.substring(i10);
        }

        public boolean e() {
            int i10 = this.f6465b;
            return i10 >= 0 && i10 < this.f6464a.length();
        }

        public char f() {
            H.g0(e());
            return this.f6464a.charAt(this.f6465b);
        }
    }

    public i(String str, String str2, C12525h1<String, String> c12525h1) {
        this.f6458a = str;
        this.f6459b = str2;
        this.f6460c = c12525h1;
    }

    public static i b(i iVar) {
        f6434s.put(iVar, iVar);
        return iVar;
    }

    public static i e(String str, String str2) {
        i f10 = f(str, str2, C12525h1.W());
        f10.f6463f = C.a();
        return f10;
    }

    public static i f(String str, String str2, S1<String, String> s12) {
        H.E(str);
        H.E(str2);
        H.E(s12);
        String t10 = t(str);
        String t11 = t(str2);
        H.e(!"*".equals(t10) || "*".equals(t11), "A wildcard type cannot be used with a non-wildcard subtype");
        C12525h1.a P10 = C12525h1.P();
        for (Map.Entry<String, String> entry : s12.v()) {
            String t12 = t(entry.getKey());
            P10.f(t12, s(t12, entry.getValue()));
        }
        i iVar = new i(t10, t11, P10.a());
        return (i) z.a(f6434s.get(iVar), iVar);
    }

    public static i g(String str) {
        return e(f6413l, str);
    }

    public static i h(String str) {
        return e("audio", str);
    }

    public static i i(String str, String str2) {
        i b10 = b(new i(str, str2, C12525h1.W()));
        b10.f6463f = C.a();
        return b10;
    }

    public static i j(String str, String str2) {
        i b10 = b(new i(str, str2, f6401h));
        b10.f6463f = C.f(C15889f.f126321c);
        return b10;
    }

    public static i k(String str) {
        return e(f6428q, str);
    }

    public static i l(String str) {
        return e(f6419n, str);
    }

    public static i m(String str) {
        return e("text", str);
    }

    public static i n(String str) {
        return e("video", str);
    }

    public static String o(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() + 16);
        sb2.append('\"');
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\r' || charAt == '\\' || charAt == '\"') {
                sb2.append(JavaElement.JEM_ESCAPE);
            }
            sb2.append(charAt);
        }
        sb2.append('\"');
        return sb2.toString();
    }

    public static String r(String str) {
        return (!f6404i.C(str) || str.isEmpty()) ? o(str) : str;
    }

    public static String s(String str, String str2) {
        H.E(str2);
        H.u(AbstractC15885e.f().C(str2), "parameter values must be ASCII: %s", str2);
        return "charset".equals(str) ? C15883c.g(str2) : str2;
    }

    public static String t(String str) {
        H.d(f6404i.C(str));
        H.d(!str.isEmpty());
        return C15883c.g(str);
    }

    @I2.a
    public static i w(String str) {
        String c10;
        H.E(str);
        a aVar = new a(str);
        try {
            AbstractC15885e abstractC15885e = f6404i;
            String c11 = aVar.c(abstractC15885e);
            aVar.a('/');
            String c12 = aVar.c(abstractC15885e);
            C12525h1.a P10 = C12525h1.P();
            while (aVar.e()) {
                AbstractC15885e abstractC15885e2 = f6410k;
                aVar.d(abstractC15885e2);
                aVar.a(';');
                aVar.d(abstractC15885e2);
                AbstractC15885e abstractC15885e3 = f6404i;
                String c13 = aVar.c(abstractC15885e3);
                aVar.a('=');
                if ('\"' == aVar.f()) {
                    aVar.a('\"');
                    StringBuilder sb2 = new StringBuilder();
                    while ('\"' != aVar.f()) {
                        if ('\\' == aVar.f()) {
                            aVar.a(JavaElement.JEM_ESCAPE);
                            sb2.append(aVar.b(AbstractC15885e.f()));
                        } else {
                            sb2.append(aVar.c(f6407j));
                        }
                    }
                    c10 = sb2.toString();
                    aVar.a('\"');
                } else {
                    c10 = aVar.c(abstractC15885e3);
                }
                P10.f(c13, c10);
            }
            return f(c11, c12, P10.a());
        } catch (IllegalStateException e10) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 18);
            sb3.append("Could not parse '");
            sb3.append(str);
            sb3.append("'");
            throw new IllegalArgumentException(sb3.toString(), e10);
        }
    }

    public i A(String str, String str2) {
        return C(str, AbstractC12564r1.A(str2));
    }

    public i B(S1<String, String> s12) {
        return f(this.f6458a, this.f6459b, s12);
    }

    public i C(String str, Iterable<String> iterable) {
        H.E(str);
        H.E(iterable);
        String t10 = t(str);
        C12525h1.a P10 = C12525h1.P();
        e3<Map.Entry<String, String>> it = this.f6460c.v().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            if (!t10.equals(key)) {
                P10.f(key, next.getValue());
            }
        }
        Iterator<String> it2 = iterable.iterator();
        while (it2.hasNext()) {
            P10.f(t10, s(t10, it2.next()));
        }
        i iVar = new i(this.f6458a, this.f6459b, P10.a());
        if (!t10.equals("charset")) {
            iVar.f6463f = this.f6463f;
        }
        return (i) z.a(f6434s.get(iVar), iVar);
    }

    public i D() {
        return this.f6460c.isEmpty() ? this : e(this.f6458a, this.f6459b);
    }

    public C<Charset> c() {
        C<Charset> c10 = this.f6463f;
        if (c10 == null) {
            c10 = C.a();
            e3<String> it = this.f6460c.get("charset").iterator();
            String str = null;
            while (it.hasNext()) {
                String next = it.next();
                if (str == null) {
                    c10 = C.f(Charset.forName(next));
                    str = next;
                } else if (!str.equals(next)) {
                    StringBuilder sb2 = new StringBuilder(str.length() + 35 + String.valueOf(next).length());
                    sb2.append("Multiple charset values defined: ");
                    sb2.append(str);
                    sb2.append(", ");
                    sb2.append(next);
                    throw new IllegalStateException(sb2.toString());
                }
            }
            this.f6463f = c10;
        }
        return c10;
    }

    public final String d() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f6458a);
        sb2.append('/');
        sb2.append(this.f6459b);
        if (!this.f6460c.isEmpty()) {
            sb2.append(VectorFormat.DEFAULT_SEPARATOR);
            f6341D1.d(sb2, U1.E(this.f6460c, new InterfaceC15902t() {
                @Override
                public final Object apply(Object obj) {
                    String r10;
                    r10 = i.r((String) obj);
                    return r10;
                }
            }).v());
        }
        return sb2.toString();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f6458a.equals(iVar.f6458a) && this.f6459b.equals(iVar.f6459b) && v().equals(iVar.v());
    }

    public int hashCode() {
        int i10 = this.f6462e;
        if (i10 != 0) {
            return i10;
        }
        int b10 = B.b(this.f6458a, this.f6459b, v());
        this.f6462e = b10;
        return b10;
    }

    public boolean p() {
        return "*".equals(this.f6458a) || "*".equals(this.f6459b);
    }

    public boolean q(i iVar) {
        return (iVar.f6458a.equals("*") || iVar.f6458a.equals(this.f6458a)) && (iVar.f6459b.equals("*") || iVar.f6459b.equals(this.f6459b)) && this.f6460c.v().containsAll(iVar.f6460c.v());
    }

    public String toString() {
        String str = this.f6461d;
        if (str != null) {
            return str;
        }
        String d10 = d();
        this.f6461d = d10;
        return d10;
    }

    public C12525h1<String, String> u() {
        return this.f6460c;
    }

    public final Map<String, AbstractC12549n1<String>> v() {
        return Q1.B0(this.f6460c.k(), new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC12549n1.n((Collection) obj);
            }
        });
    }

    public String x() {
        return this.f6459b;
    }

    public String y() {
        return this.f6458a;
    }

    public i z(Charset charset) {
        H.E(charset);
        i A10 = A("charset", charset.name());
        A10.f6463f = C.f(charset);
        return A10;
    }
}
