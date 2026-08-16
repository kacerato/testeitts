package com.android.tools.r8;

import java.io.InputStream;
import java.nio.charset.Charset;

public interface TextInputStream {
    Charset getCharset();

    InputStream getInputStream();
}
