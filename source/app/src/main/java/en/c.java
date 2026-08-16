package en;

import android.security.keystore.KeyProperties;
import com.android.apksig.SigningCertificateLineage;
import com.android.apksig.internal.util.X509CertificateUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import org.offlineApk.apksigner.ParameterException;

public class c {

    public String f85930a;

    public String f85931b;

    public String f85932c;

    public String f85933d;

    public String f85934e;

    public Charset f85935f;

    public String f85936g;

    public String f85937h;

    public String f85938i;

    public String f85939j;

    public String f85940k;

    public String f85941l;

    public String f85942m;

    public PrivateKey f85943n;

    public List<X509Certificate> f85944o;

    public final SigningCertificateLineage.SignerCapabilities.Builder f85945p = new SigningCertificateLineage.SignerCapabilities.Builder();

    public static PKCS8EncodedKeySpec a(EncryptedPrivateKeyInfo encryptedPrivateKeyInfo, List<char[]> passwords) throws NoSuchAlgorithmException, InvalidKeySpecException, InvalidKeyException {
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(encryptedPrivateKeyInfo.getAlgName());
        Iterator<char[]> it = passwords.iterator();
        InvalidKeyException e10 = null;
        InvalidKeySpecException e11 = null;
        while (it.hasNext()) {
            try {
                return encryptedPrivateKeyInfo.getKeySpec(secretKeyFactory.generateSecret(new PBEKeySpec(it.next())));
            } catch (InvalidKeyException e12) {
                e10 = e12;
            } catch (InvalidKeySpecException e13) {
                e11 = e13;
            }
        }
        if (e10 == null && e11 == null) {
            throw new RuntimeException("No passwords");
        }
        if (e10 != null) {
            throw e10;
        }
        throw e11;
    }

    public static void b(InputStream in2, OutputStream out) throws IOException {
        byte[] bArr = new byte[65536];
        while (true) {
            int read = in2.read(bArr);
            if (read == -1) {
                return;
            } else {
                out.write(bArr, 0, read);
            }
        }
    }

    public static Key e(KeyStore ks, String keyAlias, List<char[]> passwords) throws UnrecoverableKeyException, NoSuchAlgorithmException, KeyStoreException {
        Iterator<char[]> it = passwords.iterator();
        UnrecoverableKeyException e10 = null;
        while (it.hasNext()) {
            try {
                return ks.getKey(keyAlias, it.next());
            } catch (UnrecoverableKeyException e11) {
                e10 = e11;
            }
        }
        if (e10 == null) {
            throw new RuntimeException("No key passwords");
        }
        throw e10;
    }

    public static void l(KeyStore ks, String file, List<char[]> passwords) throws Exception {
        Exception e10 = null;
        for (char[] cArr : passwords) {
            try {
                if (file == null) {
                    ks.load(null, cArr);
                    return;
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    continue;
                    ks.load(fileInputStream, cArr);
                    fileInputStream.close();
                    return;
                } finally {
                    try {
                        continue;
                    } catch (Throwable th2) {
                    }
                }
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        if (e10 != null) {
            throw e10;
        }
        throw new RuntimeException("No keystore passwords");
    }

    public static PrivateKey m(PKCS8EncodedKeySpec spec) throws InvalidKeySpecException, NoSuchAlgorithmException {
        try {
            try {
                try {
                    return KeyFactory.getInstance(KeyProperties.KEY_ALGORITHM_RSA).generatePrivate(spec);
                } catch (InvalidKeySpecException unused) {
                    throw new InvalidKeySpecException("Not an RSA, EC, or DSA private key");
                }
            } catch (InvalidKeySpecException unused2) {
                return KeyFactory.getInstance("DSA").generatePrivate(spec);
            }
        } catch (InvalidKeySpecException unused3) {
            return KeyFactory.getInstance(KeyProperties.KEY_ALGORITHM_EC).generatePrivate(spec);
        }
    }

    public static byte[] q(File file) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            b(fileInputStream, byteArrayOutputStream);
            fileInputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public void A(String keystoreType) {
        this.f85936g = keystoreType;
    }

    public void B(String name) {
        this.f85930a = name;
    }

    public void C(Charset passwordCharset) {
        this.f85935f = passwordCharset;
    }

    public void D(String v1SigFileBasename) {
        this.f85942m = v1SigFileBasename;
    }

    public List<X509Certificate> c() {
        return this.f85944o;
    }

    public String d() {
        return this.f85940k;
    }

    public String f() {
        return this.f85932c;
    }

    public String g() {
        return this.f85930a;
    }

    public PrivateKey h() {
        return this.f85943n;
    }

    public SigningCertificateLineage.SignerCapabilities.Builder i() {
        return this.f85945p;
    }

    public String j() {
        return this.f85942m;
    }

    public boolean k() {
        return this.f85930a == null && this.f85931b == null && this.f85932c == null && this.f85933d == null && this.f85934e == null && this.f85935f == null && this.f85936g == null && this.f85937h == null && this.f85938i == null && this.f85939j == null && this.f85940k == null && this.f85941l == null && this.f85942m == null && this.f85943n == null && this.f85944o == null;
    }

    public void n(b passwordRetriever) throws Exception {
        if (this.f85931b == null) {
            if (this.f85940k == null) {
                throw new ParameterException("KeyStore (--ks) or private key file (--key) must be specified");
            }
            o(passwordRetriever);
        } else {
            if (this.f85940k != null) {
                throw new ParameterException("--ks and --key may not be specified at the same time");
            }
            if (this.f85941l != null) {
                throw new ParameterException("--ks and --cert may not be specified at the same time");
            }
            p(passwordRetriever);
        }
    }

    public final void o(b passwordRetriever) throws Exception {
        PKCS8EncodedKeySpec pKCS8EncodedKeySpec;
        if (this.f85940k == null) {
            throw new ParameterException("Private key file (--key) must be specified");
        }
        if (this.f85941l == null) {
            throw new ParameterException("Certificate file (--cert) must be specified");
        }
        byte[] q10 = q(new File(this.f85940k));
        try {
            EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(q10);
            String str = this.f85934e;
            if (str == null) {
                str = b.f85926e;
            }
            Charset charset = this.f85935f;
            pKCS8EncodedKeySpec = a(encryptedPrivateKeyInfo, passwordRetriever.j(str, "Private key password for " + this.f85930a, charset != null ? new Charset[]{charset} : new Charset[0]));
        } catch (IOException e10) {
            if (this.f85934e != null) {
                throw new InvalidKeySpecException("Failed to parse encrypted private key blob " + this.f85940k, e10);
            }
            pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(q10);
        }
        try {
            this.f85943n = m(pKCS8EncodedKeySpec);
            FileInputStream fileInputStream = new FileInputStream(this.f85941l);
            try {
                Collection<? extends Certificate> generateCertificates = X509CertificateUtils.generateCertificates(fileInputStream);
                fileInputStream.close();
                ArrayList arrayList = new ArrayList(generateCertificates.size());
                Iterator<? extends Certificate> it = generateCertificates.iterator();
                while (it.hasNext()) {
                    arrayList.add((X509Certificate) it.next());
                }
                this.f85944o = arrayList;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (InvalidKeySpecException e11) {
            throw new InvalidKeySpecException("Failed to load PKCS #8 encoded private key from " + this.f85940k, e11);
        }
    }

    public final void p(b passwordRetriever) throws Exception {
        KeyStore keyStore;
        Provider provider;
        Key e10;
        if (this.f85931b == null) {
            throw new ParameterException("KeyStore (--ks) must be specified");
        }
        String str = this.f85936g;
        if (str == null) {
            str = KeyStore.getDefaultType();
        }
        String str2 = this.f85937h;
        String str3 = null;
        if (str2 != null) {
            keyStore = KeyStore.getInstance(str, str2);
        } else {
            String str4 = this.f85938i;
            if (str4 != null) {
                Class<?> cls = Class.forName(str4);
                if (!Provider.class.isAssignableFrom(cls)) {
                    throw new ParameterException("Keystore Provider class " + this.f85938i + " not subclass of " + Provider.class.getName());
                }
                if (this.f85939j != null) {
                    try {
                        provider = (Provider) cls.getConstructor(String.class).newInstance(this.f85939j);
                    } catch (NoSuchMethodException unused) {
                        provider = (Provider) cls.getMethod("configure", String.class).invoke((Provider) cls.getConstructor(null).newInstance(null), this.f85939j);
                    }
                } else {
                    provider = (Provider) cls.getConstructor(null).newInstance(null);
                }
                keyStore = KeyStore.getInstance(str, provider);
            } else {
                keyStore = KeyStore.getInstance(str);
            }
        }
        String str5 = this.f85933d;
        if (str5 == null) {
            str5 = b.f85926e;
        }
        Charset charset = this.f85935f;
        Charset[] charsetArr = charset != null ? new Charset[]{charset} : new Charset[0];
        List<char[]> j10 = passwordRetriever.j(str5, "Keystore password for " + this.f85930a, charsetArr);
        l(keyStore, KeyProperties.DIGEST_NONE.equals(this.f85931b) ? null : this.f85931b, j10);
        try {
            if (this.f85932c == null) {
                Enumeration<String> aliases = keyStore.aliases();
                if (aliases != null) {
                    while (aliases.hasMoreElements()) {
                        String nextElement = aliases.nextElement();
                        if (keyStore.isKeyEntry(nextElement)) {
                            try {
                                if (this.f85932c != null) {
                                    throw new ParameterException(this.f85931b + " contains multiple key entries. --ks-key-alias option must be used to specify which entry to use.");
                                }
                                this.f85932c = nextElement;
                            } catch (UnrecoverableKeyException e11) {
                                e = e11;
                                str3 = nextElement;
                                throw new IOException("Failed to obtain key with alias \"" + str3 + "\" from " + this.f85931b + ". Wrong password?", e);
                            }
                        }
                    }
                }
                if (this.f85932c == null) {
                    throw new ParameterException(this.f85931b + " does not contain key entries");
                }
            }
            str3 = this.f85932c;
            if (!keyStore.isKeyEntry(str3)) {
                throw new ParameterException(this.f85931b + " entry \"" + str3 + "\" does not contain a key");
            }
            String str6 = this.f85934e;
            if (str6 != null) {
                e10 = e(keyStore, str3, passwordRetriever.j(str6, "Key \"" + str3 + "\" password for " + this.f85930a, charsetArr));
            } else {
                try {
                    e10 = e(keyStore, str3, j10);
                } catch (UnrecoverableKeyException unused2) {
                    e10 = e(keyStore, str3, passwordRetriever.j(b.f85926e, "Key \"" + str3 + "\" password for " + this.f85930a, charsetArr));
                }
            }
            if (e10 == null) {
                throw new ParameterException(this.f85931b + " entry \"" + str3 + "\" does not contain a key");
            }
            if (!(e10 instanceof PrivateKey)) {
                throw new ParameterException(this.f85931b + " entry \"" + str3 + "\" does not contain a private key. It contains a key of algorithm: " + e10.getAlgorithm());
            }
            this.f85943n = (PrivateKey) e10;
            Certificate[] certificateChain = keyStore.getCertificateChain(str3);
            if (certificateChain == null || certificateChain.length == 0) {
                throw new ParameterException(this.f85931b + " entry \"" + str3 + "\" does not contain certificates");
            }
            this.f85944o = new ArrayList(certificateChain.length);
            for (Certificate certificate : certificateChain) {
                this.f85944o.add((X509Certificate) certificate);
            }
        } catch (UnrecoverableKeyException e12) {
            e = e12;
        }
    }

    public void r(String certFile) {
        this.f85941l = certFile;
    }

    public void s(String keyFile) {
        this.f85940k = keyFile;
    }

    public void t(String keyPasswordSpec) {
        this.f85934e = keyPasswordSpec;
    }

    public void u(String keystoreFile) {
        this.f85931b = keystoreFile;
    }

    public void v(String keystoreKeyAlias) {
        this.f85932c = keystoreKeyAlias;
    }

    public void w(String keystorePasswordSpec) {
        this.f85933d = keystorePasswordSpec;
    }

    public void x(String keystoreProviderArg) {
        this.f85939j = keystoreProviderArg;
    }

    public void y(String keystoreProviderClass) {
        this.f85938i = keystoreProviderClass;
    }

    public void z(String keystoreProviderName) {
        this.f85937h = keystoreProviderName;
    }
}
