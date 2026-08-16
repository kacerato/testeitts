package ij;

import Qk.InterfaceC3013f;
import com.tonyodev.fetch2core.FetchCoreUtils;
import em.C13168c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import li.C14145g;
import li.C14146h;
import oh.E;
import oh.F0;
import org.bouncycastle.cmc.CMCException;
import org.bouncycastle.est.ESTException;
import tk.C15464a;
import tk.C15467d;
import tk.C15468e;
import tk.InterfaceC15470g;
import uh.C15624o;
import zi.C16315a;

public class n {

    public static final String f92352c = "/cacerts";

    public static final String f92353d = "/simpleenroll";

    public static final String f92354e = "/simplereenroll";

    public static final String f92355f = "/fullcmc";

    public static final String f92356g = "/serverkeygen";

    public static final String f92357h = "/csrattrs";

    public static final Set<String> f92358i;

    public static final Pattern f92359j;

    public final String f92360a;

    public final h f92361b;

    public class a implements p {

        public final Sk.f f92362a;

        public final InterfaceC3013f f92363b;

        public a(Sk.f fVar, InterfaceC3013f interfaceC3013f) {
            this.f92362a = fVar;
            this.f92363b = interfaceC3013f;
        }

        @Override
        public k a(u uVar, k kVar) throws IOException {
            if (uVar instanceof v) {
                v vVar = (v) uVar;
                if (vVar.c()) {
                    Sk.f fVar = new Sk.f(this.f92362a);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    fVar.e(Xh.t.f29074Y1, new F0(C13168c.i(vVar.b())));
                    byteArrayOutputStream.write(n.this.b(fVar.c(this.f92363b).c()).getBytes());
                    byteArrayOutputStream.flush();
                    l f10 = new l(kVar).f(byteArrayOutputStream.toByteArray());
                    f10.c("Content-Type", "application/pkcs10");
                    f10.c("Content-Transfer-Encoding", "base64");
                    f10.c("Content-Length", Long.toString(byteArrayOutputStream.size()));
                    return f10.b();
                }
            }
            throw new IOException("Source does not supply TLS unique.");
        }
    }

    public class b implements tk.k {

        public final Object[] f92365a;

        public b(Object[] objArr) {
            this.f92365a = objArr;
        }

        @Override
        public void a(tk.j jVar, C15468e c15468e, InputStream inputStream) throws IOException {
            if (c15468e.h().contains("application/pkcs8")) {
                oh.r rVar = new oh.r(inputStream);
                this.f92365a[0] = Xh.v.v(rVar.k());
                if (rVar.k() != null) {
                    throw new ESTException("Unexpected ASN1 object after private key info");
                }
                return;
            }
            if (c15468e.h().contains("application/pkcs7-mime")) {
                oh.r rVar2 = new oh.r(inputStream);
                try {
                    this.f92365a[1] = new C16315a(C15624o.w(rVar2.k()));
                    if (rVar2.k() != null) {
                        throw new ESTException("Unexpected ASN1 object after reading certificates");
                    }
                } catch (CMCException e10) {
                    throw new IOException(e10.getMessage());
                }
            }
        }

        @Override
        public InterfaceC15470g b(tk.j jVar, C15468e c15468e) {
            return C15467d.f117713a;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f92358i = hashSet;
        hashSet.add("cacerts");
        hashSet.add("simpleenroll");
        hashSet.add("simplereenroll");
        hashSet.add("fullcmc");
        hashSet.add("serverkeygen");
        hashSet.add("csrattrs");
        f92359j = Pattern.compile("^[0-9a-zA-Z_\\-.~!$&'()*+,;:=]+");
    }

    public n(String str, String str2, h hVar) {
        String str3;
        String q10 = q(str);
        if (str2 != null) {
            str3 = "https://" + q10 + "/.well-known/est/" + p(str2);
        } else {
            str3 = "https://" + q10 + "/.well-known/est";
        }
        this.f92360a = str3;
        this.f92361b = hVar;
    }

    public static C14146h[] n(org.bouncycastle.util.t<C14146h> tVar) {
        return o(tVar, null);
    }

    public static C14146h[] o(org.bouncycastle.util.t<C14146h> tVar, org.bouncycastle.util.r<C14146h> rVar) {
        Collection<C14146h> a10 = tVar.a(rVar);
        return (C14146h[]) a10.toArray(new C14146h[a10.size()]);
    }

    public final String b(byte[] bArr) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        int i10 = 0;
        do {
            int i11 = i10 + 48;
            if (i11 < bArr.length) {
                printWriter.print(C13168c.j(bArr, i10, 48));
                i10 = i11;
            } else {
                printWriter.print(C13168c.j(bArr, i10, bArr.length - i10));
                i10 = bArr.length;
            }
            printWriter.print('\n');
        } while (i10 < bArr.length);
        printWriter.flush();
        return stringWriter.toString();
    }

    public q c(boolean z10, Sk.e eVar, InterfaceC13751f interfaceC13751f, boolean z11) throws IOException {
        if (!this.f92361b.a()) {
            throw new IllegalStateException("No trust anchors.");
        }
        m mVar = null;
        try {
            byte[] bytes = b(eVar.c()).getBytes();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f92360a);
            sb2.append(z11 ? f92356g : z10 ? f92354e : f92353d);
            URL url = new URL(sb2.toString());
            InterfaceC13752g b10 = this.f92361b.b();
            l d10 = new l("POST", url).f(bytes).d(b10);
            d10.a("Content-Type", "application/pkcs10");
            d10.a("Content-Length", "" + bytes.length);
            d10.a("Content-Transfer-Encoding", "base64");
            if (interfaceC13751f != null) {
                interfaceC13751f.a(d10);
            }
            mVar = b10.a(d10.b());
            q h10 = h(mVar);
            if (mVar != null) {
                mVar.d();
            }
            return h10;
        } catch (Throwable th2) {
            try {
                if (th2 instanceof ESTException) {
                    throw th2;
                }
                throw new ESTException(th2.getMessage(), th2);
            } catch (Throwable th3) {
                if (mVar != null) {
                    mVar.d();
                }
                throw th3;
            }
        }
    }

    public q d(boolean z10, Sk.f fVar, InterfaceC3013f interfaceC3013f, InterfaceC13751f interfaceC13751f, boolean z11) throws IOException {
        if (!this.f92361b.a()) {
            throw new IllegalStateException("No trust anchors.");
        }
        m mVar = null;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f92360a);
            sb2.append(z10 ? f92354e : f92353d);
            URL url = new URL(sb2.toString());
            InterfaceC13752g b10 = this.f92361b.b();
            l e10 = new l("POST", url).d(b10).e(new a(fVar, interfaceC3013f));
            if (interfaceC13751f != null) {
                interfaceC13751f.a(e10);
            }
            mVar = b10.a(e10.b());
            q h10 = h(mVar);
            if (mVar != null) {
                mVar.d();
            }
            return h10;
        } catch (Throwable th2) {
            try {
                if (th2 instanceof ESTException) {
                    throw th2;
                }
                throw new ESTException(th2.getMessage(), th2);
            } catch (Throwable th3) {
                if (mVar != null) {
                    mVar.d();
                }
                throw th3;
            }
        }
    }

    public final oh.r e(InputStream inputStream, Long l10) {
        if (l10 != null && l10.intValue() == l10.longValue()) {
            return new oh.r(inputStream, l10.intValue());
        }
        return new oh.r(inputStream);
    }

    public C13746a f() throws ESTException {
        m mVar;
        ESTException th2;
        URL url;
        k b10;
        org.bouncycastle.util.t<C14146h> tVar;
        org.bouncycastle.util.t<C14145g> tVar2;
        String str;
        try {
            url = new URL(this.f92360a + f92352c);
            InterfaceC13752g b11 = this.f92361b.b();
            b10 = new l(FetchCoreUtils.GET_REQUEST_METHOD, url).d(b11).b();
            mVar = b11.a(b10);
        } catch (Throwable th3) {
            mVar = null;
            th2 = th3;
        }
        try {
            if (mVar.n() == 200) {
                String e10 = mVar.i().e("Content-Type");
                if (e10 == null || !e10.startsWith("application/pkcs7-mime")) {
                    if (e10 != null) {
                        str = " got " + e10;
                    } else {
                        str = " but was not present.";
                    }
                    throw new ESTException("Response : " + url.toString() + "Expecting application/pkcs7-mime " + str, null, mVar.n(), mVar.k());
                }
                try {
                    C16315a c16315a = new C16315a(C15624o.w(e(mVar.k(), mVar.f()).k()));
                    tVar = c16315a.b();
                    tVar2 = c16315a.a();
                } catch (Throwable th4) {
                    throw new ESTException("Decoding CACerts: " + url.toString() + " " + th4.getMessage(), th4, mVar.n(), mVar.k());
                }
            } else {
                if (mVar.n() != 204) {
                    throw new ESTException("Get CACerts: " + url.toString(), null, mVar.n(), mVar.k());
                }
                tVar = null;
                tVar2 = null;
            }
            C13746a c13746a = new C13746a(tVar, tVar2, b10, mVar.m(), this.f92361b.a());
            try {
                mVar.d();
                e = null;
            } catch (Exception e11) {
                e = e11;
            }
            if (e == null) {
                return c13746a;
            }
            if (e instanceof ESTException) {
                throw ((ESTException) e);
            }
            throw new ESTException("Get CACerts: " + url.toString(), e, mVar.n(), null);
        } catch (Throwable th5) {
            th2 = th5;
            try {
                if (th2 instanceof ESTException) {
                    throw th2;
                }
                throw new ESTException(th2.getMessage(), th2);
            } catch (Throwable th6) {
                if (mVar != null) {
                    try {
                        mVar.d();
                    } catch (Exception unused) {
                    }
                }
                throw th6;
            }
        }
    }

    public C13748c g() throws ESTException {
        m mVar;
        ESTException th2;
        C13747b c13747b;
        if (!this.f92361b.a()) {
            throw new IllegalStateException("No trust anchors.");
        }
        try {
            URL url = new URL(this.f92360a + f92357h);
            InterfaceC13752g b10 = this.f92361b.b();
            k b11 = new l(FetchCoreUtils.GET_REQUEST_METHOD, url).d(b10).b();
            mVar = b10.a(b11);
            try {
                int n10 = mVar.n();
                if (n10 == 200) {
                    try {
                        c13747b = new C13747b(Eh.b.v(E.G(e(mVar.k(), mVar.f()).k())));
                    } catch (Throwable th3) {
                        throw new ESTException("Decoding CACerts: " + url.toString() + " " + th3.getMessage(), th3, mVar.n(), mVar.k());
                    }
                } else {
                    if (n10 != 204 && n10 != 404) {
                        throw new ESTException("CSR Attribute request: " + b11.f().toString(), null, mVar.n(), mVar.k());
                    }
                    c13747b = null;
                }
                try {
                    mVar.d();
                    e = null;
                } catch (Exception e10) {
                    e = e10;
                }
                if (e == null) {
                    return new C13748c(c13747b, mVar.m());
                }
                if (e instanceof ESTException) {
                    throw ((ESTException) e);
                }
                throw new ESTException(e.getMessage(), e, mVar.n(), null);
            } catch (Throwable th4) {
                th2 = th4;
                try {
                    if (th2 instanceof ESTException) {
                        throw th2;
                    }
                    throw new ESTException(th2.getMessage(), th2);
                } catch (Throwable th5) {
                    if (mVar != null) {
                        try {
                            mVar.d();
                        } catch (Exception unused) {
                        }
                    }
                    throw th5;
                }
            }
        } catch (Throwable th6) {
            mVar = null;
            th2 = th6;
        }
    }

    public q h(m mVar) throws IOException {
        Object obj;
        long time;
        k l10 = mVar.l();
        if (mVar.n() != 202) {
            if (mVar.n() == 200 && mVar.h("content-type").contains("multipart/mixed")) {
                Object[] objArr = new Object[2];
                new C15464a(new C15468e(mVar.h("content-type"), "base64"), mVar.k()).a(new b(objArr));
                if (objArr[0] == null || (obj = objArr[1]) == null) {
                    throw new ESTException("received neither private key info and certificates");
                }
                return new q(((C16315a) obj).b(), -1L, null, mVar.m(), Xh.v.v(objArr[0]));
            }
            if (mVar.n() == 200) {
                try {
                    return new q(new C16315a(C15624o.w(new oh.r(mVar.k()).k())).b(), -1L, null, mVar.m());
                } catch (CMCException e10) {
                    throw new ESTException(e10.getMessage(), e10.getCause());
                }
            }
            throw new ESTException("Simple Enroll: " + l10.f().toString(), null, mVar.n(), mVar.k());
        }
        String g10 = mVar.g(F2.d.f6145A0);
        if (g10 == null) {
            throw new ESTException("Got Status 202 but not Retry-After header from: " + l10.f().toString());
        }
        try {
            try {
                time = System.currentTimeMillis() + (Long.parseLong(g10) * 1000);
            } catch (Exception e11) {
                throw new ESTException("Unable to parse Retry-After header:" + l10.f().toString() + " " + e11.getMessage(), null, mVar.n(), mVar.k());
            }
        } catch (NumberFormatException unused) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            time = simpleDateFormat.parse(g10).getTime();
        }
        return new q(null, time, l10, mVar.m());
    }

    public q i(q qVar) throws Exception {
        if (!this.f92361b.a()) {
            throw new IllegalStateException("No trust anchors.");
        }
        m mVar = null;
        try {
            InterfaceC13752g b10 = this.f92361b.b();
            mVar = b10.a(new l(qVar.d()).d(b10).b());
            q h10 = h(mVar);
            if (mVar != null) {
                mVar.d();
            }
            return h10;
        } catch (Throwable th2) {
            try {
                if (th2 instanceof ESTException) {
                    throw th2;
                }
                throw new ESTException(th2.getMessage(), th2);
            } catch (Throwable th3) {
                if (mVar != null) {
                    mVar.d();
                }
                throw th3;
            }
        }
    }

    public q j(boolean z10, Sk.e eVar, InterfaceC13751f interfaceC13751f) throws IOException {
        return c(z10, eVar, interfaceC13751f, false);
    }

    public q k(boolean z10, Sk.f fVar, InterfaceC3013f interfaceC3013f, InterfaceC13751f interfaceC13751f) throws IOException {
        return d(z10, fVar, interfaceC3013f, interfaceC13751f, false);
    }

    public q l(Sk.f fVar, InterfaceC3013f interfaceC3013f, InterfaceC13751f interfaceC13751f) throws IOException {
        return d(false, fVar, interfaceC3013f, interfaceC13751f, true);
    }

    public q m(Sk.e eVar, InterfaceC13751f interfaceC13751f) throws IOException {
        return c(false, eVar, interfaceC13751f, true);
    }

    public final String p(String str) {
        while (str.endsWith("/") && str.length() > 0) {
            str = str.substring(0, str.length() - 1);
        }
        while (str.startsWith("/") && str.length() > 0) {
            str = str.substring(1);
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Label set but after trimming '/' is not zero length string.");
        }
        if (!f92359j.matcher(str).matches()) {
            throw new IllegalArgumentException("Server path " + str + " contains invalid characters");
        }
        if (!f92358i.contains(str)) {
            return str;
        }
        throw new IllegalArgumentException("Label " + str + " is a reserved path segment.");
    }

    public final String q(String str) {
        while (str.endsWith("/") && str.length() > 0) {
            try {
                str = str.substring(0, str.length() - 1);
            } catch (Exception e10) {
                if (e10 instanceof IllegalArgumentException) {
                    throw ((IllegalArgumentException) e10);
                }
                throw new IllegalArgumentException("Scheme and host is invalid: " + e10.getMessage(), e10);
            }
        }
        if (str.contains("://")) {
            throw new IllegalArgumentException("Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily.");
        }
        URL url = new URL("https://" + str);
        if (url.getPath().length() != 0 && !url.getPath().equals("/")) {
            throw new IllegalArgumentException("Server contains path, must only be <dnsname/ipaddress>:port, a path of '/.well-known/est/<label>' will be added arbitrarily.");
        }
        return str;
    }
}
