package com.ardor3d.util;

import java.net.MalformedURLException;
import java.net.URL;

public class UrlUtils {
    public static URL resolveRelativeURL(URL url, String str) throws MalformedURLException {
        return new URL(new URL(url.toString().replaceAll("\\%2[F,f]", "/")), str);
    }
}
