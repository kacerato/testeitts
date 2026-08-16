package com.tonyodev.fetch2core;

import com.tonyodev.fetch2core.Downloader;
import org.jetbrains.annotations.NotNull;

public interface StorageResolver {

    public static final class DefaultImpls {
        public static String createFile$default(StorageResolver storageResolver, String str, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createFile");
            }
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return storageResolver.createFile(str, z10);
        }

        public static boolean preAllocateFile$default(StorageResolver storageResolver, String str, long j10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: preAllocateFile");
            }
            if ((i10 & 2) != 0) {
                j10 = -1;
            }
            return storageResolver.preAllocateFile(str, j10);
        }
    }

    @NotNull
    String createFile(@NotNull String str, boolean z10);

    boolean deleteFile(@NotNull String str);

    boolean fileExists(@NotNull String str);

    @NotNull
    String getDirectoryForFileDownloaderTypeParallel(@NotNull Downloader.ServerRequest serverRequest);

    @NotNull
    OutputResourceWrapper getRequestOutputResourceWrapper(@NotNull Downloader.ServerRequest serverRequest);

    boolean preAllocateFile(@NotNull String str, long j10);

    boolean renameFile(@NotNull String str, @NotNull String str2);
}
