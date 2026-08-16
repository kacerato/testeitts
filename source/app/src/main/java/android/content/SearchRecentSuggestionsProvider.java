package android.content;

import android.database.Cursor;
import android.net.Uri;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SearchRecentSuggestionsProvider.class
 */
public class SearchRecentSuggestionsProvider extends ContentProvider {
    public static final int DATABASE_MODE_2LINES = 2;
    public static final int DATABASE_MODE_QUERIES = 1;

    public SearchRecentSuggestionsProvider() {
        throw new RuntimeException("Stub!");
    }

    protected void setupSuggestions(String authority, int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getType(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }
}
