package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class C14587g {

    public static final C14587g f99234c = new a().b();

    public final Set<b> f99235a;

    @Nullable
    public final Rg.c f99236b;

    public static final class a {

        public final List<b> f99237a = new ArrayList();

        public a a(String str, String... strArr) {
            if (str == null) {
                throw new NullPointerException("pattern == null");
            }
            for (String str2 : strArr) {
                this.f99237a.add(new b(str, str2));
            }
            return this;
        }

        public C14587g b() {
            return new C14587g(new LinkedHashSet(this.f99237a), null);
        }
    }

    public static final class b {

        public static final String f99238e = "*.";

        public final String f99239a;

        public final String f99240b;

        public final String f99241c;

        public final Tg.f f99242d;

        public b(String str, String str2) {
            String p10;
            this.f99239a = str;
            if (str.startsWith(f99238e)) {
                p10 = v.m("http://" + str.substring(2)).p();
            } else {
                p10 = v.m("http://" + str).p();
            }
            this.f99240b = p10;
            if (str2.startsWith("sha1/")) {
                this.f99241c = "sha1/";
                this.f99242d = Tg.f.g(str2.substring(5));
            } else {
                if (!str2.startsWith("sha256/")) {
                    throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
                }
                this.f99241c = "sha256/";
                this.f99242d = Tg.f.g(str2.substring(7));
            }
            if (this.f99242d != null) {
                return;
            }
            throw new IllegalArgumentException("pins must be base64: " + str2);
        }

        public boolean a(String str) {
            if (!this.f99239a.startsWith(f99238e)) {
                return str.equals(this.f99240b);
            }
            int indexOf = str.indexOf(46);
            if ((str.length() - indexOf) - 1 == this.f99240b.length()) {
                String str2 = this.f99240b;
                if (str.regionMatches(false, indexOf + 1, str2, 0, str2.length())) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f99239a.equals(bVar.f99239a) && this.f99241c.equals(bVar.f99241c) && this.f99242d.equals(bVar.f99242d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f99239a.hashCode()) * 31) + this.f99241c.hashCode()) * 31) + this.f99242d.hashCode();
        }

        public String toString() {
            return this.f99241c + this.f99242d.b();
        }
    }

    public C14587g(Set<b> set, @Nullable Rg.c cVar) {
        this.f99235a = set;
        this.f99236b = cVar;
    }

    public static String d(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + f((X509Certificate) certificate).b();
    }

    public static Tg.f e(X509Certificate x509Certificate) {
        return Tg.f.J(x509Certificate.getPublicKey().getEncoded()).P();
    }

    public static Tg.f f(X509Certificate x509Certificate) {
        return Tg.f.J(x509Certificate.getPublicKey().getEncoded()).Q();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> c10 = c(str);
        if (c10.isEmpty()) {
            return;
        }
        Rg.c cVar = this.f99236b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i10);
            int size2 = c10.size();
            Tg.f fVar = null;
            Tg.f fVar2 = null;
            for (int i11 = 0; i11 < size2; i11++) {
                b bVar = c10.get(i11);
                if (bVar.f99241c.equals("sha256/")) {
                    if (fVar == null) {
                        fVar = f(x509Certificate);
                    }
                    if (bVar.f99242d.equals(fVar)) {
                        return;
                    }
                } else {
                    if (!bVar.f99241c.equals("sha1/")) {
                        throw new AssertionError((Object) ("unsupported hashAlgorithm: " + bVar.f99241c));
                    }
                    if (fVar2 == null) {
                        fVar2 = e(x509Certificate);
                    }
                    if (bVar.f99242d.equals(fVar2)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i12 = 0; i12 < size3; i12++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i12);
            sb2.append("\n    ");
            sb2.append(d(x509Certificate2));
            sb2.append(": ");
            sb2.append(x509Certificate2.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(str);
        sb2.append(b3.s.f32937c);
        int size4 = c10.size();
        for (int i13 = 0; i13 < size4; i13++) {
            b bVar2 = c10.get(i13);
            sb2.append("\n    ");
            sb2.append((Object) bVar2);
        }
        throw new SSLPeerUnverifiedException(sb2.toString());
    }

    public void b(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        a(str, Arrays.asList(certificateArr));
    }

    public List<b> c(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b bVar : this.f99235a) {
            if (bVar.a(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(bVar);
            }
        }
        return emptyList;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14587g) {
            C14587g c14587g = (C14587g) obj;
            if (Gg.c.r(this.f99236b, c14587g.f99236b) && this.f99235a.equals(c14587g.f99235a)) {
                return true;
            }
        }
        return false;
    }

    public C14587g g(@Nullable Rg.c cVar) {
        return Gg.c.r(this.f99236b, cVar) ? this : new C14587g(this.f99235a, cVar);
    }

    public int hashCode() {
        Rg.c cVar = this.f99236b;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f99235a.hashCode();
    }
}
