package com.android.tools.r8.internal;

import java.security.MessageDigest;
import java.util.Arrays;

public final class C7429gW extends AbstractC8181l {

    public final MessageDigest f48270b;

    public final int f48271c;

    public boolean f48272d;

    public C7429gW(MessageDigest messageDigest, int i10) {
        this.f48270b = messageDigest;
        this.f48271c = i10;
    }

    @Override
    public final C7212fA a() {
        b();
        this.f48272d = true;
        if (this.f48271c == this.f48270b.getDigestLength()) {
            byte[] digest = this.f48270b.digest();
            char[] cArr = AbstractC7379gA.f48204b;
            return new C7212fA(digest);
        }
        byte[] copyOf = Arrays.copyOf(this.f48270b.digest(), this.f48271c);
        char[] cArr2 = AbstractC7379gA.f48204b;
        return new C7212fA(copyOf);
    }

    public final void b() {
        if (this.f48272d) {
            throw new IllegalStateException("Cannot re-use a Hasher after calling hash() on it");
        }
    }
}
