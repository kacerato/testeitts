package jj;

import ij.u;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.bouncycastle.util.w;

public class C13865c implements ij.i {

    public final SSLSocketFactory f93785a;

    public final i f93786b;

    public final int f93787c;

    public final InterfaceC13863a f93788d;

    public final Set<String> f93789e;

    public final Long f93790f;

    public final boolean f93791g;

    public C13865c(SSLSocketFactory sSLSocketFactory, i iVar, int i10, InterfaceC13863a interfaceC13863a, Set<String> set, Long l10, boolean z10) throws GeneralSecurityException {
        this.f93785a = sSLSocketFactory;
        this.f93786b = iVar;
        this.f93787c = i10;
        this.f93788d = interfaceC13863a;
        this.f93789e = set;
        this.f93790f = l10;
        this.f93791g = z10;
    }

    @Override
    public u a(String str, int i10) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.f93785a.createSocket(str, i10);
        sSLSocket.setSoTimeout(this.f93787c);
        Set<String> set = this.f93789e;
        if (set != null && !set.isEmpty()) {
            if (this.f93791g) {
                HashSet hashSet = new HashSet();
                String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
                for (int i11 = 0; i11 != supportedCipherSuites.length; i11++) {
                    hashSet.add(supportedCipherSuites[i11]);
                }
                ArrayList arrayList = new ArrayList();
                for (String str2 : this.f93789e) {
                    if (hashSet.contains(str2)) {
                        arrayList.add(str2);
                    }
                }
                if (arrayList.isEmpty()) {
                    throw new IllegalStateException("No supplied cipher suite is supported by the provider.");
                }
                sSLSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[arrayList.size()]));
            } else {
                Set<String> set2 = this.f93789e;
                sSLSocket.setEnabledCipherSuites((String[]) set2.toArray(new String[set2.size()]));
            }
        }
        sSLSocket.startHandshake();
        i iVar = this.f93786b;
        if (iVar != null && !iVar.a(str, sSLSocket.getSession())) {
            throw new IOException("Host name could not be verified.");
        }
        String l10 = w.l(sSLSocket.getSession().getCipherSuite());
        if (l10.contains("_des_") || l10.contains("_des40_") || l10.contains("_3des_")) {
            throw new IOException("EST clients must not use DES ciphers");
        }
        if (w.l(sSLSocket.getSession().getCipherSuite()).contains("null")) {
            throw new IOException("EST clients must not use NULL ciphers");
        }
        if (w.l(sSLSocket.getSession().getCipherSuite()).contains("anon")) {
            throw new IOException("EST clients must not use anon ciphers");
        }
        if (w.l(sSLSocket.getSession().getCipherSuite()).contains("export")) {
            throw new IOException("EST clients must not use export ciphers");
        }
        if (sSLSocket.getSession().getProtocol().equalsIgnoreCase("tlsv1")) {
            try {
                sSLSocket.close();
            } catch (Exception unused) {
            }
            throw new IOException("EST clients must not use TLSv1");
        }
        i iVar2 = this.f93786b;
        if (iVar2 == null || iVar2.a(str, sSLSocket.getSession())) {
            return new j(sSLSocket, this.f93788d, this.f93790f);
        }
        throw new IOException("Hostname was not verified: " + str);
    }
}
