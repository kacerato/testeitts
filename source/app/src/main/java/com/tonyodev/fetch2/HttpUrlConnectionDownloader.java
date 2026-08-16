package com.tonyodev.fetch2;

import F2.d;
import Lf.k;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.InterruptMonitor;
import java.io.InputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;
import pf.z0;

@t0({"SMAP\nHttpUrlConnectionDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrlConnectionDownloader.kt\ncom/tonyodev/fetch2/HttpUrlConnectionDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1855#2,2:220\n1855#2,2:222\n*S KotlinDebug\n*F\n+ 1 HttpUrlConnectionDownloader.kt\ncom/tonyodev/fetch2/HttpUrlConnectionDownloader\n*L\n43#1:220,2\n149#1:222,2\n*E\n"})
public class HttpUrlConnectionDownloader implements Downloader<HttpURLConnection, Void> {

    @NotNull
    private final HttpUrlConnectionPreferences connectionPrefs;

    @NotNull
    private final Map<Downloader.Response, HttpURLConnection> connections;

    @NotNull
    private final CookieManager cookieManager;

    @NotNull
    private final Downloader.FileDownloaderType fileDownloaderType;

    public static class HttpUrlConnectionPreferences {
        private boolean usesCache;
        private boolean usesDefaultCache;
        private int readTimeout = 20000;
        private int connectTimeout = 15000;
        private boolean followsRedirect = true;

        public final int getConnectTimeout() {
            return this.connectTimeout;
        }

        public final boolean getFollowsRedirect() {
            return this.followsRedirect;
        }

        public final int getReadTimeout() {
            return this.readTimeout;
        }

        public final boolean getUsesCache() {
            return this.usesCache;
        }

        public final boolean getUsesDefaultCache() {
            return this.usesDefaultCache;
        }

        public final void setConnectTimeout(int i10) {
            this.connectTimeout = i10;
        }

        public final void setFollowsRedirect(boolean z10) {
            this.followsRedirect = z10;
        }

        public final void setReadTimeout(int i10) {
            this.readTimeout = i10;
        }

        public final void setUsesCache(boolean z10) {
            this.usesCache = z10;
        }

        public final void setUsesDefaultCache(boolean z10) {
            this.usesDefaultCache = z10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @k
    public HttpUrlConnectionDownloader() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    private final void disconnectClient(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused) {
            }
        }
    }

    private final Map<String, List<String>> getCleanedHeaders(Map<String, List<String>> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                List<String> value = entry.getValue();
                if (value == null) {
                    value = H.J();
                }
                linkedHashMap.put(key, value);
            }
        }
        return linkedHashMap;
    }

    @Override
    public void close() {
        Iterator<Map.Entry<Downloader.Response, HttpURLConnection>> it = this.connections.entrySet().iterator();
        while (it.hasNext()) {
            disconnectClient(it.next().getValue());
        }
        this.connections.clear();
    }

    @Override
    public void disconnect(@NotNull Downloader.Response response) {
        M.p(response, "response");
        if (this.connections.containsKey(response)) {
            HttpURLConnection httpURLConnection = this.connections.get(response);
            this.connections.remove(response);
            disconnectClient(httpURLConnection);
        }
    }

    @Override
    @Nullable
    public Downloader.Response execute(@NotNull Downloader.ServerRequest request, @NotNull InterruptMonitor interruptMonitor) {
        HttpURLConnection httpURLConnection;
        Map<String, List<String>> cleanedHeaders;
        int responseCode;
        String copyStreamToString;
        InputStream inputStream;
        long j10;
        boolean z10;
        String str;
        M.p(request, "request");
        M.p(interruptMonitor, "interruptMonitor");
        CookieHandler.setDefault(this.cookieManager);
        URLConnection openConnection = new URL(request.getUrl()).openConnection();
        M.n(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection2 = (HttpURLConnection) openConnection;
        onPreClientExecute(httpURLConnection2, request);
        if (httpURLConnection2.getRequestProperty(d.f6171J) == null) {
            httpURLConnection2.addRequestProperty(d.f6171J, FetchCoreUtils.getRefererFromUrl(request.getUrl()));
        }
        httpURLConnection2.connect();
        Map<String, List<String>> headerFields = httpURLConnection2.getHeaderFields();
        M.o(headerFields, "getHeaderFields(...)");
        Map<String, List<String>> cleanedHeaders2 = getCleanedHeaders(headerFields);
        int responseCode2 = httpURLConnection2.getResponseCode();
        if ((responseCode2 == 302 || responseCode2 == 301 || responseCode2 == 303) && FetchCoreUtils.getHeaderValue(cleanedHeaders2, d.f6275t0) != null) {
            try {
                httpURLConnection2.disconnect();
            } catch (Exception unused) {
            }
            String headerValue = FetchCoreUtils.getHeaderValue(cleanedHeaders2, d.f6275t0);
            if (headerValue == null) {
                headerValue = "";
            }
            URLConnection openConnection2 = new URL(headerValue).openConnection();
            M.n(openConnection2, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) openConnection2;
            onPreClientExecute(httpURLConnection3, request);
            if (httpURLConnection3.getRequestProperty(d.f6171J) == null) {
                httpURLConnection3.addRequestProperty(d.f6171J, FetchCoreUtils.getRefererFromUrl(request.getUrl()));
            }
            httpURLConnection3.connect();
            Map<String, List<String>> headerFields2 = httpURLConnection3.getHeaderFields();
            M.o(headerFields2, "getHeaderFields(...)");
            httpURLConnection = httpURLConnection3;
            cleanedHeaders = getCleanedHeaders(headerFields2);
            responseCode = httpURLConnection3.getResponseCode();
        } else {
            httpURLConnection = httpURLConnection2;
            cleanedHeaders = cleanedHeaders2;
            responseCode = responseCode2;
        }
        if (isResponseOk(responseCode)) {
            long contentLengthFromHeader = FetchCoreUtils.getContentLengthFromHeader(cleanedHeaders, -1L);
            inputStream = httpURLConnection.getInputStream();
            copyStreamToString = null;
            j10 = contentLengthFromHeader;
            str = getContentHash(cleanedHeaders);
            z10 = true;
        } else {
            copyStreamToString = FetchCoreUtils.copyStreamToString(httpURLConnection.getErrorStream(), false);
            inputStream = null;
            j10 = -1;
            z10 = false;
            str = "";
        }
        boolean acceptRanges = FetchCoreUtils.acceptRanges(responseCode, cleanedHeaders);
        Map<String, List<String>> headerFields3 = httpURLConnection.getHeaderFields();
        M.o(headerFields3, "getHeaderFields(...)");
        int i10 = responseCode;
        boolean z11 = z10;
        long j11 = j10;
        String str2 = str;
        HttpURLConnection httpURLConnection4 = httpURLConnection;
        String str3 = copyStreamToString;
        onServerResponse(request, new Downloader.Response(i10, z11, j11, null, request, str2, headerFields3, acceptRanges, str3));
        Downloader.Response response = new Downloader.Response(i10, z11, j11, inputStream, request, str2, cleanedHeaders, acceptRanges, str3);
        this.connections.put(response, httpURLConnection4);
        return response;
    }

    @NotNull
    public final HttpUrlConnectionPreferences getConnectionPrefs() {
        return this.connectionPrefs;
    }

    @NotNull
    public final Map<Downloader.Response, HttpURLConnection> getConnections() {
        return this.connections;
    }

    @Override
    @NotNull
    public String getContentHash(@NotNull Map<String, List<String>> responseHeaders) {
        M.p(responseHeaders, "responseHeaders");
        String headerValue = FetchCoreUtils.getHeaderValue(responseHeaders, d.f6230e0);
        return headerValue == null ? "" : headerValue;
    }

    @NotNull
    public final CookieManager getCookieManager() {
        return this.cookieManager;
    }

    @Override
    @Nullable
    public Integer getFileSlicingCount(@NotNull Downloader.ServerRequest request, long j10) {
        M.p(request, "request");
        return null;
    }

    @Override
    public boolean getHeadRequestMethodSupported(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        return false;
    }

    @Override
    public int getRequestBufferSize(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        return 8192;
    }

    @Override
    public long getRequestContentLength(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        return FetchCoreUtils.getRequestContentLength(request, this);
    }

    @Override
    @NotNull
    public Downloader.FileDownloaderType getRequestFileDownloaderType(@NotNull Downloader.ServerRequest request, @NotNull Set<? extends Downloader.FileDownloaderType> supportedFileDownloaderTypes) {
        M.p(request, "request");
        M.p(supportedFileDownloaderTypes, "supportedFileDownloaderTypes");
        return this.fileDownloaderType;
    }

    @Override
    @NotNull
    public Set<Downloader.FileDownloaderType> getRequestSupportedFileDownloaderTypes(@NotNull Downloader.ServerRequest request) {
        M.p(request, "request");
        Downloader.FileDownloaderType fileDownloaderType = this.fileDownloaderType;
        if (fileDownloaderType == Downloader.FileDownloaderType.SEQUENTIAL) {
            return z0.q(fileDownloaderType);
        }
        try {
            return FetchCoreUtils.getRequestSupportedFileDownloaderTypes(request, this);
        } catch (Exception unused) {
            return z0.q(this.fileDownloaderType);
        }
    }

    public final boolean isResponseOk(int i10) {
        return 200 <= i10 && i10 < 300;
    }

    @Override
    public void onServerResponse(@NotNull Downloader.ServerRequest request, @NotNull Downloader.Response response) {
        M.p(request, "request");
        M.p(response, "response");
    }

    @Override
    public boolean verifyContentHash(@NotNull Downloader.ServerRequest request, @NotNull String hash) {
        String fileMd5String;
        M.p(request, "request");
        M.p(hash, "hash");
        if (hash.length() == 0 || (fileMd5String = FetchCoreUtils.getFileMd5String(request.getFile())) == null) {
            return true;
        }
        return fileMd5String.contentEquals(hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @k
    public HttpUrlConnectionDownloader(@Nullable HttpUrlConnectionPreferences httpUrlConnectionPreferences) {
        this(httpUrlConnectionPreferences, null, 2, 0 == true ? 1 : 0);
    }

    @Override
    @Nullable
    public Void onPreClientExecute(@NotNull HttpURLConnection client, @NotNull Downloader.ServerRequest request) {
        M.p(client, "client");
        M.p(request, "request");
        client.setRequestMethod(request.getRequestMethod());
        client.setReadTimeout(this.connectionPrefs.getReadTimeout());
        client.setConnectTimeout(this.connectionPrefs.getConnectTimeout());
        client.setUseCaches(this.connectionPrefs.getUsesCache());
        client.setDefaultUseCaches(this.connectionPrefs.getUsesDefaultCache());
        client.setInstanceFollowRedirects(this.connectionPrefs.getFollowsRedirect());
        client.setDoInput(true);
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            client.addRequestProperty(entry.getKey(), entry.getValue());
        }
        return null;
    }

    @k
    public HttpUrlConnectionDownloader(@Nullable HttpUrlConnectionPreferences httpUrlConnectionPreferences, @NotNull Downloader.FileDownloaderType fileDownloaderType) {
        M.p(fileDownloaderType, "fileDownloaderType");
        this.fileDownloaderType = fileDownloaderType;
        this.connectionPrefs = httpUrlConnectionPreferences == null ? new HttpUrlConnectionPreferences() : httpUrlConnectionPreferences;
        Map<Downloader.Response, HttpURLConnection> synchronizedMap = Collections.synchronizedMap(new HashMap());
        M.o(synchronizedMap, "synchronizedMap(...)");
        this.connections = synchronizedMap;
        this.cookieManager = FetchCoreUtils.getDefaultCookieManager();
    }

    public HttpUrlConnectionDownloader(HttpUrlConnectionPreferences httpUrlConnectionPreferences, Downloader.FileDownloaderType fileDownloaderType, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? null : httpUrlConnectionPreferences, (i10 & 2) != 0 ? Downloader.FileDownloaderType.SEQUENTIAL : fileDownloaderType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpUrlConnectionDownloader(@NotNull Downloader.FileDownloaderType fileDownloaderType) {
        this(null, fileDownloaderType);
        M.p(fileDownloaderType, "fileDownloaderType");
    }
}
