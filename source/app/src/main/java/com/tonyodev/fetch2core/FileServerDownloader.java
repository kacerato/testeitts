package com.tonyodev.fetch2core;

import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.server.FetchFileResourceTransporter;
import com.tonyodev.fetch2core.server.FileRequest;
import java.net.InetSocketAddress;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FileServerDownloader extends Downloader<FetchFileResourceTransporter, TransporterRequest> {

    public static class TransporterRequest {

        @NotNull
        private InetSocketAddress inetSocketAddress = new InetSocketAddress(0);

        @NotNull
        private FileRequest fileRequest = new FileRequest(0, null, 0, 0, null, null, null, 0, 0, false, 1023, null);

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!M.g(getClass(), obj != null ? obj.getClass() : null)) {
                return false;
            }
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.tonyodev.fetch2core.FileServerDownloader.TransporterRequest");
            }
            TransporterRequest transporterRequest = (TransporterRequest) obj;
            return M.g(this.inetSocketAddress, transporterRequest.inetSocketAddress) && M.g(this.fileRequest, transporterRequest.fileRequest);
        }

        @NotNull
        public final FileRequest getFileRequest() {
            return this.fileRequest;
        }

        @NotNull
        public final InetSocketAddress getInetSocketAddress() {
            return this.inetSocketAddress;
        }

        public int hashCode() {
            return (this.inetSocketAddress.hashCode() * 31) + this.fileRequest.hashCode();
        }

        public final void setFileRequest(@NotNull FileRequest fileRequest) {
            M.q(fileRequest, "<set-?>");
            this.fileRequest = fileRequest;
        }

        public final void setInetSocketAddress(@NotNull InetSocketAddress inetSocketAddress) {
            M.q(inetSocketAddress, "<set-?>");
            this.inetSocketAddress = inetSocketAddress;
        }

        @NotNull
        public String toString() {
            return "TransporterRequest(inetSocketAddress=" + ((Object) this.inetSocketAddress) + ", fileRequest=" + ((Object) this.fileRequest) + ')';
        }
    }

    @NotNull
    List<FileResource> getFetchFileServerCatalog(@NotNull Downloader.ServerRequest serverRequest);
}
