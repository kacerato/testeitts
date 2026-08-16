package android.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.FileNotFoundException;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/DocumentsContract.class
 */
public final class DocumentsContract {
    public static final String ACTION_DOCUMENT_SETTINGS = "android.provider.action.DOCUMENT_SETTINGS";
    public static final String EXTRA_ERROR = "error";
    public static final String EXTRA_EXCLUDE_SELF = "android.provider.extra.EXCLUDE_SELF";
    public static final String EXTRA_INFO = "info";
    public static final String EXTRA_INITIAL_URI = "android.provider.extra.INITIAL_URI";
    public static final String EXTRA_LOADING = "loading";
    public static final String EXTRA_ORIENTATION = "android.provider.extra.ORIENTATION";
    public static final String EXTRA_PROMPT = "android.provider.extra.PROMPT";
    public static final String PROVIDER_INTERFACE = "android.content.action.DOCUMENTS_PROVIDER";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/DocumentsContract$Document.class
 */
    public static final class Document {
        public static final String COLUMN_DISPLAY_NAME = "_display_name";
        public static final String COLUMN_DOCUMENT_ID = "document_id";
        public static final String COLUMN_FLAGS = "flags";
        public static final String COLUMN_ICON = "icon";
        public static final String COLUMN_LAST_MODIFIED = "last_modified";
        public static final String COLUMN_MIME_TYPE = "mime_type";
        public static final String COLUMN_SIZE = "_size";
        public static final String COLUMN_SUMMARY = "summary";
        public static final int FLAG_DIR_PREFERS_GRID = 16;
        public static final int FLAG_DIR_PREFERS_LAST_MODIFIED = 32;
        public static final int FLAG_DIR_SUPPORTS_CREATE = 8;
        public static final int FLAG_SUPPORTS_COPY = 128;
        public static final int FLAG_SUPPORTS_DELETE = 4;
        public static final int FLAG_SUPPORTS_MOVE = 256;
        public static final int FLAG_SUPPORTS_REMOVE = 1024;
        public static final int FLAG_SUPPORTS_RENAME = 64;
        public static final int FLAG_SUPPORTS_SETTINGS = 2048;
        public static final int FLAG_SUPPORTS_THUMBNAIL = 1;
        public static final int FLAG_SUPPORTS_WRITE = 2;
        public static final int FLAG_VIRTUAL_DOCUMENT = 512;
        public static final int FLAG_WEB_LINKABLE = 4096;
        public static final String MIME_TYPE_DIR = "vnd.android.document/directory";

        Document() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/DocumentsContract$Root.class
 */
    public static final class Root {
        public static final String COLUMN_AVAILABLE_BYTES = "available_bytes";
        public static final String COLUMN_CAPACITY_BYTES = "capacity_bytes";
        public static final String COLUMN_DOCUMENT_ID = "document_id";
        public static final String COLUMN_FLAGS = "flags";
        public static final String COLUMN_ICON = "icon";
        public static final String COLUMN_MIME_TYPES = "mime_types";
        public static final String COLUMN_ROOT_ID = "root_id";
        public static final String COLUMN_SUMMARY = "summary";
        public static final String COLUMN_TITLE = "title";
        public static final int FLAG_LOCAL_ONLY = 2;
        public static final int FLAG_SUPPORTS_CREATE = 1;
        public static final int FLAG_SUPPORTS_EJECT = 32;
        public static final int FLAG_SUPPORTS_IS_CHILD = 16;
        public static final int FLAG_SUPPORTS_RECENTS = 4;
        public static final int FLAG_SUPPORTS_SEARCH = 8;
        public static final String MIME_TYPE_ITEM = "vnd.android.document/root";

        Root() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/DocumentsContract$Path.class
 */
    public static final class Path implements Parcelable {
        public static final Parcelable.Creator<Path> CREATOR = null;

        public Path(String rootId, List<String> path) {
            throw new RuntimeException("Stub!");
        }

        public String getRootId() {
            throw new RuntimeException("Stub!");
        }

        public List<String> getPath() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }
    }

    DocumentsContract() {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildRootsUri(String authority) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildRootUri(String authority, String rootId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildRecentDocumentsUri(String authority, String rootId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildTreeDocumentUri(String authority, String documentId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildDocumentUri(String authority, String documentId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildDocumentUriUsingTree(Uri treeUri, String documentId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildChildDocumentsUri(String authority, String parentDocumentId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildChildDocumentsUriUsingTree(Uri treeUri, String parentDocumentId) {
        throw new RuntimeException("Stub!");
    }

    public static Uri buildSearchDocumentsUri(String authority, String rootId, String query) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isTreeUri(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public static String getRootId(Uri rootUri) {
        throw new RuntimeException("Stub!");
    }

    public static String getDocumentId(Uri documentUri) {
        throw new RuntimeException("Stub!");
    }

    public static String getTreeDocumentId(Uri documentUri) {
        throw new RuntimeException("Stub!");
    }

    public static String getSearchDocumentsQuery(Uri searchDocumentsUri) {
        throw new RuntimeException("Stub!");
    }

    public static Bitmap getDocumentThumbnail(ContentResolver resolver, Uri documentUri, Point size, CancellationSignal signal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static Uri createDocument(ContentResolver resolver, Uri parentDocumentUri, String mimeType, String displayName) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static Uri renameDocument(ContentResolver resolver, Uri documentUri, String displayName) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static boolean deleteDocument(ContentResolver resolver, Uri documentUri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static Uri copyDocument(ContentResolver resolver, Uri sourceDocumentUri, Uri targetParentDocumentUri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static Uri moveDocument(ContentResolver resolver, Uri sourceDocumentUri, Uri sourceParentDocumentUri, Uri targetParentDocumentUri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static boolean removeDocument(ContentResolver resolver, Uri documentUri, Uri parentDocumentUri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static void ejectRoot(ContentResolver resolver, Uri rootUri) {
        throw new RuntimeException("Stub!");
    }

    public static Path findDocumentPath(ContentResolver resolver, Uri treeUri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public static IntentSender createWebLinkIntent(ContentResolver resolver, Uri uri, Bundle options) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }
}
