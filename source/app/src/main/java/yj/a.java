package Yj;

import dk.InterfaceC12950f;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.Enumeration;
import org.bouncycastle.util.q;

public class a extends KeyStoreSpi {

    public static final String f30604d = "keystore.type.compat";

    public final b f30605a;

    public final KeyStoreSpi f30606b;

    public KeyStoreSpi f30607c;

    public a(InterfaceC12950f interfaceC12950f, KeyStoreSpi keyStoreSpi) {
        this.f30605a = new b(interfaceC12950f);
        this.f30606b = keyStoreSpi;
        this.f30607c = keyStoreSpi;
    }

    @Override
    public Enumeration<String> engineAliases() {
        return this.f30607c.engineAliases();
    }

    @Override
    public boolean engineContainsAlias(String str) {
        return this.f30607c.engineContainsAlias(str);
    }

    @Override
    public void engineDeleteEntry(String str) throws KeyStoreException {
        this.f30607c.engineDeleteEntry(str);
    }

    @Override
    public Certificate engineGetCertificate(String str) {
        return this.f30607c.engineGetCertificate(str);
    }

    @Override
    public String engineGetCertificateAlias(Certificate certificate) {
        return this.f30607c.engineGetCertificateAlias(certificate);
    }

    @Override
    public Certificate[] engineGetCertificateChain(String str) {
        return this.f30607c.engineGetCertificateChain(str);
    }

    @Override
    public Date engineGetCreationDate(String str) {
        return this.f30607c.engineGetCreationDate(str);
    }

    @Override
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        return this.f30607c.engineGetKey(str, cArr);
    }

    @Override
    public boolean engineIsCertificateEntry(String str) {
        return this.f30607c.engineIsCertificateEntry(str);
    }

    @Override
    public boolean engineIsKeyEntry(String str) {
        return this.f30607c.engineIsKeyEntry(str);
    }

    @Override
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
        if (inputStream == null) {
            KeyStoreSpi keyStoreSpi = this.f30606b;
            this.f30607c = keyStoreSpi;
            keyStoreSpi.engineLoad(null, cArr);
            return;
        }
        if (!q.f(f30604d)) {
            KeyStoreSpi keyStoreSpi2 = this.f30606b;
            if (keyStoreSpi2 instanceof Xj.a) {
                this.f30607c = keyStoreSpi2;
                this.f30607c.engineLoad(inputStream, cArr);
            }
        }
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        inputStream.mark(8);
        this.f30607c = this.f30605a.engineProbe(inputStream) ? this.f30605a : this.f30606b;
        inputStream.reset();
        this.f30607c.engineLoad(inputStream, cArr);
    }

    public boolean engineProbe(InputStream inputStream) throws IOException {
        KeyStoreSpi keyStoreSpi = this.f30607c;
        if (keyStoreSpi instanceof Xj.a) {
            return ((Xj.a) keyStoreSpi).engineProbe(inputStream);
        }
        return false;
    }

    @Override
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        this.f30607c.engineSetCertificateEntry(str, certificate);
    }

    @Override
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        this.f30607c.engineSetKeyEntry(str, key, cArr, certificateArr);
    }

    @Override
    public int engineSize() {
        return this.f30607c.engineSize();
    }

    @Override
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
        this.f30607c.engineStore(outputStream, cArr);
    }

    @Override
    public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        this.f30607c.engineLoad(loadStoreParameter);
    }

    @Override
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        this.f30607c.engineSetKeyEntry(str, bArr, certificateArr);
    }

    @Override
    public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        this.f30607c.engineStore(loadStoreParameter);
    }
}
