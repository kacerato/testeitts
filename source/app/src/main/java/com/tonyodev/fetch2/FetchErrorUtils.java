package com.tonyodev.fetch2;

import Lf.j;
import ag.C3617K;
import ag.P;
import com.tonyodev.fetch2core.FetchErrorStrings;
import java.io.IOException;
import java.net.SocketTimeoutException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@j(name = "FetchErrorUtils")
public final class FetchErrorUtils {
    @NotNull
    public static final Error getErrorFromMessage(@Nullable String str) {
        return (str == null || str.length() == 0) ? Error.UNKNOWN : (C3617K.e2(str, FetchErrorStrings.REQUEST_WITH_FILE_PATH_ALREADY_EXIST, true) || P.n3(str, FetchErrorStrings.FAILED_TO_ENQUEUE_REQUEST_FILE_FOUND, true)) ? Error.REQUEST_WITH_FILE_PATH_ALREADY_EXIST : P.p3(str, FetchErrorStrings.UNIQUE_ID_DATABASE, false, 2, null) ? Error.REQUEST_WITH_ID_ALREADY_EXIST : P.n3(str, FetchErrorStrings.EMPTY_RESPONSE_BODY, true) ? Error.EMPTY_RESPONSE_FROM_SERVER : (C3617K.e2(str, FetchErrorStrings.FNC, true) || C3617K.e2(str, FetchErrorStrings.ENOENT, true)) ? Error.FILE_NOT_CREATED : (P.n3(str, FetchErrorStrings.ETIMEDOUT, true) || P.n3(str, FetchErrorStrings.CONNECTION_TIMEOUT, true) || P.n3(str, FetchErrorStrings.SOFTWARE_ABORT_CONNECTION, true) || P.n3(str, FetchErrorStrings.READ_TIME_OUT, true)) ? Error.CONNECTION_TIMED_OUT : (C3617K.e2(str, FetchErrorStrings.IO404, true) || P.p3(str, FetchErrorStrings.NO_ADDRESS_HOSTNAME, false, 2, null)) ? Error.HTTP_NOT_FOUND : P.p3(str, FetchErrorStrings.HOST_RESOLVE_ISSUE, false, 2, null) ? Error.UNKNOWN_HOST : C3617K.e2(str, FetchErrorStrings.EACCES, true) ? Error.WRITE_PERMISSION_DENIED : (C3617K.e2(str, FetchErrorStrings.ENOSPC, true) || C3617K.e2(str, FetchErrorStrings.DATABASE_DISK_FULL, true)) ? Error.NO_STORAGE_SPACE : C3617K.e2(str, FetchErrorStrings.FAILED_TO_ENQUEUE_REQUEST, true) ? Error.REQUEST_ALREADY_EXIST : C3617K.e2(str, FetchErrorStrings.DOWNLOAD_NOT_FOUND, true) ? Error.DOWNLOAD_NOT_FOUND : C3617K.e2(str, FetchErrorStrings.FETCH_DATABASE_ERROR, true) ? Error.FETCH_DATABASE_ERROR : (P.n3(str, FetchErrorStrings.RESPONSE_NOT_SUCCESSFUL, true) || P.n3(str, FetchErrorStrings.FAILED_TO_CONNECT, true)) ? Error.REQUEST_NOT_SUCCESSFUL : P.n3(str, FetchErrorStrings.INVALID_CONTENT_HASH, true) ? Error.INVALID_CONTENT_HASH : P.n3(str, FetchErrorStrings.DOWNLOAD_INCOMPLETE, true) ? Error.UNKNOWN_IO_ERROR : P.n3(str, FetchErrorStrings.FAILED_TO_UPDATE_REQUEST, true) ? Error.FAILED_TO_UPDATE_REQUEST : P.n3(str, FetchErrorStrings.FAILED_TO_ADD_COMPLETED_DOWNLOAD, true) ? Error.FAILED_TO_ADD_COMPLETED_DOWNLOAD : P.n3(str, FetchErrorStrings.FETCH_FILE_SERVER_INVALID_RESPONSE_TYPE, true) ? Error.FETCH_FILE_SERVER_INVALID_RESPONSE : P.n3(str, FetchErrorStrings.REQUEST_DOES_NOT_EXIST, true) ? Error.REQUEST_DOES_NOT_EXIST : P.n3(str, FetchErrorStrings.NO_NETWORK_CONNECTION, true) ? Error.NO_NETWORK_CONNECTION : P.n3(str, FetchErrorStrings.FILE_NOT_FOUND, true) ? Error.FILE_NOT_FOUND : P.n3(str, FetchErrorStrings.FETCH_FILE_SERVER_URL_INVALID, true) ? Error.FETCH_FILE_SERVER_URL_INVALID : P.n3(str, FetchErrorStrings.ENQUEUED_REQUESTS_ARE_NOT_DISTINCT, true) ? Error.ENQUEUED_REQUESTS_ARE_NOT_DISTINCT : P.n3(str, FetchErrorStrings.ENQUEUE_NOT_SUCCESSFUL, true) ? Error.ENQUEUE_NOT_SUCCESSFUL : P.n3(str, FetchErrorStrings.FAILED_RENAME_FILE_ASSOCIATED_WITH_INCOMPLETE_DOWNLOAD, true) ? Error.FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE : P.n3(str, FetchErrorStrings.FILE_CANNOT_BE_RENAMED, true) ? Error.FAILED_TO_RENAME_FILE : P.n3(str, FetchErrorStrings.FILE_ALLOCATION_ERROR, true) ? Error.FILE_ALLOCATION_FAILED : P.n3(str, FetchErrorStrings.CLEAR_TEXT_NETWORK_VIOLATION, true) ? Error.HTTP_CONNECTION_NOT_ALLOWED : Error.UNKNOWN;
    }

    @NotNull
    public static final Error getErrorFromThrowable(@NotNull Throwable throwable) {
        M.p(throwable, "throwable");
        String message = throwable.getMessage();
        if (message == null) {
            message = "";
        }
        boolean z10 = throwable instanceof SocketTimeoutException;
        if (z10 && message.length() == 0) {
            message = FetchErrorStrings.CONNECTION_TIMEOUT;
        }
        Error errorFromMessage = getErrorFromMessage(message);
        Error error = Error.UNKNOWN;
        if (errorFromMessage == error && z10) {
            errorFromMessage = Error.CONNECTION_TIMED_OUT;
        } else if (errorFromMessage == error && (throwable instanceof IOException)) {
            errorFromMessage = Error.UNKNOWN_IO_ERROR;
        }
        errorFromMessage.setThrowable(throwable);
        return errorFromMessage;
    }
}
