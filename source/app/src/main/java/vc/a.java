package Vc;

import Ic.C2633l;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.File;
import java.lang.constant.ConstantDescs;
import w3.l;

public final class a {

    public static final class C0738a {

        public final b f26811a;

        public final File f26812b;

        public final String f26813c;

        public C0738a(b status, File file, String message) {
            this.f26811a = status;
            this.f26812b = file;
            this.f26813c = message;
        }

        public static C0738a a(String message) {
            return new C0738a(b.FAILED, null, message);
        }

        public static C0738a b(String message) {
            return new C0738a(b.INVALID_FORMAT, null, message);
        }

        public static C0738a e(File file, String message) {
            return new C0738a(b.SUCCESS, file, message);
        }

        public boolean c() {
            return this.f26811a == b.INVALID_FORMAT;
        }

        public boolean d() {
            return this.f26811a == b.SUCCESS;
        }
    }

    public enum b {
        SUCCESS,
        INVALID_FORMAT,
        FAILED
    }

    public static File a(File backupsFolder, String sourceName) {
        String v10 = Tc.b.v(sourceName);
        if (v10 == null || v10.trim().isEmpty()) {
            v10 = "backup.itsmbp";
        }
        String w10 = Tc.b.w(Tc.b.V(v10), true);
        if (w10 == null || w10.trim().isEmpty()) {
            w10 = "backup";
        }
        File file = new File(backupsFolder, w10 + ".itsmbp");
        int i10 = 1;
        while (file.exists()) {
            file = new File(backupsFolder, w10 + ConstantDescs.DEFAULT_NAME + i10 + ".itsmbp");
            i10++;
        }
        return file;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        if (r8 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
    
        if (r8 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003c, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String b(ContentResolver resolver, Uri uri) {
        Cursor cursor;
        int columnIndex;
        Cursor cursor2 = null;
        try {
            cursor = resolver.query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst() && (columnIndex = cursor.getColumnIndex("_display_name")) >= 0) {
                        String string = cursor.getString(columnIndex);
                        cursor.close();
                        return string;
                    }
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static C0738a c(Context context, Uri uri) {
        if (context == null || uri == null) {
            return C0738a.a("Failed to import backup");
        }
        String f10 = f(context, uri);
        if (!d(f10)) {
            return C0738a.b("File format incorrect, please select itsmagic backup (.itsmbp)");
        }
        File file = new File(W7.b.f27306f.f2458a.e(context));
        if (!file.exists() && !file.mkdirs()) {
            return C0738a.a("Failed to access backups folder");
        }
        File a10 = a(file, f10);
        if (!l.b(uri, a10.getAbsolutePath(), context)) {
            return C0738a.a("Failed to import backup");
        }
        return C0738a.e(a10, "Backup imported: " + Tc.b.w(a10.getName(), true));
    }

    public static boolean d(String sourceName) {
        return C2633l.b(Tc.b.t(sourceName), ".itsmbp");
    }

    public static boolean e(Context context, Uri uri) {
        if (context == null || uri == null) {
            return false;
        }
        return d(f(context, uri));
    }

    public static String f(Context context, Uri uri) {
        String b10 = b(context.getContentResolver(), uri);
        if (b10 != null && b10.contains(".")) {
            return b10;
        }
        String path = uri.getPath();
        if (path != null && path.contains(".")) {
            return path;
        }
        String c10 = f.c(context, uri);
        return (c10 == null || c10.trim().isEmpty()) ? (b10 == null || b10.trim().isEmpty()) ? "backup.itsmbp" : b10 : c10;
    }
}
