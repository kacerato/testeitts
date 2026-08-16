package com.tonyodev.fetch2okhttp;

import F2.d;
import Lf.k;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.InterruptMonitor;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import okhttp3.C;
import okhttp3.E;
import okhttp3.F;
import okhttp3.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.o0;
import pf.z0;

public class OkHttpDownloader implements Downloader<z, C> {

    @NotNull
    private volatile z client;

    @NotNull
    private final Map<Downloader.Response, E> connections;
    private final Downloader.FileDownloaderType fileDownloaderType;

    /* JADX WARN: Multi-variable type inference failed */
    @k
    public OkHttpDownloader() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    private final void closeResponse(E e10) {
        if (e10 != null) {
            try {
                e10.close();
            } catch (Exception unused) {
            }
        }
    }

    private final Downloader.ServerRequest getRedirectedServerRequest(Downloader.ServerRequest serverRequest, String str) {
        return new Downloader.ServerRequest(serverRequest.getId(), serverRequest.getUrl(), serverRequest.getHeaders(), serverRequest.getFile(), serverRequest.getFileUri(), serverRequest.getTag(), serverRequest.getIdentifier(), serverRequest.getRequestMethod(), serverRequest.getExtras(), true, str, serverRequest.getSegment());
    }

    @Override
    public void close() {
        Iterator<Map.Entry<Downloader.Response, E>> it = this.connections.entrySet().iterator();
        while (it.hasNext()) {
            closeResponse(it.next().getValue());
        }
        this.connections.clear();
    }

    @Override
    public void disconnect(@NotNull Downloader.Response response) {
        M.q(response, "response");
        if (this.connections.containsKey(response)) {
            E e10 = this.connections.get(response);
            this.connections.remove(response);
            closeResponse(e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00dd  */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Downloader.Response execute(@NotNull Downloader.ServerRequest request, @NotNull InterruptMonitor interruptMonitor) {
        E okHttpResponse;
        Map<String, List<String>> responseHeaders;
        int g10;
        M.q(request, "request");
        M.q(interruptMonitor, "interruptMonitor");
        C onPreClientExecute = onPreClientExecute(this.client, request);
        if (onPreClientExecute.c(d.f6171J) == null) {
            onPreClientExecute = onPreClientExecute.h().a(d.f6171J, FetchCoreUtils.getRefererFromUrl(request.getUrl())).b();
            M.h(onPreClientExecute, "okHttpRequest.newBuilder\u2026                 .build()");
        }
        E execute = this.client.a(onPreClientExecute).execute();
        Map<String, List<String>> responseHeaders2 = execute.m().m();
        int g11 = execute.g();
        if (g11 == 302 || g11 == 301 || g11 == 303) {
            M.h(responseHeaders2, "responseHeaders");
            if (FetchCoreUtils.getHeaderValue(responseHeaders2, d.f6275t0) != null) {
                z zVar = this.client;
                String headerValue = FetchCoreUtils.getHeaderValue(responseHeaders2, d.f6275t0);
                if (headerValue == null) {
                    headerValue = "";
                }
                C onPreClientExecute2 = onPreClientExecute(zVar, getRedirectedServerRequest(request, headerValue));
                if (onPreClientExecute2.c(d.f6171J) == null) {
                    onPreClientExecute2 = onPreClientExecute2.h().a(d.f6171J, FetchCoreUtils.getRefererFromUrl(request.getUrl())).b();
                    M.h(onPreClientExecute2, "okHttpRequest.newBuilder\u2026                 .build()");
                }
                try {
                    execute.close();
                } catch (Exception unused) {
                }
                E execute2 = this.client.a(onPreClientExecute2).execute();
                okHttpResponse = execute2;
                responseHeaders = execute2.m().m();
                g10 = execute2.g();
                M.h(okHttpResponse, "okHttpResponse");
                boolean o10 = okHttpResponse.o();
                M.h(responseHeaders, "responseHeaders");
                long contentLengthFromHeader = FetchCoreUtils.getContentLengthFromHeader(responseHeaders, -1L);
                F c10 = okHttpResponse.c();
                InputStream c11 = c10 == null ? c10.c() : null;
                String copyStreamToString = o10 ? FetchCoreUtils.copyStreamToString(c11, false) : null;
                String contentHash = getContentHash(o0.J0(responseHeaders));
                boolean acceptRanges = FetchCoreUtils.acceptRanges(g10, responseHeaders);
                int i10 = g10;
                Map<String, List<String>> map = responseHeaders;
                onServerResponse(request, new Downloader.Response(i10, o10, contentLengthFromHeader, null, request, contentHash, map, acceptRanges, copyStreamToString));
                Downloader.Response response = new Downloader.Response(i10, o10, contentLengthFromHeader, c11, request, contentHash, map, acceptRanges, copyStreamToString);
                this.connections.put(response, okHttpResponse);
                return response;
            }
        }
        okHttpResponse = execute;
        responseHeaders = responseHeaders2;
        g10 = g11;
        M.h(okHttpResponse, "okHttpResponse");
        boolean o102 = okHttpResponse.o();
        M.h(responseHeaders, "responseHeaders");
        long contentLengthFromHeader2 = FetchCoreUtils.getContentLengthFromHeader(responseHeaders, -1L);
        F c102 = okHttpResponse.c();
        if (c102 == null) {
        }
        if (o102) {
        }
        String contentHash2 = getContentHash(o0.J0(responseHeaders));
        boolean acceptRanges2 = FetchCoreUtils.acceptRanges(g10, responseHeaders);
        int i102 = g10;
        Map<String, List<String>> map2 = responseHeaders;
        onServerResponse(request, new Downloader.Response(i102, o102, contentLengthFromHeader2, null, request, contentHash2, map2, acceptRanges2, copyStreamToString));
        Downloader.Response response2 = new Downloader.Response(i102, o102, contentLengthFromHeader2, c11, request, contentHash2, map2, acceptRanges2, copyStreamToString);
        this.connections.put(response2, okHttpResponse);
        return response2;
    }

    @NotNull
    public final z getClient() {
        return this.client;
    }

    @NotNull
    public final Map<Downloader.Response, E> getConnections() {
        return this.connections;
    }

    @Override
    @NotNull
    public String getContentHash(@NotNull Map<String, List<String>> responseHeaders) {
        M.q(responseHeaders, "responseHeaders");
        String headerValue = FetchCoreUtils.getHeaderValue(responseHeaders, d.f6230e0);
        return headerValue != null ? headerValue : "";
    }

    @Override
    @Nullable
    public Integer getFileSlicingCount(@NotNull Downloader.ServerRequest request, long j10) {
        M.q(request, "request");
        return null;
    }

    @Override
    public boolean getHeadRequestMethodSupported(@NotNull Downloader.ServerRequest request) {
        M.q(request, "request");
        return false;
    }

    @Override
    public int getRequestBufferSize(@NotNull Downloader.ServerRequest request) {
        M.q(request, "request");
        return 8192;
    }

    @Override
    public long getRequestContentLength(@NotNull Downloader.ServerRequest request) {
        M.q(request, "request");
        return FetchCoreUtils.getRequestContentLength(request, this);
    }

    @Override
    @NotNull
    public Downloader.FileDownloaderType getRequestFileDownloaderType(@NotNull Downloader.ServerRequest request, @NotNull Set<? extends Downloader.FileDownloaderType> supportedFileDownloaderTypes) {
        M.q(request, "request");
        M.q(supportedFileDownloaderTypes, "supportedFileDownloaderTypes");
        return this.fileDownloaderType;
    }

    @Override
    @NotNull
    public Set<Downloader.FileDownloaderType> getRequestSupportedFileDownloaderTypes(@NotNull Downloader.ServerRequest request) {
        M.q(request, "request");
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

    @Override
    public void onServerResponse(@NotNull Downloader.ServerRequest request, @NotNull Downloader.Response response) {
        M.q(request, "request");
        M.q(response, "response");
    }

    public final void setClient(@NotNull z zVar) {
        M.q(zVar, "<set-?>");
        this.client = zVar;
    }

    @Override
    public boolean verifyContentHash(@NotNull Downloader.ServerRequest request, @NotNull String hash) {
        String fileMd5String;
        M.q(request, "request");
        M.q(hash, "hash");
        if (hash.length() == 0 || (fileMd5String = FetchCoreUtils.getFileMd5String(request.getFile())) == null) {
            return true;
        }
        return fileMd5String.contentEquals(hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @k
    public OkHttpDownloader(@Nullable z zVar) {
        this(zVar, null, 2, 0 == true ? 1 : 0);
    }

    @Override
    @NotNull
    public C onPreClientExecute(@NotNull z client, @NotNull Downloader.ServerRequest request) {
        M.q(client, "client");
        M.q(request, "request");
        C.a j10 = new C.a().q(request.getUrl()).j(request.getRequestMethod(), null);
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            j10.a(entry.getKey(), entry.getValue());
        }
        C b10 = j10.b();
        M.h(b10, "okHttpRequestBuilder.build()");
        return b10;
    }

    @k
    public OkHttpDownloader(@Nullable z zVar, @NotNull Downloader.FileDownloaderType fileDownloaderType) {
        M.q(fileDownloaderType, "fileDownloaderType");
        this.fileDownloaderType = fileDownloaderType;
        Map<Downloader.Response, E> synchronizedMap = Collections.synchronizedMap(new HashMap());
        M.h(synchronizedMap, "Collections.synchronized\u2026er.Response, Response>())");
        this.connections = synchronizedMap;
        if (zVar == null) {
            z.b bVar = new z.b();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            zVar = bVar.C(20000L, timeUnit).i(15000L, timeUnit).e(null).r(true).s(true).E(false).m(OkHttpUtils.getDefaultCookieJar()).d();
            M.h(zVar, "OkHttpClient.Builder()\n \u2026r())\n            .build()");
        }
        this.client = zVar;
    }

    public OkHttpDownloader(z zVar, Downloader.FileDownloaderType fileDownloaderType, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? null : zVar, (i10 & 2) != 0 ? Downloader.FileDownloaderType.SEQUENTIAL : fileDownloaderType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OkHttpDownloader(@NotNull Downloader.FileDownloaderType fileDownloaderType) {
        this(null, fileDownloaderType);
        M.q(fileDownloaderType, "fileDownloaderType");
    }
}
