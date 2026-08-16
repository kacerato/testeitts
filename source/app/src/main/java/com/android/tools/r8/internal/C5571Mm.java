package com.android.tools.r8.internal;

import java.io.BufferedWriter;
import org.apache.commons.lang3.StringUtils;

public final class C5571Mm implements InterfaceC5456Km {

    public final BufferedWriter f42396a;

    public C5571Mm(BufferedWriter bufferedWriter) {
        this.f42396a = bufferedWriter;
    }

    @Override
    public final void a(String str) {
        this.f42396a.write(str.replace(StringUtils.CR, "<CR>"));
        this.f42396a.write(10);
    }

    @Override
    public final void close() {
        this.f42396a.close();
    }
}
