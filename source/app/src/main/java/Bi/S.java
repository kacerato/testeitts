package Bi;

import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;

public interface S {
    void a(boolean z10, InterfaceC2379k interfaceC2379k);

    boolean b(byte[] bArr);

    byte[] c() throws CryptoException, DataLengthException;

    void reset();

    void update(byte b10);

    void update(byte[] bArr, int i10, int i11);
}
