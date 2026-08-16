package com.android.tools.r8.retrace;

import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;

public interface ProguardMapProducer {
    static InputStream a(String str) {
        return new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8));
    }

    static ProguardMapProducer fromBytes(final byte[]... bArr) {
        return new ProguardMapProducer() {
            @Override
            public final InputStream get() {
                InputStream a10;
                a10 = ProguardMapProducer.a(bArr);
                return a10;
            }
        };
    }

    static ProguardMapProducer fromPath(Path path) {
        return new C11095e(path);
    }

    static ProguardMapProducer fromString(final String str) {
        return new ProguardMapProducer() {
            @Override
            public final InputStream get() {
                InputStream a10;
                a10 = ProguardMapProducer.a(String.this);
                return a10;
            }
        };
    }

    InputStream get() throws IOException;

    default Path getPath() throws FileNotFoundException {
        return null;
    }

    default boolean isFileBacked() {
        return false;
    }

    static InputStream a(byte[][] bArr) {
        int i10 = 0;
        for (byte[] bArr2 : bArr) {
            i10 += bArr2.length;
        }
        byte[] bArr3 = new byte[i10];
        int i11 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, i11, bArr4.length);
            i11 += bArr4.length;
        }
        return new ByteArrayInputStream(bArr3);
    }
}
