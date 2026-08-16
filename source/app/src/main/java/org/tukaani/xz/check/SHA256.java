package org.tukaani.xz.check;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA256 extends Check {
    private final MessageDigest sha256;

    public SHA256() throws NoSuchAlgorithmException {
        this.size = 32;
        this.name = "SHA-256";
        this.sha256 = MessageDigest.getInstance("SHA-256");
    }

    @Override
    public byte[] finish() {
        byte[] digest = this.sha256.digest();
        this.sha256.reset();
        return digest;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.sha256.update(bArr, i10, i11);
    }
}
