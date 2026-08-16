package org.tukaani.xz.check;

import java.security.NoSuchAlgorithmException;
import org.tukaani.xz.UnsupportedOptionsException;

public abstract class Check {
    String name;
    int size;

    public static Check getInstance(int i10) throws UnsupportedOptionsException {
        if (i10 == 0) {
            return new None();
        }
        if (i10 == 1) {
            return new CRC32();
        }
        if (i10 == 4) {
            return new CRC64();
        }
        if (i10 == 10) {
            try {
                return new SHA256();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        throw new UnsupportedOptionsException("Unsupported Check ID " + i10);
    }

    public abstract byte[] finish();

    public String getName() {
        return this.name;
    }

    public int getSize() {
        return this.size;
    }

    public void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    public abstract void update(byte[] bArr, int i10, int i11);
}
