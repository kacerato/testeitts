package org.bouncycastle.cms;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import oh.C14549x;
import uh.InterfaceC15621l;

public class G implements V, J {

    public final C14549x f100527a;

    public final byte[] f100528b;

    public G(C14549x c14549x, byte[] bArr) {
        this.f100527a = c14549x;
        this.f100528b = bArr;
    }

    @Override
    public C14549x a() {
        return this.f100527a;
    }

    @Override
    public void b(OutputStream outputStream) throws IOException, CMSException {
        outputStream.write(this.f100528b);
    }

    @Override
    public Object getContent() {
        return org.bouncycastle.util.a.p(this.f100528b);
    }

    @Override
    public InputStream getInputStream() {
        return new ByteArrayInputStream(this.f100528b);
    }

    public G(byte[] bArr) {
        this(InterfaceC15621l.f120705m8, bArr);
    }
}
