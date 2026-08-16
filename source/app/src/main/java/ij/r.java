package ij;

import Qk.C3017j;
import android.app.DownloadManager;
import android.security.keystore.KeyProperties;
import android.view.View;
import em.C13168c;
import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.cms.InterfaceC14626d;
import org.bouncycastle.est.ESTException;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

public class r implements InterfaceC13751f {

    public static final Qk.o f92375f = new C3017j();

    public static final Set<String> f92376g;

    public final String f92377a;

    public final String f92378b;

    public final char[] f92379c;

    public final SecureRandom f92380d;

    public final Qk.q f92381e;

    public class a implements j {
        public a() {
        }

        @Override
        public m a(k kVar, u uVar) throws IOException {
            m mVar = new m(kVar, uVar);
            if (mVar.n() != 401) {
                return mVar;
            }
            String g10 = mVar.g(F2.d.f6181M0);
            if (g10 == null) {
                throw new ESTException("Status of 401 but no WWW-Authenticate header");
            }
            String l10 = w.l(g10);
            if (l10.startsWith(InterfaceC14626d.f100733b)) {
                return r.this.f(mVar);
            }
            if (!l10.startsWith("basic")) {
                throw new ESTException("Unknown auth mode: " + l10);
            }
            mVar.d();
            Map<String, String> c10 = s.c("Basic", mVar.g(F2.d.f6181M0));
            if (r.this.f92377a != null && !r.this.f92377a.equals(c10.get("realm"))) {
                throw new ESTException("Supplied realm '" + r.this.f92377a + "' does not match server realm '" + c10.get("realm") + "'", null, 401, null);
            }
            l g11 = new l(kVar).g(null);
            if (r.this.f92377a != null && r.this.f92377a.length() > 0) {
                g11.c(F2.d.f6181M0, "Basic realm=\"" + r.this.f92377a + JavadocConstants.ANCHOR_PREFIX_END);
            }
            if (r.this.f92378b.contains(b3.s.f32937c)) {
                throw new IllegalArgumentException("User must not contain a ':'");
            }
            char[] cArr = new char[r.this.f92378b.length() + 1 + r.this.f92379c.length];
            System.arraycopy(r.this.f92378b.toCharArray(), 0, cArr, 0, r.this.f92378b.length());
            cArr[r.this.f92378b.length()] = ':';
            System.arraycopy(r.this.f92379c, 0, cArr, r.this.f92378b.length() + 1, r.this.f92379c.length);
            g11.c("Authorization", "Basic " + C13168c.i(w.k(cArr)));
            m a10 = kVar.a().a(g11.b());
            org.bouncycastle.util.a.g0(cArr, (char) 0);
            return a10;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("realm");
        hashSet.add("nonce");
        hashSet.add("opaque");
        hashSet.add("algorithm");
        hashSet.add("qop");
        f92376g = Collections.unmodifiableSet(hashSet);
    }

    public r(String str, String str2, char[] cArr) {
        this(str, str2, cArr, null, null);
    }

    @Override
    public void a(l lVar) {
        lVar.g(new a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final m f(m mVar) throws IOException {
        String str;
        String str2;
        mVar.d();
        k l10 = mVar.l();
        try {
            Map<String, String> c10 = s.c("Digest", mVar.g(F2.d.f6181M0));
            try {
                String path = l10.f().toURI().getPath();
                for (String str3 : c10.o()) {
                    if (!f92376g.contains(str3)) {
                        throw new ESTException("Unrecognised entry in WWW-Authenticate header: '" + ((Object) str3) + "'");
                    }
                }
                String e10 = l10.e();
                String str4 = c10.get("realm");
                String str5 = c10.get("nonce");
                String str6 = c10.get("opaque");
                String str7 = "algorithm";
                String str8 = c10.get("algorithm");
                String str9 = "qop";
                String str10 = c10.get("qop");
                ArrayList arrayList = new ArrayList();
                String str11 = this.f92377a;
                if (str11 != null && !str11.equals(str4)) {
                    throw new ESTException("Supplied realm '" + this.f92377a + "' does not match server realm '" + str4 + "'", null, 401, null);
                }
                if (str8 == null) {
                    str8 = KeyProperties.DIGEST_MD5;
                }
                if (str8.length() == 0) {
                    throw new ESTException("WWW-Authenticate no algorithm defined.");
                }
                String p10 = w.p(str8);
                if (str10 == null) {
                    throw new ESTException("Qop is not defined in WWW-Authenticate header.");
                }
                if (str10.length() == 0) {
                    throw new ESTException("QoP value is empty.");
                }
                String[] split = w.l(str10).split(DocLint.SEPARATOR);
                int i10 = 0;
                while (true) {
                    String str12 = str7;
                    String str13 = str9;
                    if (i10 == split.length) {
                        C13486b h10 = h(p10);
                        if (h10 == null || h10.u() == null) {
                            throw new IOException("auth digest algorithm unknown: " + p10);
                        }
                        Qk.p g10 = g(p10, h10);
                        OutputStream outputStream = g10.getOutputStream();
                        String i11 = i(10);
                        j(outputStream, this.f92378b);
                        j(outputStream, b3.s.f32937c);
                        j(outputStream, str4);
                        j(outputStream, b3.s.f32937c);
                        k(outputStream, this.f92379c);
                        outputStream.close();
                        byte[] b10 = g10.b();
                        if (p10.endsWith("-SESS")) {
                            Qk.p g11 = g(p10, h10);
                            OutputStream outputStream2 = g11.getOutputStream();
                            j(outputStream2, em.h.j(b10));
                            j(outputStream2, b3.s.f32937c);
                            j(outputStream2, str5);
                            j(outputStream2, b3.s.f32937c);
                            j(outputStream2, i11);
                            outputStream2.close();
                            b10 = g11.b();
                        }
                        String j10 = em.h.j(b10);
                        Qk.p g12 = g(p10, h10);
                        OutputStream outputStream3 = g12.getOutputStream();
                        if (((String) arrayList.get(0)).equals("auth-int")) {
                            Qk.p g13 = g(p10, h10);
                            str = "auth-int";
                            OutputStream outputStream4 = g13.getOutputStream();
                            l10.g(outputStream4);
                            outputStream4.close();
                            byte[] b11 = g13.b();
                            j(outputStream3, e10);
                            j(outputStream3, b3.s.f32937c);
                            j(outputStream3, path);
                            j(outputStream3, b3.s.f32937c);
                            j(outputStream3, em.h.j(b11));
                        } else {
                            str = "auth-int";
                            if (((String) arrayList.get(0)).equals("auth")) {
                                j(outputStream3, e10);
                                j(outputStream3, b3.s.f32937c);
                                j(outputStream3, path);
                            }
                        }
                        outputStream3.close();
                        String j11 = em.h.j(g12.b());
                        Qk.p g14 = g(p10, h10);
                        OutputStream outputStream5 = g14.getOutputStream();
                        boolean contains = arrayList.contains("missing");
                        j(outputStream5, j10);
                        j(outputStream5, b3.s.f32937c);
                        j(outputStream5, str5);
                        j(outputStream5, b3.s.f32937c);
                        if (contains) {
                            j(outputStream5, j11);
                            str2 = str;
                        } else {
                            j(outputStream5, "00000001");
                            j(outputStream5, b3.s.f32937c);
                            j(outputStream5, i11);
                            j(outputStream5, b3.s.f32937c);
                            str2 = str;
                            if (((String) arrayList.get(0)).equals(str2)) {
                                j(outputStream5, str2);
                            } else {
                                j(outputStream5, "auth");
                            }
                            j(outputStream5, b3.s.f32937c);
                            j(outputStream5, j11);
                        }
                        outputStream5.close();
                        String j12 = em.h.j(g14.b());
                        HashMap hashMap = new HashMap();
                        hashMap.put(View.AUTOFILL_HINT_USERNAME, this.f92378b);
                        hashMap.put("realm", str4);
                        hashMap.put("nonce", str5);
                        hashMap.put(DownloadManager.COLUMN_URI, path);
                        hashMap.put("response", j12);
                        if (!((String) arrayList.get(0)).equals(str2)) {
                            if (((String) arrayList.get(0)).equals("auth")) {
                                hashMap.put(str13, "auth");
                            }
                            hashMap.put(str12, p10);
                            if (str6 != null || str6.length() == 0) {
                                hashMap.put("opaque", i(20));
                            }
                            l g15 = new l(l10).g(null);
                            g15.c("Authorization", s.b("Digest", hashMap));
                            return l10.a().a(g15.b());
                        }
                        hashMap.put(str13, str2);
                        hashMap.put("nc", "00000001");
                        hashMap.put("cnonce", i11);
                        hashMap.put(str12, p10);
                        if (str6 != null) {
                        }
                        hashMap.put("opaque", i(20));
                        l g152 = new l(l10).g(null);
                        g152.c("Authorization", s.b("Digest", hashMap));
                        return l10.a().a(g152.b());
                    }
                    if (!split[i10].equals("auth") && !split[i10].equals("auth-int")) {
                        throw new ESTException("QoP value unknown: '" + i10 + "'");
                    }
                    String trim = split[i10].trim();
                    if (!arrayList.contains(trim)) {
                        arrayList.add(trim);
                    }
                    i10++;
                    str7 = str12;
                    str9 = str13;
                }
            } catch (Exception e11) {
                throw new IOException("unable to process URL in request: " + e11.getMessage());
            }
        } catch (Throwable th2) {
            throw new ESTException("Parsing WWW-Authentication header: " + th2.getMessage(), th2, mVar.n(), new ByteArrayInputStream(mVar.g(F2.d.f6181M0).getBytes()));
        }
    }

    public final Qk.p g(String str, C13486b c13486b) throws IOException {
        try {
            return this.f92381e.a(c13486b);
        } catch (OperatorCreationException e10) {
            throw new IOException("cannot create digest calculator for " + str + ": " + e10.getMessage());
        }
    }

    public final C13486b h(String str) {
        if (str.endsWith("-SESS")) {
            str = str.substring(0, str.length() - 5);
        }
        return str.equals("SHA-512-256") ? f92375f.b(Sh.d.f23347h) : f92375f.a(str);
    }

    public final String i(int i10) {
        byte[] bArr = new byte[i10];
        this.f92380d.nextBytes(bArr);
        return em.h.j(bArr);
    }

    public final void j(OutputStream outputStream, String str) throws IOException {
        outputStream.write(w.n(str));
    }

    public final void k(OutputStream outputStream, char[] cArr) throws IOException {
        outputStream.write(w.o(cArr));
    }

    public r(String str, String str2, char[] cArr, SecureRandom secureRandom, Qk.q qVar) {
        this.f92377a = str;
        this.f92378b = str2;
        this.f92379c = cArr;
        this.f92380d = secureRandom;
        this.f92381e = qVar;
    }

    public r(String str, char[] cArr) {
        this(null, str, cArr, null, null);
    }

    public r(String str, char[] cArr, SecureRandom secureRandom, Qk.q qVar) {
        this(null, str, cArr, secureRandom, qVar);
    }
}
