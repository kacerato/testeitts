package com.android.tools.r8.internal;

import java.io.BufferedReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.apache.commons.lang3.StringUtils;

public final class C5514Lm implements InterfaceC5456Km {

    public final BufferedReader f42077a;

    public C5514Lm(BufferedReader bufferedReader) {
        this.f42077a = bufferedReader;
    }

    @Override
    public final void a(String str) {
        String replace = str.replace(StringUtils.CR, "<CR>");
        String readLine = this.f42077a.readLine();
        if (readLine.equals(replace)) {
            return;
        }
        Charset charset = StandardCharsets.UTF_8;
        String str2 = new String(replace.getBytes(charset), charset);
        if (str2.equals(readLine)) {
            return;
        }
        throw new AssertionError((Object) ("\nMismatch for line: " + str2 + "\n    and dump-line: " + readLine));
    }

    @Override
    public final void close() {
        this.f42077a.close();
    }
}
