package Pk;

import Xh.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import li.C14146h;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;

public class e {

    public b f21565a = new b();

    public JcaX509CertificateConverter f21566b = new JcaX509CertificateConverter();

    public org.bouncycastle.pkix.jcajce.d a(File file, File file2) throws IOException, CertificateException {
        c(file);
        c(file2);
        FileInputStream fileInputStream = new FileInputStream(file);
        FileInputStream fileInputStream2 = new FileInputStream(file2);
        org.bouncycastle.pkix.jcajce.d b10 = b(fileInputStream, fileInputStream2);
        fileInputStream.close();
        fileInputStream2.close();
        return b10;
    }

    public org.bouncycastle.pkix.jcajce.d b(InputStream inputStream, InputStream inputStream2) throws IOException, CertificateException {
        b bVar;
        v vVar;
        Object readObject = new org.bouncycastle.openssl.i(new InputStreamReader(inputStream)).readObject();
        if (readObject instanceof org.bouncycastle.openssl.g) {
            bVar = this.f21565a;
            vVar = ((org.bouncycastle.openssl.g) readObject).a();
        } else {
            if (!(readObject instanceof v)) {
                throw new IOException("unrecognised private key file");
            }
            bVar = this.f21565a;
            vVar = (v) readObject;
        }
        PrivateKey c10 = bVar.c(vVar);
        org.bouncycastle.openssl.i iVar = new org.bouncycastle.openssl.i(new InputStreamReader(inputStream2));
        ArrayList arrayList = new ArrayList();
        while (true) {
            Object readObject2 = iVar.readObject();
            if (readObject2 == null) {
                return new org.bouncycastle.pkix.jcajce.d(c10, (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]));
            }
            arrayList.add(this.f21566b.a((C14146h) readObject2));
        }
    }

    public final void c(File file) throws IOException {
        if (file.canRead()) {
            return;
        }
        if (file.exists()) {
            throw new IOException("Unable to open file " + file.getPath() + " for reading.");
        }
        throw new FileNotFoundException("Unable to open " + file.getPath() + ": it does not exist.");
    }

    public e d(String str) {
        this.f21565a = this.f21565a.e(str);
        this.f21566b = this.f21566b.b(str);
        return this;
    }

    public e e(Provider provider) {
        this.f21565a = this.f21565a.f(provider);
        this.f21566b = this.f21566b.c(provider);
        return this;
    }
}
