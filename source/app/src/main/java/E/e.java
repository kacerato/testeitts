package E;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class e {

    public static final String f5313f = "ThumbStreamOpener";

    public static final a f5314g = new a();

    public final a f5315a;

    public final d f5316b;

    public final F.b f5317c;

    public final ContentResolver f5318d;

    public final List<ImageHeaderParser> f5319e;

    public e(List<ImageHeaderParser> list, d dVar, F.b bVar, ContentResolver contentResolver) {
        this(list, f5314g, dVar, bVar, contentResolver);
    }

    public int a(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f5318d.openInputStream(uri);
                int b10 = com.bumptech.glide.load.a.b(this.f5319e, inputStream, this.f5317c);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return b10;
            } catch (Throwable th2) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th2;
            }
        } catch (IOException | NullPointerException e10) {
            if (Log.isLoggable(f5313f, 3)) {
                Log.d(f5313f, "Failed to open uri: " + ((Object) uri), e10);
            }
            if (inputStream == null) {
                return -1;
            }
            try {
                inputStream.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x001b: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:26:0x001b */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004c  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String b(@NonNull Uri uri) {
        Cursor cursor;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2 = null;
        try {
            try {
                cursor = this.f5316b.a(uri);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            String string = cursor.getString(0);
                            cursor.close();
                            return string;
                        }
                    } catch (SecurityException e10) {
                        e = e10;
                        if (Log.isLoggable(f5313f, 3)) {
                            Log.d(f5313f, "Failed to query for thumbnail for Uri: " + ((Object) uri), e);
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                autoCloseable2 = autoCloseable;
                if (autoCloseable2 != null) {
                    autoCloseable2.close();
                }
                throw th;
            }
        } catch (SecurityException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (autoCloseable2 != null) {
            }
            throw th;
        }
    }

    public final boolean c(File file) {
        return this.f5315a.a(file) && 0 < this.f5315a.c(file);
    }

    public InputStream d(Uri uri) throws FileNotFoundException {
        String b10 = b(uri);
        if (TextUtils.isEmpty(b10)) {
            return null;
        }
        File b11 = this.f5315a.b(b10);
        if (!c(b11)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(b11);
        try {
            return this.f5318d.openInputStream(fromFile);
        } catch (NullPointerException e10) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + ((Object) uri) + " -> " + ((Object) fromFile)).initCause(e10));
        }
    }

    public e(List<ImageHeaderParser> list, a aVar, d dVar, F.b bVar, ContentResolver contentResolver) {
        this.f5315a = aVar;
        this.f5316b = dVar;
        this.f5317c = bVar;
        this.f5318d = contentResolver;
        this.f5319e = list;
    }
}
