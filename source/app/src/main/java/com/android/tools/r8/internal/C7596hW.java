package com.android.tools.r8.internal;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class C7596hW extends E implements Serializable {

    public final MessageDigest f48568b;

    public final int f48569c;

    public final boolean f48570d;

    public final String f48571e;

    public C7596hW() {
        boolean z10;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.f48568b = messageDigest;
            this.f48569c = messageDigest.getDigestLength();
            this.f48571e = "Hashing.sha256()";
            try {
                messageDigest.clone();
                z10 = true;
            } catch (CloneNotSupportedException unused) {
                z10 = false;
            }
            this.f48570d = z10;
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public final InterfaceC8212lA a() {
        if (this.f48570d) {
            try {
                return new C7429gW((MessageDigest) this.f48568b.clone(), this.f48569c);
            } catch (CloneNotSupportedException unused) {
            }
        }
        try {
            return new C7429gW(MessageDigest.getInstance(this.f48568b.getAlgorithm()), this.f48569c);
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public final String toString() {
        return this.f48571e;
    }
}
