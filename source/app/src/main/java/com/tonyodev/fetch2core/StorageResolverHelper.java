package com.tonyodev.fetch2core;

import Lf.j;
import Lf.k;
import android.app.DownloadManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@j(name = "StorageResolverHelper")
public final class StorageResolverHelper {
    public static final void allocateFile(@NotNull String filePath, long j10, @NotNull Context context) {
        M.q(filePath, "filePath");
        M.q(context, "context");
        if (FetchCoreUtils.isUriPath(filePath)) {
            Uri uri = Uri.parse(filePath);
            M.h(uri, "uri");
            if (M.g(uri.getScheme(), ContentResolver.SCHEME_FILE)) {
                String path = uri.getPath();
                if (path != null) {
                    filePath = path;
                }
                allocateFile(new File(filePath), j10);
                return;
            }
            if (M.g(uri.getScheme(), "content")) {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "w");
                if (openFileDescriptor != null) {
                    allocateParcelFileDescriptor(openFileDescriptor, j10);
                    return;
                }
                throw new IOException(FetchErrorStrings.FILE_ALLOCATION_ERROR);
            }
            throw new IOException(FetchErrorStrings.FILE_ALLOCATION_ERROR);
        }
        allocateFile(new File(filePath), j10);
    }

    public static final void allocateParcelFileDescriptor(@NotNull ParcelFileDescriptor parcelFileDescriptor, long j10) {
        M.q(parcelFileDescriptor, "parcelFileDescriptor");
        if (j10 > 0) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(parcelFileDescriptor.getFileDescriptor());
                if (fileOutputStream.getChannel().size() == j10) {
                    return;
                }
                fileOutputStream.getChannel().position(j10 - 1);
                fileOutputStream.write(1);
            } catch (Exception unused) {
                throw new IOException(FetchErrorStrings.FILE_ALLOCATION_ERROR);
            }
        }
    }

    @NotNull
    public static final String createFileAtPath(@NotNull String filePath, boolean z10, @NotNull Context context) {
        M.q(filePath, "filePath");
        M.q(context, "context");
        if (!FetchCoreUtils.isUriPath(filePath)) {
            return createLocalFile(filePath, z10);
        }
        Uri uri = Uri.parse(filePath);
        M.h(uri, "uri");
        if (M.g(uri.getScheme(), ContentResolver.SCHEME_FILE)) {
            String path = uri.getPath();
            if (path != null) {
                filePath = path;
            }
            return createLocalFile(filePath, z10);
        }
        if (!M.g(uri.getScheme(), "content")) {
            throw new IOException(FetchErrorStrings.FNC);
        }
        if (context.getContentResolver().openFileDescriptor(uri, "w") != null) {
            return filePath;
        }
        throw new IOException(FetchErrorStrings.FNC);
    }

    @NotNull
    public static final String createLocalFile(@NotNull String filePath, boolean z10) {
        M.q(filePath, "filePath");
        if (!z10) {
            FetchCoreUtils.createFile(new File(filePath));
            return filePath;
        }
        String absolutePath = FetchCoreUtils.getIncrementedFileIfOriginalExists(filePath).getAbsolutePath();
        M.h(absolutePath, "getIncrementedFileIfOrig\u2026ts(filePath).absolutePath");
        return absolutePath;
    }

    public static final boolean deleteFile(@NotNull String filePath, @NotNull Context context) {
        M.q(filePath, "filePath");
        M.q(context, "context");
        if (!FetchCoreUtils.isUriPath(filePath)) {
            return FetchCoreUtils.deleteFile(new File(filePath));
        }
        Uri uri = Uri.parse(filePath);
        M.h(uri, "uri");
        if (!M.g(uri.getScheme(), ContentResolver.SCHEME_FILE)) {
            if (M.g(uri.getScheme(), "content")) {
                return DocumentsContract.isDocumentUri(context, uri) ? DocumentsContract.deleteDocument(context.getContentResolver(), uri) : context.getContentResolver().delete(uri, null, null) > 0;
            }
            return false;
        }
        File file = new File(uri.getPath());
        if (file.canWrite() && file.exists()) {
            return FetchCoreUtils.deleteFile(file);
        }
        return false;
    }

    @k
    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull FileDescriptor fileDescriptor) {
        return getOutputResourceWrapper$default(fileDescriptor, (ParcelFileDescriptor) null, 2, (Object) null);
    }

    public static OutputResourceWrapper getOutputResourceWrapper$default(FileDescriptor fileDescriptor, ParcelFileDescriptor parcelFileDescriptor, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            parcelFileDescriptor = null;
        }
        return getOutputResourceWrapper(fileDescriptor, parcelFileDescriptor);
    }

    public static final boolean renameFile(@NotNull String oldFile, @NotNull String newFile, @NotNull Context context) {
        M.q(oldFile, "oldFile");
        M.q(newFile, "newFile");
        M.q(context, "context");
        if (!FetchCoreUtils.isUriPath(oldFile)) {
            return FetchCoreUtils.renameFile(new File(oldFile), new File(newFile));
        }
        Uri uri = Uri.parse(oldFile);
        M.h(uri, "uri");
        if (M.g(uri.getScheme(), ContentResolver.SCHEME_FILE)) {
            File file = new File(uri.getPath());
            if (file.canWrite() && file.exists()) {
                return FetchCoreUtils.renameFile(file, new File(newFile));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(DownloadManager.COLUMN_URI, newFile);
            if (context.getContentResolver().update(uri, contentValues, null, null) > 0) {
                return true;
            }
        } else if (M.g(uri.getScheme(), "content")) {
            if (!DocumentsContract.isDocumentUri(context, uri)) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put(DownloadManager.COLUMN_URI, newFile);
                if (context.getContentResolver().update(uri, contentValues2, null, null) > 0) {
                    return true;
                }
            } else if (DocumentsContract.renameDocument(context.getContentResolver(), uri, newFile) != null) {
                return true;
            }
        }
        return false;
    }

    @k
    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull FileOutputStream fileOutputStream) {
        return getOutputResourceWrapper$default(fileOutputStream, (ParcelFileDescriptor) null, 2, (Object) null);
    }

    public static OutputResourceWrapper getOutputResourceWrapper$default(FileOutputStream fileOutputStream, ParcelFileDescriptor parcelFileDescriptor, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            parcelFileDescriptor = null;
        }
        return getOutputResourceWrapper(fileOutputStream, parcelFileDescriptor);
    }

    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull ParcelFileDescriptor parcelFileDescriptor) {
        M.q(parcelFileDescriptor, "parcelFileDescriptor");
        FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
        M.h(fileDescriptor, "parcelFileDescriptor.fileDescriptor");
        return getOutputResourceWrapper(fileDescriptor, parcelFileDescriptor);
    }

    @k
    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull FileDescriptor fileDescriptor, @Nullable ParcelFileDescriptor parcelFileDescriptor) {
        M.q(fileDescriptor, "fileDescriptor");
        return getOutputResourceWrapper(new FileOutputStream(fileDescriptor), parcelFileDescriptor);
    }

    @k
    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull final FileOutputStream fileOutputStream, @Nullable final ParcelFileDescriptor parcelFileDescriptor) {
        M.q(fileOutputStream, "fileOutputStream");
        return new OutputResourceWrapper(parcelFileDescriptor) {
            final ParcelFileDescriptor $parcelFileDescriptor;
            private final FileOutputStream fileOutputStream;
            private final ParcelFileDescriptor parcelFileDescriptor;

            {
                this.$parcelFileDescriptor = parcelFileDescriptor;
                this.fileOutputStream = FileOutputStream.this;
                this.parcelFileDescriptor = parcelFileDescriptor;
                FileOutputStream.this.getChannel().position(0L);
            }

            @Override
            public void close() {
                this.fileOutputStream.close();
            }

            @Override
            public void flush() {
                this.fileOutputStream.flush();
            }

            @Override
            public void setWriteOffset(long j10) {
                this.fileOutputStream.getChannel().position(j10);
            }

            @Override
            public void write(@NotNull byte[] byteArray, int i10, int i11) {
                M.q(byteArray, "byteArray");
                this.fileOutputStream.write(byteArray, i10, i11);
            }
        };
    }

    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull String filePath, @NotNull ContentResolver contentResolver) {
        M.q(filePath, "filePath");
        M.q(contentResolver, "contentResolver");
        if (FetchCoreUtils.isUriPath(filePath)) {
            Uri parse = Uri.parse(filePath);
            M.h(parse, "Uri.parse(filePath)");
            return getOutputResourceWrapper(parse, contentResolver);
        }
        return getOutputResourceWrapper(new File(filePath));
    }

    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull Uri fileUri, @NotNull ContentResolver contentResolver) {
        M.q(fileUri, "fileUri");
        M.q(contentResolver, "contentResolver");
        if (M.g(fileUri.getScheme(), "content")) {
            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(fileUri, "w");
            if (openFileDescriptor != null) {
                return getOutputResourceWrapper(openFileDescriptor);
            }
            throw new FileNotFoundException(((Object) fileUri) + " file_not_found");
        }
        if (M.g(fileUri.getScheme(), ContentResolver.SCHEME_FILE)) {
            File file = new File(fileUri.getPath());
            if (file.exists() && file.canWrite()) {
                return getOutputResourceWrapper(file);
            }
            ParcelFileDescriptor openFileDescriptor2 = contentResolver.openFileDescriptor(fileUri, "w");
            if (openFileDescriptor2 != null) {
                return getOutputResourceWrapper(openFileDescriptor2);
            }
            throw new FileNotFoundException(((Object) fileUri) + " file_not_found");
        }
        throw new FileNotFoundException(((Object) fileUri) + " file_not_found");
    }

    public static final void allocateFile(@NotNull File file, long j10) {
        M.q(file, "file");
        if (!file.exists()) {
            FetchCoreUtils.createFile(file);
        }
        if (file.length() != j10 && j10 > 0) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.setLength(j10);
                randomAccessFile.close();
            } catch (Exception unused) {
                throw new IOException(FetchErrorStrings.FILE_ALLOCATION_ERROR);
            }
        }
    }

    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull String filePath) {
        M.q(filePath, "filePath");
        File file = new File(filePath);
        if (file.exists()) {
            return getOutputResourceWrapper(file);
        }
        throw new FileNotFoundException(((Object) file) + " file_not_found");
    }

    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull File file) {
        M.q(file, "file");
        if (file.exists()) {
            return getOutputResourceWrapper(new RandomAccessFile(file, "rw"));
        }
        throw new FileNotFoundException(file.getCanonicalPath() + " file_not_found");
    }

    @NotNull
    public static final OutputResourceWrapper getOutputResourceWrapper(@NotNull final RandomAccessFile randomAccessFile) {
        M.q(randomAccessFile, "randomAccessFile");
        return new OutputResourceWrapper() {
            private final RandomAccessFile randomAccessFile;

            {
                this.randomAccessFile = RandomAccessFile.this;
                RandomAccessFile.this.seek(0L);
            }

            @Override
            public void close() {
                this.randomAccessFile.close();
            }

            @Override
            public void flush() {
            }

            @Override
            public void setWriteOffset(long j10) {
                this.randomAccessFile.seek(j10);
            }

            @Override
            public void write(@NotNull byte[] byteArray, int i10, int i11) {
                M.q(byteArray, "byteArray");
                this.randomAccessFile.write(byteArray, i10, i11);
            }
        };
    }
}
