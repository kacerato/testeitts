package jj;

import b3.s;
import ij.n;
import ij.o;
import java.net.Socket;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.X509TrustManager;

public class h extends o {

    public k f93809d;

    public i f93810e;

    public int f93811f;

    public InterfaceC13863a f93812g;

    public Set<String> f93813h;

    public Long f93814i;

    public l f93815j;

    public boolean f93816k;

    public class a implements InterfaceC13863a {
        public a() {
        }

        @Override
        public byte[] a(Socket socket, String str) {
            return null;
        }

        @Override
        public boolean b(Socket socket) {
            return false;
        }
    }

    public h(String str) {
        super(str);
        this.f93810e = new C13869g(null);
        this.f93811f = 0;
        this.f93813h = new HashSet();
        this.f93816k = true;
        this.f93815j = new l(C13868f.c());
    }

    @Override
    public n a() {
        if (this.f93812g == null) {
            this.f93812g = new a();
        }
        if (this.f93809d == null) {
            this.f93809d = this.f93815j.a();
        }
        if (this.f92368b == null) {
            this.f92368b = new C13866d(this.f93810e, this.f93809d, this.f93811f, this.f93812g, this.f93813h, this.f93814i, this.f93816k);
        }
        return super.a();
    }

    public h d(String str) {
        this.f93813h.add(str);
        return this;
    }

    public h e(String[] strArr) {
        this.f93813h.addAll(Arrays.asList(strArr));
        return this;
    }

    public h f(InterfaceC13863a interfaceC13863a) {
        this.f93812g = interfaceC13863a;
        return this;
    }

    @Override
    public h b(ij.h hVar) {
        this.f92368b = hVar;
        return this;
    }

    public h h(boolean z10) {
        this.f93816k = z10;
        return this;
    }

    public h i(i iVar) {
        this.f93810e = iVar;
        return this;
    }

    public h j(KeyManager keyManager) {
        if (this.f93809d != null) {
            throw new IllegalStateException("Socket Factory Creator was defined in the constructor.");
        }
        this.f93815j.b(keyManager);
        return this;
    }

    public h k(KeyManager[] keyManagerArr) {
        if (this.f93809d != null) {
            throw new IllegalStateException("Socket Factory Creator was defined in the constructor.");
        }
        this.f93815j.c(keyManagerArr);
        return this;
    }

    public h l(String str) throws NoSuchProviderException {
        if (this.f93809d != null) {
            throw new IllegalStateException("Socket Factory Creator was defined in the constructor.");
        }
        this.f93815j.d(str);
        return this;
    }

    public h m(Provider provider) {
        if (this.f93809d != null) {
            throw new IllegalStateException("Socket Factory Creator was defined in the constructor.");
        }
        this.f93815j.e(provider);
        return this;
    }

    public h n(long j10) {
        this.f93814i = Long.valueOf(j10);
        return this;
    }

    public h o(SecureRandom secureRandom) {
        if (this.f93809d != null) {
            throw new IllegalStateException("Socket Factory Creator was defined in the constructor.");
        }
        this.f93815j.f(secureRandom);
        return this;
    }

    public h p(String str) {
        if (this.f93809d != null) {
            throw new IllegalStateException("Socket Factory Creator was defined in the constructor.");
        }
        this.f93815j.g(str);
        return this;
    }

    public h q(int i10) {
        this.f93811f = i10;
        return this;
    }

    public h(String str, int i10, X509TrustManager x509TrustManager) {
        super(str + s.f32937c + i10);
        this.f93810e = new C13869g(null);
        this.f93811f = 0;
        this.f93813h = new HashSet();
        this.f93816k = true;
        this.f93815j = new l(x509TrustManager);
    }

    public h(String str, int i10, k kVar) {
        super(str + s.f32937c + i10);
        this.f93810e = new C13869g(null);
        this.f93811f = 0;
        this.f93813h = new HashSet();
        this.f93816k = true;
        if (kVar == null) {
            throw new NullPointerException("No socket factory creator.");
        }
        this.f93809d = kVar;
    }

    public h(String str, int i10, X509TrustManager[] x509TrustManagerArr) {
        this(str + s.f32937c + i10, x509TrustManagerArr);
    }

    public h(String str, X509TrustManager x509TrustManager) {
        super(str);
        this.f93810e = new C13869g(null);
        this.f93811f = 0;
        this.f93813h = new HashSet();
        this.f93816k = true;
        this.f93815j = new l(x509TrustManager);
    }

    public h(String str, k kVar) {
        super(str);
        this.f93810e = new C13869g(null);
        this.f93811f = 0;
        this.f93813h = new HashSet();
        this.f93816k = true;
        if (kVar == null) {
            throw new NullPointerException("No socket factory creator.");
        }
        this.f93809d = kVar;
    }

    public h(String str, X509TrustManager[] x509TrustManagerArr) {
        super(str);
        this.f93810e = new C13869g(null);
        this.f93811f = 0;
        this.f93813h = new HashSet();
        this.f93816k = true;
        this.f93815j = new l(x509TrustManagerArr);
    }
}
