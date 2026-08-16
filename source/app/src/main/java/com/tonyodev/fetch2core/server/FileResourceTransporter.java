package com.tonyodev.fetch2core.server;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketAddress;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FileResourceTransporter extends FileResourceTransporterWriter {
    public static final int BUFFER_SIZE = 8192;
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();
        public static final int BUFFER_SIZE = 8192;

        private Companion() {
        }
    }

    void close();

    void connect(@NotNull SocketAddress socketAddress);

    @NotNull
    InputStream getInputStream();

    @NotNull
    OutputStream getOutputStream();

    boolean isClosed();

    int readRawBytes(@NotNull byte[] bArr, int i10, int i11);

    @Nullable
    FileRequest receiveFileRequest();

    @Nullable
    FileResponse receiveFileResponse();
}
