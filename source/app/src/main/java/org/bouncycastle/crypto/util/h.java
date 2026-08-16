package org.bouncycastle.crypto.util;

import fm.C13260d;
import hi.C13486b;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.SecureRandom;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class h implements org.bouncycastle.util.g, Serializable {

    public transient i f101064b;

    public transient C13486b f101065c;

    public h(C13486b c13486b, i iVar) {
        if (c13486b == null) {
            throw new NullPointerException("AlgorithmIdentifier passed to JournaledAlgorithm is null");
        }
        if (iVar == null) {
            throw new NullPointerException("JournalingSecureRandom passed to JournaledAlgorithm is null");
        }
        this.f101064b = iVar;
        this.f101065c = c13486b;
    }

    public static h c(File file, SecureRandom secureRandom) throws IOException, ClassNotFoundException {
        if (file == null) {
            throw new NullPointerException("File for loading is null in JournaledAlgorithm");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            return new h(C13260d.e(bufferedInputStream), secureRandom);
        } finally {
            bufferedInputStream.close();
        }
    }

    public static h d(InputStream inputStream, SecureRandom secureRandom) throws IOException, ClassNotFoundException {
        if (inputStream == null) {
            throw new NullPointerException("stream for loading is null in JournaledAlgorithm");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            return new h(C13260d.e(bufferedInputStream), secureRandom);
        } finally {
            bufferedInputStream.close();
        }
    }

    private void f(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        e((byte[]) objectInputStream.readObject(), Bi.r.h());
    }

    private void i(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public C13486b a() {
        return this.f101065c;
    }

    public i b() {
        return this.f101064b;
    }

    public final void e(byte[] bArr, SecureRandom secureRandom) {
        E G10 = E.G(bArr);
        this.f101065c = C13486b.v(G10.I(0));
        this.f101064b = new i(AbstractC14551y.F(G10.I(1)).H(), secureRandom);
    }

    public void g(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("file for storage is null in JournaledAlgorithm");
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            h(fileOutputStream);
        } finally {
            fileOutputStream.close();
        }
    }

    @Override
    public byte[] getEncoded() throws IOException {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f101065c);
        c14518h.a(new C0(this.f101064b.b()));
        return new G0(c14518h).getEncoded();
    }

    public void h(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new NullPointerException("output stream for storage is null in JournaledAlgorithm");
        }
        outputStream.write(getEncoded());
    }

    public h(byte[] bArr) {
        this(bArr, Bi.r.h());
    }

    public h(byte[] bArr, SecureRandom secureRandom) {
        if (bArr == null) {
            throw new NullPointerException("encoding passed to JournaledAlgorithm is null");
        }
        if (secureRandom == null) {
            throw new NullPointerException("random passed to JournaledAlgorithm is null");
        }
        e(bArr, secureRandom);
    }
}
