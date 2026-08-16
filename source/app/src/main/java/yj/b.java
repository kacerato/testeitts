package Yj;

import Bi.InterfaceC2392y;
import bk.C3898d;
import dk.InterfaceC12950f;
import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import org.bouncycastle.util.w;

public class b extends KeyStoreSpi {

    public static final String f30608c = "BC JKS store is read-only and only supports certificate entries";

    public final Hashtable<String, a> f30609a = new Hashtable<>();

    public final InterfaceC12950f f30610b;

    public static final class a {

        public final Date f30611a;

        public final Certificate f30612b;

        public a(Date date, Certificate certificate) {
            this.f30611a = date;
            this.f30612b = certificate;
        }
    }

    public static final class C0805b extends ByteArrayInputStream {
        public C0805b(byte[] bArr, int i10, int i11) {
            super(bArr, i10, i11);
        }

        public void c() {
            org.bouncycastle.util.a.e0(this.buf, (byte) 0);
        }
    }

    public b(InterfaceC12950f interfaceC12950f) {
        this.f30610b = interfaceC12950f;
    }

    public final void a(InterfaceC2392y interfaceC2392y, char[] cArr) throws IOException {
        for (int i10 = 0; i10 < cArr.length; i10++) {
            interfaceC2392y.update((byte) (cArr[i10] >> '\b'));
            interfaceC2392y.update((byte) cArr[i10]);
        }
        interfaceC2392y.update(w.j("Mighty Aphrodite"), 0, 16);
    }

    public final CertificateFactory b(String str) throws CertificateException {
        InterfaceC12950f interfaceC12950f = this.f30610b;
        if (interfaceC12950f == null) {
            return CertificateFactory.getInstance(str);
        }
        try {
            return interfaceC12950f.r(str);
        } catch (NoSuchProviderException e10) {
            throw new CertificateException(e10.toString());
        }
    }

    public final C0805b c(InputStream inputStream, char[] cArr) throws IOException {
        InterfaceC2392y a10 = C3898d.a("SHA-1");
        byte[] e10 = C13260d.e(inputStream);
        if (cArr == null) {
            return new C0805b(e10, 0, e10.length - a10.f());
        }
        a(a10, cArr);
        a10.update(e10, 0, e10.length - a10.f());
        int f10 = a10.f();
        byte[] bArr = new byte[f10];
        a10.c(bArr, 0);
        byte[] bArr2 = new byte[f10];
        System.arraycopy(e10, e10.length - f10, bArr2, 0, f10);
        if (org.bouncycastle.util.a.I(bArr, bArr2)) {
            return new C0805b(e10, 0, e10.length - f10);
        }
        org.bouncycastle.util.a.e0(e10, (byte) 0);
        throw new IOException("password incorrect or store tampered with");
    }

    @Override
    public Enumeration<String> engineAliases() {
        Enumeration<String> keys;
        synchronized (this.f30609a) {
            keys = this.f30609a.keys();
        }
        return keys;
    }

    @Override
    public boolean engineContainsAlias(String str) {
        boolean containsKey;
        if (str == null) {
            throw new NullPointerException("alias value is null");
        }
        synchronized (this.f30609a) {
            containsKey = this.f30609a.containsKey(str);
        }
        return containsKey;
    }

    @Override
    public void engineDeleteEntry(String str) throws KeyStoreException {
        throw new KeyStoreException(f30608c);
    }

    @Override
    public Certificate engineGetCertificate(String str) {
        synchronized (this.f30609a) {
            try {
                a aVar = this.f30609a.get(str);
                if (aVar == null) {
                    return null;
                }
                return aVar.f30612b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public String engineGetCertificateAlias(Certificate certificate) {
        synchronized (this.f30609a) {
            try {
                for (Map.Entry<String, a> entry : this.f30609a.entrySet()) {
                    if (entry.getValue().f30612b.equals(certificate)) {
                        return entry.getKey();
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public Certificate[] engineGetCertificateChain(String str) {
        return null;
    }

    @Override
    public Date engineGetCreationDate(String str) {
        synchronized (this.f30609a) {
            try {
                a aVar = this.f30609a.get(str);
                if (aVar == null) {
                    return null;
                }
                return aVar.f30611a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        return null;
    }

    @Override
    public boolean engineIsCertificateEntry(String str) {
        boolean containsKey;
        synchronized (this.f30609a) {
            containsKey = this.f30609a.containsKey(str);
        }
        return containsKey;
    }

    @Override
    public boolean engineIsKeyEntry(String str) {
        return false;
    }

    @Override
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
        Hashtable hashtable;
        if (inputStream == null) {
            return;
        }
        C0805b c10 = c(inputStream, cArr);
        synchronized (this.f30609a) {
            try {
                DataInputStream dataInputStream = new DataInputStream(c10);
                int readInt = dataInputStream.readInt();
                int readInt2 = dataInputStream.readInt();
                if (readInt == -17957139) {
                    CertificateFactory certificateFactory = null;
                    int i10 = 2;
                    if (readInt2 == 1) {
                        hashtable = null;
                        certificateFactory = b("X.509");
                    } else {
                        if (readInt2 != 2) {
                            throw new IllegalStateException("unable to discern store version");
                        }
                        hashtable = new Hashtable();
                    }
                    int readInt3 = dataInputStream.readInt();
                    int i11 = 0;
                    while (i11 < readInt3) {
                        int readInt4 = dataInputStream.readInt();
                        if (readInt4 == 1) {
                            throw new IOException(f30608c);
                        }
                        if (readInt4 != i10) {
                            throw new IllegalStateException("unable to discern entry type");
                        }
                        String readUTF = dataInputStream.readUTF();
                        Date date = new Date(dataInputStream.readLong());
                        if (readInt2 == i10) {
                            String readUTF2 = dataInputStream.readUTF();
                            if (hashtable.containsKey(readUTF2)) {
                                certificateFactory = (CertificateFactory) hashtable.get(readUTF2);
                            } else {
                                CertificateFactory b10 = b(readUTF2);
                                hashtable.put(readUTF2, b10);
                                certificateFactory = b10;
                            }
                        }
                        int readInt5 = dataInputStream.readInt();
                        byte[] bArr = new byte[readInt5];
                        dataInputStream.readFully(bArr);
                        C0805b c0805b = new C0805b(bArr, 0, readInt5);
                        try {
                            Certificate generateCertificate = certificateFactory.generateCertificate(c0805b);
                            if (c0805b.available() != 0) {
                                throw new IOException("password incorrect or store tampered with");
                            }
                            c0805b.c();
                            this.f30609a.put(readUTF, new a(date, generateCertificate));
                            i11++;
                            i10 = 2;
                        } catch (Throwable th2) {
                            c0805b.c();
                            throw th2;
                        }
                    }
                }
                if (c10.available() != 0) {
                    throw new IOException("password incorrect or store tampered with");
                }
                c10.c();
            } catch (Throwable th3) {
                c10.c();
                throw th3;
            }
        }
    }

    public boolean engineProbe(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        int readInt = dataInputStream.readInt();
        int readInt2 = dataInputStream.readInt();
        return readInt == -17957139 && (readInt2 == 1 || readInt2 == 2);
    }

    @Override
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        throw new KeyStoreException(f30608c);
    }

    @Override
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new KeyStoreException(f30608c);
    }

    @Override
    public int engineSize() {
        return this.f30609a.size();
    }

    @Override
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
        throw new IOException(f30608c);
    }

    @Override
    public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        if (loadStoreParameter == null) {
            engineLoad(null, null);
        } else {
            if (loadStoreParameter instanceof Hj.c) {
                engineLoad(((Hj.c) loadStoreParameter).a(), c.a(loadStoreParameter));
                return;
            }
            throw new IllegalArgumentException("no support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
    }

    @Override
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new KeyStoreException(f30608c);
    }
}
