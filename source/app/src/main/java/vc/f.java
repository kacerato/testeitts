package Vc;

import F2.i;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import b3.s;
import java.io.File;

public class f {
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        if (r8 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002c, code lost:
    
        if (r8 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002e, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003c, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(Context context, Uri uri, String selection, String[] selectionArgs) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"_data"}, selection, selectionArgs, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.moveToFirst()) {
                            String string = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
                            cursor.close();
                            return string;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public static String b(Context context, Uri uri) {
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_display_name"));
                        query.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String c(Context context, Uri fileUri) {
        return e(context, fileUri);
    }

    @SuppressLint({"NewApi"})
    public static String d(Context context, Uri contentUri) {
        Cursor loadInBackground = new CursorLoader(context, contentUri, new String[]{"_data"}, null, null, null).loadInBackground();
        if (loadInBackground == null) {
            return null;
        }
        int columnIndexOrThrow = loadInBackground.getColumnIndexOrThrow("_data");
        loadInBackground.moveToFirst();
        String string = loadInBackground.getString(columnIndexOrThrow);
        loadInBackground.close();
        return string;
    }

    @SuppressLint({"NewApi"})
    public static String e(final Context context, final Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (h(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                String[] split = documentId.split(s.f32937c);
                if (!"primary".equalsIgnoreCase(split[0])) {
                    return "storage/" + documentId.replace(s.f32937c, "/");
                }
                if (split.length <= 1) {
                    return ((Object) Environment.getExternalStorageDirectory()) + "/";
                }
                return ((Object) Environment.getExternalStorageDirectory()) + "/" + split[1];
            }
            if (g(uri)) {
                String b10 = b(context, uri);
                if (b10 != null) {
                    return Environment.getExternalStorageDirectory().toString() + "/Download/" + b10;
                }
                String documentId2 = DocumentsContract.getDocumentId(uri);
                if (documentId2.startsWith("raw:")) {
                    documentId2 = documentId2.replaceFirst("raw:", "");
                    if (new File(documentId2).exists()) {
                        return documentId2;
                    }
                }
                return a(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(documentId2).longValue()), null, null);
            }
            if (j(uri)) {
                String[] split2 = DocumentsContract.getDocumentId(uri).split(s.f32937c);
                String str = split2[0];
                if (i.f6419n.equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return a(context, uri2, "_id=?", new String[]{split2[1]});
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return i(uri) ? uri.getLastPathSegment() : a(context, uri, null, null);
            }
            if (ContentResolver.SCHEME_FILE.equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    public static String f(Context context, Uri contentUri) {
        Cursor query = context.getContentResolver().query(contentUri, new String[]{"_data"}, null, null, null);
        if (query == null) {
            return "";
        }
        int columnIndexOrThrow = query.getColumnIndexOrThrow("_data");
        query.moveToFirst();
        String string = query.getString(columnIndexOrThrow);
        query.close();
        return string;
    }

    public static boolean g(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean h(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean i(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean j(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
