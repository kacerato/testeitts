package java.security;

import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/MessageDigestSpi.class
 */
public abstract class MessageDigestSpi {
    protected abstract void engineUpdate(byte b10);

    protected abstract void engineUpdate(byte[] bArr, int i10, int i11);

    protected abstract byte[] engineDigest();

    protected abstract void engineReset();

    public MessageDigestSpi() {
        throw new RuntimeException("Stub!");
    }

    protected int engineGetDigestLength() {
        throw new RuntimeException("Stub!");
    }

    protected void engineUpdate(ByteBuffer input) {
        throw new RuntimeException("Stub!");
    }

    protected int engineDigest(byte[] buf, int offset, int len) throws DigestException {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
