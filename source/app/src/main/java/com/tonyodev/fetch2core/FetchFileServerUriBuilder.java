package com.tonyodev.fetch2core;

import android.net.Uri;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class FetchFileServerUriBuilder {
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String FETCH_URI_SCHEME = "fetchlocal";
    private String host = "00:00:00:00";
    private String identifier = "";
    private int port;

    public static final class Companion {
        private Companion() {
        }

        public Companion(C14026x c14026x) {
            this();
        }
    }

    @NotNull
    public final Uri build() {
        Uri build = new Uri.Builder().scheme(FETCH_URI_SCHEME).encodedAuthority(this.host + ':' + this.port).appendPath(this.identifier).build();
        M.h(build, "Uri.Builder()\n          \u2026\n                .build()");
        return build;
    }

    @NotNull
    public final FetchFileServerUriBuilder setFileResourceIdentifier(@NotNull String fileResourceName) {
        M.q(fileResourceName, "fileResourceName");
        this.identifier = fileResourceName;
        return this;
    }

    @NotNull
    public final FetchFileServerUriBuilder setHostAddress(@NotNull String hostAddress) {
        M.q(hostAddress, "hostAddress");
        this.host = hostAddress;
        return this;
    }

    @NotNull
    public final FetchFileServerUriBuilder setHostInetAddress(@NotNull String hostAddress, int i10) {
        M.q(hostAddress, "hostAddress");
        this.port = i10;
        this.host = hostAddress;
        return this;
    }

    @NotNull
    public final FetchFileServerUriBuilder setHostPort(int i10) {
        this.port = i10;
        return this;
    }

    @NotNull
    public String toString() {
        String uri = build().toString();
        M.h(uri, "build().toString()");
        return uri;
    }

    @NotNull
    public final FetchFileServerUriBuilder setFileResourceIdentifier(long j10) {
        this.identifier = String.valueOf(j10);
        return this;
    }
}
