package org.bouncycastle.cms.jcajce;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Cipher;

public class C14651l extends OutputStream {

    public static final byte[] f100900c = new byte[1];

    public Cipher f100901b;

    public C14651l(Cipher cipher) {
        this.f100901b = cipher;
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = f100900c;
        bArr[0] = (byte) i10;
        this.f100901b.updateAAD(bArr, 0, 1);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f100901b.updateAAD(bArr, i10, i11);
    }
}
