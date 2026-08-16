package com.android.tools.r8.internal;

import com.android.tools.r8.TextOutputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

public final class C5936Su0 implements TextOutputStream {

    public final OutputStream f44332a;

    public C5936Su0(Path path) {
        this.f44332a = Files.newOutputStream(path, new OpenOption[0]);
    }

    @Override
    public final Charset getCharset() {
        return StandardCharsets.UTF_8;
    }

    @Override
    public final OutputStream getOutputStream() {
        return this.f44332a;
    }
}
