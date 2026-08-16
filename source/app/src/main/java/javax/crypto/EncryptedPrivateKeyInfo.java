package javax.crypto;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/EncryptedPrivateKeyInfo.class
 */
public class EncryptedPrivateKeyInfo {
    public EncryptedPrivateKeyInfo(byte[] encoded) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public EncryptedPrivateKeyInfo(String algName, byte[] encryptedData) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public EncryptedPrivateKeyInfo(AlgorithmParameters algParams, byte[] encryptedData) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public String getAlgName() {
        throw new RuntimeException("Stub!");
    }

    public AlgorithmParameters getAlgParameters() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getEncryptedData() {
        throw new RuntimeException("Stub!");
    }

    public PKCS8EncodedKeySpec getKeySpec(Cipher cipher) throws InvalidKeySpecException {
        throw new RuntimeException("Stub!");
    }

    public PKCS8EncodedKeySpec getKeySpec(Key decryptKey) throws NoSuchAlgorithmException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public PKCS8EncodedKeySpec getKeySpec(Key decryptKey, String providerName) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public PKCS8EncodedKeySpec getKeySpec(Key decryptKey, Provider provider) throws NoSuchAlgorithmException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public byte[] getEncoded() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
