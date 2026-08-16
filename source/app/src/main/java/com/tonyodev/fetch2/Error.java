package com.tonyodev.fetch2;

import Cf.a;
import Cf.c;
import Lf.o;
import android.security.keystore.KeyProperties;
import com.tonyodev.fetch2core.Downloader;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class Error {
    private static final a $ENTRIES;
    private static final Error[] $VALUES;
    public static final Error COMPLETED_NOT_ADDED_SUCCESSFULLY;
    public static final Error CONNECTION_TIMED_OUT;

    @NotNull
    public static final Companion Companion;
    public static final Error DOWNLOAD_NOT_FOUND;
    public static final Error EMPTY_RESPONSE_FROM_SERVER;
    public static final Error ENQUEUED_REQUESTS_ARE_NOT_DISTINCT;
    public static final Error ENQUEUE_NOT_SUCCESSFUL;
    public static final Error FAILED_TO_ADD_COMPLETED_DOWNLOAD;
    public static final Error FAILED_TO_RENAME_FILE;
    public static final Error FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE;
    public static final Error FAILED_TO_UPDATE_REQUEST;
    public static final Error FETCH_DATABASE_ERROR;
    public static final Error FETCH_FILE_SERVER_INVALID_RESPONSE;
    public static final Error FETCH_FILE_SERVER_URL_INVALID;
    public static final Error FILE_ALLOCATION_FAILED;
    public static final Error FILE_NOT_CREATED;
    public static final Error FILE_NOT_FOUND;
    public static final Error HTTP_CONNECTION_NOT_ALLOWED;
    public static final Error HTTP_NOT_FOUND;
    public static final Error INVALID_CONTENT_HASH;
    public static final Error NONE;
    public static final Error NO_NETWORK_CONNECTION;
    public static final Error NO_STORAGE_SPACE;
    public static final Error REQUEST_ALREADY_EXIST;
    public static final Error REQUEST_DOES_NOT_EXIST;
    public static final Error REQUEST_NOT_SUCCESSFUL;
    public static final Error REQUEST_WITH_FILE_PATH_ALREADY_EXIST;
    public static final Error REQUEST_WITH_ID_ALREADY_EXIST;
    public static final Error UNKNOWN = new Error("UNKNOWN", 0, -1, null, null, 6, null);
    public static final Error UNKNOWN_HOST;
    public static final Error UNKNOWN_IO_ERROR;
    public static final Error WRITE_PERMISSION_DENIED;

    @Nullable
    private Downloader.Response httpResponse;

    @Nullable
    private Throwable throwable;
    private final int value;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        @NotNull
        public final Error valueOf(int i10) {
            switch (i10) {
                case -1:
                    return Error.UNKNOWN;
                case 0:
                    return Error.NONE;
                case 1:
                    return Error.FILE_NOT_CREATED;
                case 2:
                    return Error.CONNECTION_TIMED_OUT;
                case 3:
                    return Error.UNKNOWN_HOST;
                case 4:
                    return Error.HTTP_NOT_FOUND;
                case 5:
                    return Error.WRITE_PERMISSION_DENIED;
                case 6:
                    return Error.NO_STORAGE_SPACE;
                case 7:
                    return Error.NO_NETWORK_CONNECTION;
                case 8:
                    return Error.EMPTY_RESPONSE_FROM_SERVER;
                case 9:
                    return Error.REQUEST_ALREADY_EXIST;
                case 10:
                    return Error.DOWNLOAD_NOT_FOUND;
                case 11:
                    return Error.FETCH_DATABASE_ERROR;
                case 12:
                case 14:
                case 18:
                default:
                    return Error.UNKNOWN;
                case 13:
                    return Error.REQUEST_WITH_ID_ALREADY_EXIST;
                case 15:
                    return Error.REQUEST_NOT_SUCCESSFUL;
                case 16:
                    return Error.UNKNOWN_IO_ERROR;
                case 17:
                    return Error.FILE_NOT_FOUND;
                case 19:
                    return Error.FETCH_FILE_SERVER_URL_INVALID;
                case 20:
                    return Error.INVALID_CONTENT_HASH;
                case 21:
                    return Error.FAILED_TO_UPDATE_REQUEST;
                case 22:
                    return Error.FAILED_TO_ADD_COMPLETED_DOWNLOAD;
                case 23:
                    return Error.FETCH_FILE_SERVER_INVALID_RESPONSE;
                case 24:
                    return Error.REQUEST_DOES_NOT_EXIST;
                case 25:
                    return Error.ENQUEUE_NOT_SUCCESSFUL;
                case 26:
                    return Error.COMPLETED_NOT_ADDED_SUCCESSFULLY;
                case 27:
                    return Error.ENQUEUED_REQUESTS_ARE_NOT_DISTINCT;
                case 28:
                    return Error.FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE;
                case 29:
                    return Error.FAILED_TO_RENAME_FILE;
                case 30:
                    return Error.FILE_ALLOCATION_FAILED;
                case 31:
                    return Error.HTTP_CONNECTION_NOT_ALLOWED;
            }
        }

        private Companion() {
        }
    }

    private static final Error[] $values() {
        return new Error[]{UNKNOWN, NONE, FILE_NOT_CREATED, CONNECTION_TIMED_OUT, UNKNOWN_HOST, HTTP_NOT_FOUND, WRITE_PERMISSION_DENIED, NO_STORAGE_SPACE, NO_NETWORK_CONNECTION, EMPTY_RESPONSE_FROM_SERVER, REQUEST_ALREADY_EXIST, DOWNLOAD_NOT_FOUND, FETCH_DATABASE_ERROR, REQUEST_WITH_ID_ALREADY_EXIST, REQUEST_WITH_FILE_PATH_ALREADY_EXIST, REQUEST_NOT_SUCCESSFUL, UNKNOWN_IO_ERROR, FILE_NOT_FOUND, FETCH_FILE_SERVER_URL_INVALID, INVALID_CONTENT_HASH, FAILED_TO_UPDATE_REQUEST, FAILED_TO_ADD_COMPLETED_DOWNLOAD, FETCH_FILE_SERVER_INVALID_RESPONSE, REQUEST_DOES_NOT_EXIST, ENQUEUE_NOT_SUCCESSFUL, COMPLETED_NOT_ADDED_SUCCESSFULLY, ENQUEUED_REQUESTS_ARE_NOT_DISTINCT, FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE, FAILED_TO_RENAME_FILE, FILE_ALLOCATION_FAILED, HTTP_CONNECTION_NOT_ALLOWED};
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i10 = 6;
        C14026x c14026x = null;
        Throwable th2 = null;
        Downloader.Response response = null;
        NONE = new Error(KeyProperties.DIGEST_NONE, 1, 0, th2, response, i10, c14026x);
        int i11 = 6;
        C14026x c14026x2 = null;
        Downloader.Response response2 = null;
        FILE_NOT_CREATED = new Error("FILE_NOT_CREATED", 2, 1, 0 == true ? 1 : 0, response2, i11, c14026x2);
        CONNECTION_TIMED_OUT = new Error("CONNECTION_TIMED_OUT", 3, 2, th2, response, i10, c14026x);
        UNKNOWN_HOST = new Error("UNKNOWN_HOST", 4, 3, 0 == true ? 1 : 0, response2, i11, c14026x2);
        HTTP_NOT_FOUND = new Error("HTTP_NOT_FOUND", 5, 4, th2, response, i10, c14026x);
        WRITE_PERMISSION_DENIED = new Error("WRITE_PERMISSION_DENIED", 6, 5, 0 == true ? 1 : 0, response2, i11, c14026x2);
        NO_STORAGE_SPACE = new Error("NO_STORAGE_SPACE", 7, 6, th2, response, i10, c14026x);
        NO_NETWORK_CONNECTION = new Error("NO_NETWORK_CONNECTION", 8, 7, 0 == true ? 1 : 0, response2, i11, c14026x2);
        EMPTY_RESPONSE_FROM_SERVER = new Error("EMPTY_RESPONSE_FROM_SERVER", 9, 8, th2, response, i10, c14026x);
        REQUEST_ALREADY_EXIST = new Error("REQUEST_ALREADY_EXIST", 10, 9, 0 == true ? 1 : 0, response2, i11, c14026x2);
        DOWNLOAD_NOT_FOUND = new Error("DOWNLOAD_NOT_FOUND", 11, 10, th2, response, i10, c14026x);
        FETCH_DATABASE_ERROR = new Error("FETCH_DATABASE_ERROR", 12, 11, 0 == true ? 1 : 0, response2, i11, c14026x2);
        REQUEST_WITH_ID_ALREADY_EXIST = new Error("REQUEST_WITH_ID_ALREADY_EXIST", 13, 13, th2, response, i10, c14026x);
        REQUEST_WITH_FILE_PATH_ALREADY_EXIST = new Error("REQUEST_WITH_FILE_PATH_ALREADY_EXIST", 14, 14, 0 == true ? 1 : 0, response2, i11, c14026x2);
        REQUEST_NOT_SUCCESSFUL = new Error("REQUEST_NOT_SUCCESSFUL", 15, 15, th2, response, i10, c14026x);
        UNKNOWN_IO_ERROR = new Error("UNKNOWN_IO_ERROR", 16, 16, 0 == true ? 1 : 0, response2, i11, c14026x2);
        FILE_NOT_FOUND = new Error("FILE_NOT_FOUND", 17, 17, th2, response, i10, c14026x);
        FETCH_FILE_SERVER_URL_INVALID = new Error("FETCH_FILE_SERVER_URL_INVALID", 18, 19, 0 == true ? 1 : 0, response2, i11, c14026x2);
        INVALID_CONTENT_HASH = new Error("INVALID_CONTENT_HASH", 19, 20, th2, response, i10, c14026x);
        FAILED_TO_UPDATE_REQUEST = new Error("FAILED_TO_UPDATE_REQUEST", 20, 21, 0 == true ? 1 : 0, response2, i11, c14026x2);
        FAILED_TO_ADD_COMPLETED_DOWNLOAD = new Error("FAILED_TO_ADD_COMPLETED_DOWNLOAD", 21, 22, th2, response, i10, c14026x);
        FETCH_FILE_SERVER_INVALID_RESPONSE = new Error("FETCH_FILE_SERVER_INVALID_RESPONSE", 22, 23, 0 == true ? 1 : 0, response2, i11, c14026x2);
        REQUEST_DOES_NOT_EXIST = new Error("REQUEST_DOES_NOT_EXIST", 23, 24, th2, response, i10, c14026x);
        ENQUEUE_NOT_SUCCESSFUL = new Error("ENQUEUE_NOT_SUCCESSFUL", 24, 25, 0 == true ? 1 : 0, response2, i11, c14026x2);
        COMPLETED_NOT_ADDED_SUCCESSFULLY = new Error("COMPLETED_NOT_ADDED_SUCCESSFULLY", 25, 26, th2, response, i10, c14026x);
        ENQUEUED_REQUESTS_ARE_NOT_DISTINCT = new Error("ENQUEUED_REQUESTS_ARE_NOT_DISTINCT", 26, 27, 0 == true ? 1 : 0, response2, i11, c14026x2);
        FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE = new Error("FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE", 27, 28, th2, response, i10, c14026x);
        FAILED_TO_RENAME_FILE = new Error("FAILED_TO_RENAME_FILE", 28, 29, 0 == true ? 1 : 0, response2, i11, c14026x2);
        FILE_ALLOCATION_FAILED = new Error("FILE_ALLOCATION_FAILED", 29, 30, th2, response, i10, c14026x);
        HTTP_CONNECTION_NOT_ALLOWED = new Error("HTTP_CONNECTION_NOT_ALLOWED", 30, 31, 0 == true ? 1 : 0, response2, i11, c14026x2);
        Error[] $values = $values();
        $VALUES = $values;
        $ENTRIES = c.c($values);
        Companion = new Companion(null);
    }

    private Error(String str, int i10, int i11, Throwable th2, Downloader.Response response) {
        this.value = i11;
        this.throwable = th2;
        this.httpResponse = response;
    }

    @NotNull
    public static a<Error> getEntries() {
        return $ENTRIES;
    }

    @o
    @NotNull
    public static final Error valueOf(int i10) {
        return Companion.valueOf(i10);
    }

    public static Error[] values() {
        return (Error[]) $VALUES.clone();
    }

    @Nullable
    public final Downloader.Response getHttpResponse() {
        return this.httpResponse;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final int getValue() {
        return this.value;
    }

    public final void setHttpResponse(@Nullable Downloader.Response response) {
        this.httpResponse = response;
    }

    public final void setThrowable(@Nullable Throwable th2) {
        this.throwable = th2;
    }

    public static Error valueOf(String str) {
        return (Error) Enum.valueOf(Error.class, str);
    }

    public Error(String str, int i10, int i11, Throwable th2, Downloader.Response response, int i12, C14026x c14026x) {
        this(str, i10, i11, (i12 & 2) != 0 ? null : th2, (i12 & 4) != 0 ? null : response);
    }
}
