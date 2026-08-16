package ad;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.DigestInputStream;
import java.security.DigestOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Vector;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.spec.SecretKeySpec;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class C3601a extends KeyStoreSpi {

    public static final int f31990f = -17957139;

    public static final int f31991g = 1;

    public static final int f31992h = 2;

    public final Vector f31993a = new Vector();

    public final HashMap f31994b = new HashMap();

    public final HashMap f31995c = new HashMap();

    public final HashMap f31996d = new HashMap();

    public final HashMap f31997e = new HashMap();

    public static byte[] a(char[] passwd) {
        byte[] bArr = new byte[passwd.length * 2];
        int i10 = 0;
        for (char c10 : passwd) {
            int i11 = i10 + 1;
            bArr[i10] = (byte) (c10 >>> '\b');
            i10 += 2;
            bArr[i11] = (byte) c10;
        }
        return bArr;
    }

    public static byte[] b(byte[] encryptedPKI, byte[] passwd) throws UnrecoverableKeyException {
        try {
            byte[] encryptedData = new EncryptedPrivateKeyInfo(encryptedPKI).getEncryptedData();
            byte[] bArr = new byte[20];
            System.arraycopy(encryptedData, 0, bArr, 0, 20);
            byte[] bArr2 = new byte[20];
            System.arraycopy(encryptedData, encryptedData.length - 20, bArr2, 0, 20);
            int length = encryptedData.length - 40;
            byte[] bArr3 = new byte[length];
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            int i10 = 0;
            while (i10 < length) {
                messageDigest.reset();
                messageDigest.update(passwd);
                messageDigest.update(bArr);
                messageDigest.digest(bArr, 0, 20);
                for (int i11 = 0; i11 < 20 && i10 < length; i11++) {
                    bArr3[i10] = (byte) (bArr[i11] ^ encryptedData[i10 + 20]);
                    i10++;
                }
            }
            messageDigest.reset();
            messageDigest.update(passwd);
            messageDigest.update(bArr3);
            if (MessageDigest.isEqual(bArr2, messageDigest.digest())) {
                return bArr3;
            }
            throw new UnrecoverableKeyException("checksum mismatch");
        } catch (Exception e10) {
            throw new UnrecoverableKeyException(e10.getMessage());
        }
    }

    public static byte[] c(Key key, byte[] passwd) throws KeyStoreException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            SecureRandom.getInstance("SHA1PRNG");
            byte[] encoded = key.getEncoded();
            int length = encoded.length;
            byte[] bArr = new byte[length + 40];
            byte[] seed = SecureRandom.getSeed(20);
            System.arraycopy(seed, 0, bArr, 0, 20);
            int i10 = 0;
            while (i10 < encoded.length) {
                messageDigest.reset();
                messageDigest.update(passwd);
                messageDigest.update(seed);
                messageDigest.digest(seed, 0, seed.length);
                for (int i11 = 0; i11 < seed.length && i10 < encoded.length; i11++) {
                    bArr[i10 + 20] = (byte) (seed[i11] ^ encoded[i10]);
                    i10++;
                }
            }
            messageDigest.reset();
            messageDigest.update(passwd);
            messageDigest.update(encoded);
            messageDigest.digest(bArr, length + 20, 20);
            return new EncryptedPrivateKeyInfo("1.3.6.1.4.1.42.2.17.1.1", bArr).getEncoded();
        } catch (Exception e10) {
            throw new KeyStoreException(e10.getMessage());
        }
    }

    public static Certificate d(DataInputStream in2) throws IOException, CertificateException, NoSuchAlgorithmException {
        String readUTF = in2.readUTF();
        byte[] bArr = new byte[in2.readInt()];
        in2.read(bArr);
        return CertificateFactory.getInstance(readUTF).generateCertificate(new ByteArrayInputStream(bArr));
    }

    public static void e(DataOutputStream dout, Certificate cert) throws IOException, CertificateException {
        dout.writeUTF(cert.getType());
        byte[] encoded = cert.getEncoded();
        dout.writeInt(encoded.length);
        dout.write(encoded);
    }

    @Override
    public Enumeration engineAliases() {
        return this.f31993a.elements();
    }

    @Override
    public boolean engineContainsAlias(String alias) {
        return this.f31993a.contains(alias);
    }

    @Override
    public void engineDeleteEntry(String alias) throws KeyStoreException {
        this.f31993a.remove(alias);
    }

    @Override
    public Certificate engineGetCertificate(String alias) {
        return (Certificate) this.f31994b.get(alias);
    }

    @Override
    public String engineGetCertificateAlias(Certificate cert) {
        for (String str : this.f31994b.o()) {
            if (cert.equals(this.f31994b.get(str))) {
                return str;
            }
        }
        return null;
    }

    @Override
    public Certificate[] engineGetCertificateChain(String alias) {
        return (Certificate[]) this.f31996d.get(alias);
    }

    @Override
    public Date engineGetCreationDate(String alias) {
        return (Date) this.f31997e.get(alias);
    }

    @Override
    public Key engineGetKey(String alias, char[] password) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        if (!this.f31995c.containsKey(alias)) {
            return null;
        }
        byte[] b10 = b((byte[]) this.f31995c.get(alias), a(password));
        Certificate[] engineGetCertificateChain = engineGetCertificateChain(alias);
        if (engineGetCertificateChain.length <= 0) {
            return new SecretKeySpec(b10, alias);
        }
        try {
            return KeyFactory.getInstance(engineGetCertificateChain[0].getPublicKey().getAlgorithm()).generatePrivate(new PKCS8EncodedKeySpec(b10));
        } catch (InvalidKeySpecException e10) {
            throw new UnrecoverableKeyException(e10.getMessage());
        }
    }

    @Override
    public boolean engineIsCertificateEntry(String alias) {
        return this.f31994b.containsKey(alias);
    }

    @Override
    public boolean engineIsKeyEntry(String alias) {
        return this.f31995c.containsKey(alias);
    }

    @Override
    public void engineLoad(InputStream in2, char[] passwd) throws IOException, NoSuchAlgorithmException, CertificateException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA");
        messageDigest.update(a(passwd));
        messageDigest.update("Mighty Aphrodite".getBytes("UTF-8"));
        this.f31993a.clear();
        this.f31994b.clear();
        this.f31995c.clear();
        this.f31996d.clear();
        this.f31997e.clear();
        DataInputStream dataInputStream = new DataInputStream(new DigestInputStream(in2, messageDigest));
        if (dataInputStream.readInt() != -17957139) {
            throw new IOException("not a JavaKeyStore");
        }
        dataInputStream.readInt();
        int readInt = dataInputStream.readInt();
        this.f31993a.ensureCapacity(readInt);
        if (readInt < 0) {
            throw new IOException("negative entry count");
        }
        for (int i10 = 0; i10 < readInt; i10++) {
            int readInt2 = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            this.f31993a.add(readUTF);
            this.f31997e.put(readUTF, new Date(dataInputStream.readLong()));
            if (readInt2 == 1) {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.read(bArr);
                this.f31995c.put(readUTF, bArr);
                int readInt3 = dataInputStream.readInt();
                Certificate[] certificateArr = new Certificate[readInt3];
                for (int i11 = 0; i11 < readInt3; i11++) {
                    certificateArr[i11] = d(dataInputStream);
                }
                this.f31996d.put(readUTF, certificateArr);
            } else {
                if (readInt2 != 2) {
                    throw new IOException("malformed key store");
                }
                this.f31994b.put(readUTF, d(dataInputStream));
            }
        }
        byte[] bArr2 = new byte[20];
        dataInputStream.read(bArr2);
        if (MessageDigest.isEqual(bArr2, messageDigest.digest())) {
            throw new IOException("signature not verified");
        }
    }

    @Override
    public void engineSetCertificateEntry(String alias, Certificate cert) throws KeyStoreException {
        if (this.f31995c.containsKey(alias)) {
            throw new KeyStoreException(JavadocConstants.ANCHOR_PREFIX_END + alias + "\" is a private key entry");
        }
        cert.getClass();
        this.f31994b.put(alias, cert);
        if (this.f31993a.contains(alias)) {
            return;
        }
        this.f31997e.put(alias, new Date());
        this.f31993a.add(alias);
    }

    @Override
    public void engineSetKeyEntry(String alias, Key key, char[] passwd, Certificate[] certChain) throws KeyStoreException {
        if (!this.f31994b.containsKey(alias)) {
            this.f31995c.put(alias, c(key, a(passwd)));
            if (certChain != null) {
                this.f31996d.put(alias, certChain);
            } else {
                this.f31996d.put(alias, new Certificate[0]);
            }
            if (this.f31993a.contains(alias)) {
                return;
            }
            this.f31997e.put(alias, new Date());
            this.f31993a.add(alias);
            return;
        }
        throw new KeyStoreException(JavadocConstants.ANCHOR_PREFIX_END + alias + " is a trusted certificate entry");
    }

    @Override
    public int engineSize() {
        return this.f31993a.size();
    }

    @Override
    public void engineStore(OutputStream out, char[] passwd) throws IOException, NoSuchAlgorithmException, CertificateException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
        messageDigest.update(a(passwd));
        messageDigest.update("Mighty Aphrodite".getBytes("UTF-8"));
        DataOutputStream dataOutputStream = new DataOutputStream(new DigestOutputStream(out, messageDigest));
        dataOutputStream.writeInt(f31990f);
        dataOutputStream.writeInt(2);
        dataOutputStream.writeInt(this.f31993a.size());
        Enumeration elements = this.f31993a.elements();
        while (elements.hasMoreElements()) {
            String str = (String) elements.nextElement();
            if (this.f31994b.containsKey(str)) {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeUTF(str);
                dataOutputStream.writeLong(((Date) this.f31997e.get(str)).getTime());
                e(dataOutputStream, (Certificate) this.f31994b.get(str));
            } else {
                dataOutputStream.writeInt(1);
                dataOutputStream.writeUTF(str);
                dataOutputStream.writeLong(((Date) this.f31997e.get(str)).getTime());
                byte[] bArr = (byte[]) this.f31995c.get(str);
                dataOutputStream.writeInt(bArr.length);
                dataOutputStream.write(bArr);
                Certificate[] certificateArr = (Certificate[]) this.f31996d.get(str);
                dataOutputStream.writeInt(certificateArr.length);
                for (Certificate certificate : certificateArr) {
                    e(dataOutputStream, certificate);
                }
            }
        }
        dataOutputStream.write(messageDigest.digest());
    }

    @Override
    public void engineSetKeyEntry(String alias, byte[] encodedKey, Certificate[] certChain) throws KeyStoreException {
        if (!this.f31994b.containsKey(alias)) {
            try {
                new EncryptedPrivateKeyInfo(encodedKey);
                this.f31995c.put(alias, encodedKey);
                if (certChain != null) {
                    this.f31996d.put(alias, certChain);
                } else {
                    this.f31996d.put(alias, new Certificate[0]);
                }
                if (this.f31993a.contains(alias)) {
                    return;
                }
                this.f31997e.put(alias, new Date());
                this.f31993a.add(alias);
                return;
            } catch (IOException unused) {
                throw new KeyStoreException("encoded key is not an EncryptedPrivateKeyInfo");
            }
        }
        throw new KeyStoreException(JavadocConstants.ANCHOR_PREFIX_END + alias + "\" is a trusted certificate entry");
    }
}
