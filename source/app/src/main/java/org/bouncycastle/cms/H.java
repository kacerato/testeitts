package org.bouncycastle.cms;

import fm.C13260d;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import oh.C14549x;
import uh.InterfaceC15621l;

public class H implements V, J {

    public static final int f100529d = 32768;

    public final C14549x f100530a;

    public final File f100531b;

    public final int f100532c;

    public H(File file) {
        this(file, 32768);
    }

    @Override
    public C14549x a() {
        return this.f100530a;
    }

    @Override
    public void b(OutputStream outputStream) throws IOException, CMSException {
        FileInputStream fileInputStream = new FileInputStream(this.f100531b);
        C13260d.c(fileInputStream, outputStream, this.f100532c);
        fileInputStream.close();
    }

    @Override
    public Object getContent() {
        return this.f100531b;
    }

    @Override
    public InputStream getInputStream() throws IOException, CMSException {
        return new BufferedInputStream(new FileInputStream(this.f100531b), this.f100532c);
    }

    public H(File file, int i10) {
        this(InterfaceC15621l.f120705m8, file, i10);
    }

    public H(C14549x c14549x, File file, int i10) {
        this.f100530a = c14549x;
        this.f100531b = file;
        this.f100532c = i10;
    }
}
