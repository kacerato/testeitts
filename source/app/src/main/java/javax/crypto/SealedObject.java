package javax.crypto;

import java.io.IOException;
import java.io.Serializable;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/SealedObject.class
 */
public class SealedObject implements Serializable {
    protected byte[] encodedParams = null;

    public SealedObject(Serializable object, Cipher c10) throws IOException, IllegalBlockSizeException {
        throw new RuntimeException("Stub!");
    }

    protected SealedObject(SealedObject so) {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public final Object getObject(Key key) throws IOException, ClassNotFoundException, NoSuchAlgorithmException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final Object getObject(Cipher c10) throws IOException, ClassNotFoundException, IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final Object getObject(Key key, String provider) throws IOException, ClassNotFoundException, NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }
}
