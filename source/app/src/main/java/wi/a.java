package Wi;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public interface a {
    int a(byte[] bArr, int i10);

    int b(byte[] bArr) throws InvalidCipherTextException;

    void c(SecureRandom secureRandom) throws IllegalArgumentException;

    String d();
}
