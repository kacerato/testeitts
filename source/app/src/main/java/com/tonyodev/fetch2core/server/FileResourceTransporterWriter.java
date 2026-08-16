package com.tonyodev.fetch2core.server;

import org.jetbrains.annotations.NotNull;

public interface FileResourceTransporterWriter {
    void sendFileRequest(@NotNull FileRequest fileRequest);

    void sendFileResponse(@NotNull FileResponse fileResponse);

    void sendRawBytes(@NotNull byte[] bArr, int i10, int i11);
}
