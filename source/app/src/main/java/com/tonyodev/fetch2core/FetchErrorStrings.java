package com.tonyodev.fetch2core;

import Lf.j;
import org.jetbrains.annotations.NotNull;

@j(name = "FetchErrorStrings")
public final class FetchErrorStrings {

    @NotNull
    public static final String AWAIT_CALL_ON_UI_THREAD = "await_call_on_ui_thread";

    @NotNull
    public static final String BLOCKING_CALL_ON_UI_THREAD = "blocking_call_on_ui_thread";

    @NotNull
    public static final String CLEAR_TEXT_NETWORK_VIOLATION = "Cleartext HTTP traffic to";

    @NotNull
    public static final String CONNECTION_TIMEOUT = "timeout";

    @NotNull
    public static final String DATABASE_DISK_FULL = "database or disk is full (code 13)";

    @NotNull
    public static final String DOWNLOAD_INCOMPLETE = "download_incomplete";

    @NotNull
    public static final String DOWNLOAD_NOT_FOUND = "fetch download not found";

    @NotNull
    public static final String EACCES = "open failed: EACCES (Permission denied)";

    @NotNull
    public static final String EMPTY_RESPONSE_BODY = "empty_response_body";

    @NotNull
    public static final String ENOENT = "open failed: ENOENT (No such file or directory)";

    @NotNull
    public static final String ENOSPC = "write failed: ENOSPC (No space left on device)";

    @NotNull
    public static final String ENQUEUED_REQUESTS_ARE_NOT_DISTINCT = "request_list_not_distinct";

    @NotNull
    public static final String ENQUEUE_NOT_SUCCESSFUL = "enqueue_not_successful";

    @NotNull
    public static final String ETIMEDOUT = "recvfrom failed: ETIMEDOUT (Connection timed out)";

    @NotNull
    public static final String FAILED_RENAME_FILE_ASSOCIATED_WITH_INCOMPLETE_DOWNLOAD = "cannot rename file associated with incomplete download";

    @NotNull
    public static final String FAILED_TO_ADD_COMPLETED_DOWNLOAD = "failed_to_add_completed_download";

    @NotNull
    public static final String FAILED_TO_CONNECT = "Failed to connect";

    @NotNull
    public static final String FAILED_TO_ENQUEUE_REQUEST = "UNIQUE constraint failed: requests._id (code 1555)";

    @NotNull
    public static final String FAILED_TO_ENQUEUE_REQUEST_FILE_FOUND = "UNIQUE constraint failed: requests._file (code 2067)";

    @NotNull
    public static final String FAILED_TO_UPDATE_REQUEST = "failed_to_update_request";

    @NotNull
    public static final String FETCH_DATABASE_ERROR = "Fetch data base error";

    @NotNull
    public static final String FETCH_FILE_SERVER_INVALID_RESPONSE_TYPE = "fetch_file_server_invalid_response_type";

    @NotNull
    public static final String FETCH_FILE_SERVER_URL_INVALID = "fetch_file_server_url_invalid";

    @NotNull
    public static final String FILE_ALLOCATION_ERROR = "file_allocation_error";

    @NotNull
    public static final String FILE_CANNOT_BE_RENAMED = "file_cannot_be_renamed";

    @NotNull
    public static final String FILE_NOT_FOUND = "file_not_found";

    @NotNull
    public static final String FNC = "FNC";

    @NotNull
    public static final String GLOBAL_FETCH_CONFIGURATION_NOT_SET = "Global Fetch Configuration not set";

    @NotNull
    public static final String HOST_RESOLVE_ISSUE = "Unable to resolve host";

    @NotNull
    public static final String INVALID_CONTENT_HASH = "invalid content hash";

    @NotNull
    public static final String IO404 = "java.io.IOException: 404";

    @NotNull
    public static final String NO_ADDRESS_HOSTNAME = "No address associated with hostname";

    @NotNull
    public static final String NO_NETWORK_CONNECTION = "no_network_connection";

    @NotNull
    public static final String READ_TIME_OUT = "Read timed out at";

    @NotNull
    public static final String REQUEST_DOES_NOT_EXIST = "request_does_not_exist";

    @NotNull
    public static final String REQUEST_WITH_FILE_PATH_ALREADY_EXIST = "request_with_file_path_already_exist";

    @NotNull
    public static final String RESPONSE_NOT_SUCCESSFUL = "request_not_successful";

    @NotNull
    public static final String SOFTWARE_ABORT_CONNECTION = "Software caused connection abort";

    @NotNull
    public static final String UNIQUE_ID_DATABASE = "UNIQUE constraint failed: requests._id";

    @NotNull
    public static final String UNKNOWN_ERROR = "unknown";
}
