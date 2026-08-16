package com.android.tools.r8.internal;

import com.android.tools.r8.TextInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

public class C5878Ru0 implements TextInputStream {

    public final InputStream f44017a;

    public C5878Ru0(Path path) throws IOException {
        this(Files.newInputStream(path, new OpenOption[0]));
    }

    @Override
    public final Charset getCharset() {
        return StandardCharsets.UTF_8;
    }

    @Override
    public final InputStream getInputStream() {
        return this.f44017a;
    }

    public C5878Ru0(String str) {
        this(new ByteArrayInputStream(str.getBytes()));
    }

    public C5878Ru0(InputStream inputStream) {
        this.f44017a = inputStream;
    }
}
