package com.tonyodev.fetch2okhttp;

import Lf.j;
import com.tonyodev.fetch2core.FetchCoreUtils;
import okhttp3.JavaNetCookieJar;
import okhttp3.n;
import org.jetbrains.annotations.NotNull;

@j(name = "OkHttpUtils")
public final class OkHttpUtils {
    @NotNull
    public static final n getDefaultCookieJar() {
        return new JavaNetCookieJar(FetchCoreUtils.getDefaultCookieManager());
    }
}
