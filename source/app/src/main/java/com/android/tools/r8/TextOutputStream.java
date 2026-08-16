package com.android.tools.r8;

import java.io.OutputStream;
import java.nio.charset.Charset;

public interface TextOutputStream {
    Charset getCharset();

    OutputStream getOutputStream();
}
