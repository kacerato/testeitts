package com.tonyodev.fetch2core;

import android.content.ContentResolver;
import android.content.Context;
import com.tonyodev.fetch2core.Downloader;
import java.io.FileNotFoundException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public class DefaultStorageResolver implements StorageResolver {

    @NotNull
    private final Context context;

    @NotNull
    private final String defaultTempDir;

    public DefaultStorageResolver(@NotNull Context context, @NotNull String defaultTempDir) {
        M.q(context, "context");
        M.q(defaultTempDir, "defaultTempDir");
        this.context = context;
        this.defaultTempDir = defaultTempDir;
    }

    @Override
    @NotNull
    public String createFile(@NotNull String file, boolean z10) {
        M.q(file, "file");
        return StorageResolverHelper.createFileAtPath(file, z10, this.context);
    }

    @Override
    public boolean deleteFile(@NotNull String file) {
        M.q(file, "file");
        return StorageResolverHelper.deleteFile(file, this.context);
    }

    @Override
    public boolean fileExists(@NotNull String file) {
        M.q(file, "file");
        if (file.length() == 0) {
            return false;
        }
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            M.h(contentResolver, "context.contentResolver");
            StorageResolverHelper.getOutputResourceWrapper(file, contentResolver).close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final String getDefaultTempDir() {
        return this.defaultTempDir;
    }

    @Override
    @NotNull
    public String getDirectoryForFileDownloaderTypeParallel(@NotNull Downloader.ServerRequest request) {
        M.q(request, "request");
        return this.defaultTempDir;
    }

    @Override
    @NotNull
    public OutputResourceWrapper getRequestOutputResourceWrapper(@NotNull Downloader.ServerRequest request) {
        M.q(request, "request");
        String file = request.getFile();
        ContentResolver contentResolver = this.context.getContentResolver();
        M.h(contentResolver, "context.contentResolver");
        return StorageResolverHelper.getOutputResourceWrapper(file, contentResolver);
    }

    @Override
    public boolean preAllocateFile(@NotNull String file, long j10) {
        M.q(file, "file");
        if (file.length() != 0) {
            if (j10 < 1) {
                return true;
            }
            StorageResolverHelper.allocateFile(file, j10, this.context);
            return true;
        }
        throw new FileNotFoundException(file + " file_not_found");
    }

    @Override
    public boolean renameFile(@NotNull String oldFile, @NotNull String newFile) {
        M.q(oldFile, "oldFile");
        M.q(newFile, "newFile");
        if (oldFile.length() == 0 || newFile.length() == 0) {
            return false;
        }
        return StorageResolverHelper.renameFile(oldFile, newFile, this.context);
    }
}
