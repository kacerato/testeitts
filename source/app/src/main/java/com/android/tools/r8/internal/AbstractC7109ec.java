package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public abstract class AbstractC7109ec {

    public static final Charset f47726a;

    static {
        Charset.forName(CharEncoding.US_ASCII);
        Charset.forName("ISO-8859-1");
        f47726a = Charset.forName("UTF-8");
        Charset.forName(CharEncoding.UTF_16BE);
        Charset.forName(CharEncoding.UTF_16LE);
        Charset.forName(CharEncoding.UTF_16);
    }
}
