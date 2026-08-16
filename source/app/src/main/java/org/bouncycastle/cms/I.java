package org.bouncycastle.cms;

import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class I implements F, J {

    public InputStream f100539a;

    public boolean f100540b = false;

    public I(InputStream inputStream) {
        this.f100539a = inputStream;
    }

    @Override
    public void b(OutputStream outputStream) throws IOException, CMSException {
        c();
        C13260d.b(this.f100539a, outputStream);
        this.f100539a.close();
    }

    public final synchronized void c() {
        if (this.f100540b) {
            throw new IllegalStateException("CMSProcessableInputStream can only be used once");
        }
        this.f100540b = true;
    }

    @Override
    public Object getContent() {
        return getInputStream();
    }

    @Override
    public InputStream getInputStream() {
        c();
        return this.f100539a;
    }
}
