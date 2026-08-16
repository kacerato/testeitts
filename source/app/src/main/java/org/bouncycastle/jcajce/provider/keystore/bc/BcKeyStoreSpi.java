package org.bouncycastle.jcajce.provider.keystore.bc;

import Bi.InterfaceC2379k;
import Bi.L;
import Bi.r;
import Ii.J;
import Oi.H;
import Qi.e;
import Qi.f;
import Si.k;
import Xh.v;
import dk.C12947c;
import dk.InterfaceC12950f;
import fk.InterfaceC13235a;
import fm.C13260d;
import fm.C13262f;
import hi.h0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.q;

public class BcKeyStoreSpi extends KeyStoreSpi implements InterfaceC13235a {

    public static final int f101395f = 2;

    public static final int f101396g = 20;

    public static final String f101397h = "PBEWithSHAAndTwofish-CBC";

    public static final int f101398i = 20;

    public static final int f101399j = 1024;

    public static final String f101400k = "PBEWithSHAAnd3-KeyTripleDES-CBC";

    public static final int f101401l = 0;

    public static final int f101402m = 1;

    public static final int f101403n = 2;

    public static final int f101404o = 3;

    public static final int f101405p = 4;

    public static final int f101406q = 0;

    public static final int f101407r = 1;

    public static final int f101408s = 2;

    public int f101411d;

    public Hashtable f101409b = new Hashtable();

    public SecureRandom f101410c = r.h();

    public final InterfaceC12950f f101412e = new C12947c();

    public static class BCKeyStoreException extends KeyStoreException {
        private final Exception cause;

        public BCKeyStoreException(String str, Exception exc) {
            super(str);
            this.cause = exc;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public static class a extends BcKeyStoreSpi {
        public a() {
            super(1);
        }

        @Override
        public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
            this.f101409b.clear();
            if (inputStream == null) {
                return;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            int readInt = dataInputStream.readInt();
            if (readInt != 2 && readInt != 0 && readInt != 1) {
                throw new IOException("Wrong version of key store.");
            }
            int readInt2 = dataInputStream.readInt();
            byte[] bArr = new byte[readInt2];
            if (readInt2 != 20) {
                throw new IOException("Key store corrupted.");
            }
            dataInputStream.readFully(bArr);
            int readInt3 = dataInputStream.readInt();
            if (readInt3 < 0 || readInt3 > 65536) {
                throw new IOException("Key store corrupted.");
            }
            Jj.a aVar = new Jj.a(dataInputStream, i(readInt == 0 ? "OldPBEWithSHAAndTwofish-CBC" : BcKeyStoreSpi.f101397h, 2, cArr, bArr, readInt3));
            J j10 = new J();
            h(new Qi.c(aVar, j10));
            byte[] bArr2 = new byte[j10.f()];
            j10.c(bArr2, 0);
            byte[] bArr3 = new byte[j10.f()];
            C13260d.g(aVar, bArr3);
            if (org.bouncycastle.util.a.I(bArr2, bArr3)) {
                return;
            }
            this.f101409b.clear();
            throw new IOException("KeyStore integrity check failed.");
        }

        @Override
        public void engineStore(OutputStream outputStream, char[] cArr) throws IOException {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            byte[] bArr = new byte[20];
            int nextInt = (this.f101410c.nextInt() & 1023) + 1024;
            this.f101410c.nextBytes(bArr);
            dataOutputStream.writeInt(this.f101411d);
            dataOutputStream.writeInt(20);
            dataOutputStream.write(bArr);
            dataOutputStream.writeInt(nextInt);
            Jj.b bVar = new Jj.b(dataOutputStream, i(BcKeyStoreSpi.f101397h, 1, cArr, bArr, nextInt));
            Qi.d dVar = new Qi.d(new J());
            j(new C13262f(bVar, dVar));
            bVar.write(dVar.c());
            bVar.close();
        }
    }

    public static class b extends BcKeyStoreSpi {
        public b() {
            super(2);
        }
    }

    public class c {

        public int f101413a;

        public String f101414b;

        public Object f101415c;

        public Certificate[] f101416d;

        public Date f101417e;

        public c(String str, Key key, char[] cArr, Certificate[] certificateArr) throws Exception {
            this.f101417e = new Date();
            this.f101413a = 4;
            this.f101414b = str;
            this.f101416d = certificateArr;
            byte[] bArr = new byte[20];
            BcKeyStoreSpi.this.f101410c.nextBytes(bArr);
            int nextInt = (BcKeyStoreSpi.this.f101410c.nextInt() & 1023) + 1024;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeInt(20);
            dataOutputStream.write(bArr);
            dataOutputStream.writeInt(nextInt);
            DataOutputStream dataOutputStream2 = new DataOutputStream(new Jj.b(dataOutputStream, BcKeyStoreSpi.this.i(BcKeyStoreSpi.f101400k, 1, cArr, bArr, nextInt)));
            BcKeyStoreSpi.this.g(key, dataOutputStream2);
            dataOutputStream2.close();
            this.f101415c = byteArrayOutputStream.toByteArray();
        }

        public String a() {
            return this.f101414b;
        }

        public Certificate[] b() {
            return this.f101416d;
        }

        public Date c() {
            return this.f101417e;
        }

        public Object d() {
            return this.f101415c;
        }

        public Object e(char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            Key e10;
            if (cArr == null || cArr.length == 0) {
                Object obj = this.f101415c;
                if (obj instanceof Key) {
                    return obj;
                }
            }
            if (this.f101413a != 4) {
                throw new RuntimeException("forget something!");
            }
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) this.f101415c));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr);
                try {
                    return BcKeyStoreSpi.this.e(new DataInputStream(new Jj.a(dataInputStream, BcKeyStoreSpi.this.i(BcKeyStoreSpi.f101400k, 2, cArr, bArr, dataInputStream.readInt()))));
                } catch (Exception unused) {
                    DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) this.f101415c));
                    byte[] bArr2 = new byte[dataInputStream2.readInt()];
                    dataInputStream2.readFully(bArr2);
                    int readInt = dataInputStream2.readInt();
                    try {
                        e10 = BcKeyStoreSpi.this.e(new DataInputStream(new Jj.a(dataInputStream2, BcKeyStoreSpi.this.i("BrokenPBEWithSHAAnd3-KeyTripleDES-CBC", 2, cArr, bArr2, readInt))));
                    } catch (Exception unused2) {
                        DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) this.f101415c));
                        bArr2 = new byte[dataInputStream3.readInt()];
                        dataInputStream3.readFully(bArr2);
                        readInt = dataInputStream3.readInt();
                        e10 = BcKeyStoreSpi.this.e(new DataInputStream(new Jj.a(dataInputStream3, BcKeyStoreSpi.this.i("OldPBEWithSHAAnd3-KeyTripleDES-CBC", 2, cArr, bArr2, readInt))));
                    }
                    byte[] bArr3 = bArr2;
                    int i10 = readInt;
                    if (e10 == null) {
                        throw new UnrecoverableKeyException("no match");
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt(bArr3.length);
                    dataOutputStream.write(bArr3);
                    dataOutputStream.writeInt(i10);
                    DataOutputStream dataOutputStream2 = new DataOutputStream(new Jj.b(dataOutputStream, BcKeyStoreSpi.this.i(BcKeyStoreSpi.f101400k, 1, cArr, bArr3, i10)));
                    BcKeyStoreSpi.this.g(e10, dataOutputStream2);
                    dataOutputStream2.close();
                    this.f101415c = byteArrayOutputStream.toByteArray();
                    return e10;
                }
            } catch (Exception unused3) {
                throw new UnrecoverableKeyException("no match");
            }
        }

        public int f() {
            return this.f101413a;
        }

        public c(String str, Certificate certificate) {
            this.f101417e = new Date();
            this.f101413a = 1;
            this.f101414b = str;
            this.f101415c = certificate;
            this.f101416d = null;
        }

        public c(String str, Date date, int i10, Object obj) {
            new Date();
            this.f101414b = str;
            this.f101417e = date;
            this.f101413a = i10;
            this.f101415c = obj;
        }

        public c(String str, Date date, int i10, Object obj, Certificate[] certificateArr) {
            new Date();
            this.f101414b = str;
            this.f101417e = date;
            this.f101413a = i10;
            this.f101415c = obj;
            this.f101416d = certificateArr;
        }

        public c(String str, byte[] bArr, Certificate[] certificateArr) {
            this.f101417e = new Date();
            this.f101413a = 3;
            this.f101414b = str;
            this.f101415c = bArr;
            this.f101416d = certificateArr;
        }
    }

    public static class d extends BcKeyStoreSpi {
        public d() {
            super(1);
            if (!q.f("org.bouncycastle.bks.enable_v1")) {
                throw new IllegalStateException("BKS-V1 not enabled");
            }
        }
    }

    public BcKeyStoreSpi(int i10) {
        this.f101411d = i10;
    }

    @Override
    public void a(SecureRandom secureRandom) {
        this.f101410c = secureRandom;
    }

    public final Certificate d(DataInputStream dataInputStream) throws IOException {
        String readUTF = dataInputStream.readUTF();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        try {
            return this.f101412e.r(readUTF).generateCertificate(new ByteArrayInputStream(bArr));
        } catch (NoSuchProviderException e10) {
            throw new IOException(e10.toString());
        } catch (CertificateException e11) {
            throw new IOException(e11.toString());
        }
    }

    public final Key e(DataInputStream dataInputStream) throws IOException {
        KeySpec pKCS8EncodedKeySpec;
        int read = dataInputStream.read();
        String readUTF = dataInputStream.readUTF();
        String readUTF2 = dataInputStream.readUTF();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        if (readUTF.equals("PKCS#8") || readUTF.equals("PKCS8")) {
            pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(bArr);
        } else {
            if (!readUTF.equals("X.509") && !readUTF.equals("X509")) {
                if (readUTF.equals("RAW")) {
                    return new SecretKeySpec(bArr, readUTF2);
                }
                throw new IOException("Key format " + readUTF + " not recognised!");
            }
            pKCS8EncodedKeySpec = new X509EncodedKeySpec(bArr);
        }
        try {
            if (read == 0) {
                return C14720a.p(v.v(bArr));
            }
            if (read == 1) {
                return C14720a.q(h0.w(bArr));
            }
            if (read == 2) {
                return this.f101412e.s(readUTF2).generateSecret(pKCS8EncodedKeySpec);
            }
            throw new IOException("Key type " + read + " not recognised!");
        } catch (Exception e10) {
            throw new IOException("Exception creating key: " + e10.toString());
        }
    }

    @Override
    public Enumeration engineAliases() {
        return this.f101409b.keys();
    }

    @Override
    public boolean engineContainsAlias(String str) {
        return this.f101409b.get(str) != null;
    }

    @Override
    public void engineDeleteEntry(String str) throws KeyStoreException {
        if (this.f101409b.get(str) == null) {
            return;
        }
        this.f101409b.remove(str);
    }

    @Override
    public Certificate engineGetCertificate(String str) {
        c cVar = (c) this.f101409b.get(str);
        if (cVar == null) {
            return null;
        }
        if (cVar.f() == 1) {
            return (Certificate) cVar.d();
        }
        Certificate[] b10 = cVar.b();
        if (b10 != null) {
            return b10[0];
        }
        return null;
    }

    @Override
    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration elements = this.f101409b.elements();
        while (elements.hasMoreElements()) {
            c cVar = (c) elements.nextElement();
            if (!(cVar.d() instanceof Certificate)) {
                Certificate[] b10 = cVar.b();
                if (b10 != null && b10[0].equals(certificate)) {
                    return cVar.a();
                }
            } else if (((Certificate) cVar.d()).equals(certificate)) {
                return cVar.a();
            }
        }
        return null;
    }

    @Override
    public Certificate[] engineGetCertificateChain(String str) {
        c cVar = (c) this.f101409b.get(str);
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    @Override
    public Date engineGetCreationDate(String str) {
        c cVar = (c) this.f101409b.get(str);
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        c cVar = (c) this.f101409b.get(str);
        if (cVar == null || cVar.f() == 1) {
            return null;
        }
        return (Key) cVar.e(cArr);
    }

    @Override
    public boolean engineIsCertificateEntry(String str) {
        c cVar = (c) this.f101409b.get(str);
        return cVar != null && cVar.f() == 1;
    }

    @Override
    public boolean engineIsKeyEntry(String str) {
        c cVar = (c) this.f101409b.get(str);
        return (cVar == null || cVar.f() == 1) ? false : true;
    }

    @Override
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
        this.f101409b.clear();
        if (inputStream == null) {
            return;
        }
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        int readInt = dataInputStream.readInt();
        if (readInt != 2 && readInt != 0 && readInt != 1) {
            throw new IOException("Wrong version of key store.");
        }
        int readInt2 = dataInputStream.readInt();
        if (readInt2 <= 0) {
            throw new IOException("Invalid salt detected");
        }
        byte[] bArr = new byte[readInt2];
        dataInputStream.readFully(bArr);
        int readInt3 = dataInputStream.readInt();
        k kVar = new k(new J());
        if (cArr == null || cArr.length == 0) {
            h(dataInputStream);
            dataInputStream.readFully(new byte[kVar.d()]);
            return;
        }
        byte[] a10 = L.a(cArr);
        H h10 = new H(new J());
        h10.j(a10, bArr, readInt3);
        InterfaceC2379k d10 = h10.d(readInt != 2 ? kVar.d() : kVar.d() * 8);
        org.bouncycastle.util.a.e0(a10, (byte) 0);
        kVar.a(d10);
        h(new e(dataInputStream, kVar));
        byte[] bArr2 = new byte[kVar.d()];
        kVar.c(bArr2, 0);
        byte[] bArr3 = new byte[kVar.d()];
        dataInputStream.readFully(bArr3);
        if (org.bouncycastle.util.a.I(bArr2, bArr3)) {
            return;
        }
        this.f101409b.clear();
        throw new IOException("KeyStore integrity check failed.");
    }

    @Override
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        c cVar = (c) this.f101409b.get(str);
        if (cVar == null || cVar.f() == 1) {
            this.f101409b.put(str, new c(str, certificate));
            return;
        }
        throw new KeyStoreException("key store already has a key entry with alias " + str);
    }

    @Override
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        if (key instanceof PrivateKey) {
            if (certificateArr == null) {
                throw new KeyStoreException("no certificate chain for private key");
            }
            if (key.getEncoded() == null) {
                this.f101409b.put(str, new c(str, new Date(), 2, key, certificateArr));
                return;
            }
        }
        try {
            this.f101409b.put(str, new c(str, key, cArr, certificateArr));
        } catch (Exception e10) {
            throw new BCKeyStoreException(e10.toString(), e10);
        }
    }

    @Override
    public int engineSize() {
        return this.f101409b.size();
    }

    @Override
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        byte[] bArr = new byte[20];
        int nextInt = (this.f101410c.nextInt() & 1023) + 1024;
        this.f101410c.nextBytes(bArr);
        dataOutputStream.writeInt(this.f101411d);
        dataOutputStream.writeInt(20);
        dataOutputStream.write(bArr);
        dataOutputStream.writeInt(nextInt);
        k kVar = new k(new J());
        f fVar = new f(kVar);
        H h10 = new H(new J());
        byte[] a10 = L.a(cArr);
        h10.j(a10, bArr, nextInt);
        kVar.a(h10.d(this.f101411d < 2 ? kVar.d() : kVar.d() * 8));
        for (int i10 = 0; i10 != a10.length; i10++) {
            a10[i10] = 0;
        }
        j(new C13262f(dataOutputStream, fVar));
        byte[] bArr2 = new byte[kVar.d()];
        kVar.c(bArr2, 0);
        dataOutputStream.write(bArr2);
        dataOutputStream.close();
    }

    public final void f(Certificate certificate, DataOutputStream dataOutputStream) throws IOException {
        try {
            byte[] encoded = certificate.getEncoded();
            dataOutputStream.writeUTF(certificate.getType());
            dataOutputStream.writeInt(encoded.length);
            dataOutputStream.write(encoded);
        } catch (CertificateEncodingException e10) {
            throw new IOException(e10.toString());
        }
    }

    public final void g(Key key, DataOutputStream dataOutputStream) throws IOException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new IOException("unable to store encoding of protected key");
        }
        dataOutputStream.write(key instanceof PrivateKey ? 0 : key instanceof PublicKey ? 1 : 2);
        dataOutputStream.writeUTF(key.getFormat());
        dataOutputStream.writeUTF(key.getAlgorithm());
        dataOutputStream.writeInt(encoded.length);
        dataOutputStream.write(encoded);
    }

    public void h(InputStream inputStream) throws IOException {
        Certificate[] certificateArr;
        Hashtable hashtable;
        c cVar;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        for (int read = dataInputStream.read(); read > 0; read = dataInputStream.read()) {
            String readUTF = dataInputStream.readUTF();
            Date date = new Date(dataInputStream.readLong());
            int readInt = dataInputStream.readInt();
            if (readInt != 0) {
                Certificate[] certificateArr2 = new Certificate[readInt];
                for (int i10 = 0; i10 != readInt; i10++) {
                    certificateArr2[i10] = d(dataInputStream);
                }
                certificateArr = certificateArr2;
            } else {
                certificateArr = null;
            }
            if (read == 1) {
                Certificate d10 = d(dataInputStream);
                hashtable = this.f101409b;
                cVar = new c(readUTF, date, 1, d10);
            } else if (read == 2) {
                Key e10 = e(dataInputStream);
                hashtable = this.f101409b;
                cVar = new c(readUTF, date, 2, e10, certificateArr);
            } else {
                if (read != 3 && read != 4) {
                    throw new IOException("Unknown object type in store.");
                }
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr);
                this.f101409b.put(readUTF, new c(readUTF, date, read, bArr, certificateArr));
            }
            hashtable.put(readUTF, cVar);
        }
    }

    public Cipher i(String str, int i10, char[] cArr, byte[] bArr, int i11) throws IOException {
        try {
            PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
            SecretKeyFactory s10 = this.f101412e.s(str);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i11);
            Cipher e10 = this.f101412e.e(str);
            e10.init(i10, s10.generateSecret(pBEKeySpec), pBEParameterSpec);
            return e10;
        } catch (Exception e11) {
            throw new IOException("Error initialising store of key store: " + ((Object) e11));
        }
    }

    public void j(OutputStream outputStream) throws IOException {
        Enumeration elements = this.f101409b.elements();
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        while (true) {
            if (!elements.hasMoreElements()) {
                dataOutputStream.write(0);
                return;
            }
            c cVar = (c) elements.nextElement();
            dataOutputStream.write(cVar.f());
            dataOutputStream.writeUTF(cVar.a());
            dataOutputStream.writeLong(cVar.c().getTime());
            Certificate[] b10 = cVar.b();
            if (b10 == null) {
                dataOutputStream.writeInt(0);
            } else {
                dataOutputStream.writeInt(b10.length);
                for (int i10 = 0; i10 != b10.length; i10++) {
                    f(b10[i10], dataOutputStream);
                }
            }
            int f10 = cVar.f();
            if (f10 == 1) {
                f((Certificate) cVar.d(), dataOutputStream);
            } else if (f10 == 2) {
                g((Key) cVar.d(), dataOutputStream);
            } else {
                if (f10 != 3 && f10 != 4) {
                    throw new IOException("Unknown object type in store.");
                }
                byte[] bArr = (byte[]) cVar.d();
                dataOutputStream.writeInt(bArr.length);
                dataOutputStream.write(bArr);
            }
        }
    }

    @Override
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        this.f101409b.put(str, new c(str, bArr, certificateArr));
    }
}
