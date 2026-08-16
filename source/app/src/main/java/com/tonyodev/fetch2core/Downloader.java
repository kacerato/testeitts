package com.tonyodev.fetch2core;

import android.net.Uri;
import java.io.Closeable;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Downloader<T, R> extends Closeable {

    public enum FileDownloaderType {
        SEQUENTIAL,
        PARALLEL
    }

    public static class Response {
        private final boolean acceptsRanges;

        @Nullable
        private final InputStream byteStream;
        private final int code;
        private final long contentLength;

        @Nullable
        private final String errorResponse;

        @NotNull
        private final String hash;
        private final boolean isSuccessful;

        @NotNull
        private final ServerRequest request;

        @NotNull
        private final Map<String, List<String>> responseHeaders;

        /* JADX WARN: Multi-variable type inference failed */
        public Response(int i10, boolean z10, long j10, @Nullable InputStream inputStream, @NotNull ServerRequest request, @NotNull String hash, @NotNull Map<String, ? extends List<String>> responseHeaders, boolean z11, @Nullable String str) {
            M.q(request, "request");
            M.q(hash, "hash");
            M.q(responseHeaders, "responseHeaders");
            this.code = i10;
            this.isSuccessful = z10;
            this.contentLength = j10;
            this.byteStream = inputStream;
            this.request = request;
            this.hash = hash;
            this.responseHeaders = responseHeaders;
            this.acceptsRanges = z11;
            this.errorResponse = str;
        }

        public final boolean getAcceptsRanges() {
            return this.acceptsRanges;
        }

        @Nullable
        public final InputStream getByteStream() {
            return this.byteStream;
        }

        public final int getCode() {
            return this.code;
        }

        public final long getContentLength() {
            return this.contentLength;
        }

        @Nullable
        public final String getErrorResponse() {
            return this.errorResponse;
        }

        @NotNull
        public final String getHash() {
            return this.hash;
        }

        @NotNull
        public final ServerRequest getRequest() {
            return this.request;
        }

        @NotNull
        public final Map<String, List<String>> getResponseHeaders() {
            return this.responseHeaders;
        }

        public final boolean isSuccessful() {
            return this.isSuccessful;
        }
    }

    public static class ServerRequest {

        @NotNull
        private final Extras extras;

        @NotNull
        private final String file;

        @NotNull
        private final Uri fileUri;

        @NotNull
        private final Map<String, String> headers;

        private final int f83849id;
        private final long identifier;

        @NotNull
        private final String redirectUrl;
        private final boolean redirected;

        @NotNull
        private final String requestMethod;
        private final int segment;

        @Nullable
        private final String tag;

        @NotNull
        private final String url;

        public ServerRequest(int i10, @NotNull String url, @NotNull Map<String, String> headers, @NotNull String file, @NotNull Uri fileUri, @Nullable String str, long j10, @NotNull String requestMethod, @NotNull Extras extras, boolean z10, @NotNull String redirectUrl, int i11) {
            M.q(url, "url");
            M.q(headers, "headers");
            M.q(file, "file");
            M.q(fileUri, "fileUri");
            M.q(requestMethod, "requestMethod");
            M.q(extras, "extras");
            M.q(redirectUrl, "redirectUrl");
            this.f83849id = i10;
            this.url = url;
            this.headers = headers;
            this.file = file;
            this.fileUri = fileUri;
            this.tag = str;
            this.identifier = j10;
            this.requestMethod = requestMethod;
            this.extras = extras;
            this.redirected = z10;
            this.redirectUrl = redirectUrl;
            this.segment = i11;
        }

        @NotNull
        public final Extras getExtras() {
            return this.extras;
        }

        @NotNull
        public final String getFile() {
            return this.file;
        }

        @NotNull
        public final Uri getFileUri() {
            return this.fileUri;
        }

        @NotNull
        public final Map<String, String> getHeaders() {
            return this.headers;
        }

        public final int getId() {
            return this.f83849id;
        }

        public final long getIdentifier() {
            return this.identifier;
        }

        @NotNull
        public final String getRedirectUrl() {
            return this.redirectUrl;
        }

        public final boolean getRedirected() {
            return this.redirected;
        }

        @NotNull
        public final String getRequestMethod() {
            return this.requestMethod;
        }

        public final int getSegment() {
            return this.segment;
        }

        @Nullable
        public final String getTag() {
            return this.tag;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }
    }

    void disconnect(@NotNull Response response);

    @Nullable
    Response execute(@NotNull ServerRequest serverRequest, @NotNull InterruptMonitor interruptMonitor);

    @NotNull
    String getContentHash(@NotNull Map<String, List<String>> map);

    @Nullable
    Integer getFileSlicingCount(@NotNull ServerRequest serverRequest, long j10);

    boolean getHeadRequestMethodSupported(@NotNull ServerRequest serverRequest);

    int getRequestBufferSize(@NotNull ServerRequest serverRequest);

    long getRequestContentLength(@NotNull ServerRequest serverRequest);

    @NotNull
    FileDownloaderType getRequestFileDownloaderType(@NotNull ServerRequest serverRequest, @NotNull Set<? extends FileDownloaderType> set);

    @NotNull
    Set<FileDownloaderType> getRequestSupportedFileDownloaderTypes(@NotNull ServerRequest serverRequest);

    @Nullable
    R onPreClientExecute(T t10, @NotNull ServerRequest serverRequest);

    void onServerResponse(@NotNull ServerRequest serverRequest, @NotNull Response response);

    boolean verifyContentHash(@NotNull ServerRequest serverRequest, @NotNull String str);
}
