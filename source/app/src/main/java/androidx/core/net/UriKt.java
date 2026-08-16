package androidx.core.net;

import android.content.ContentResolver;
import android.net.Uri;
import java.io.File;
import kotlin.jvm.internal.M;

public final class UriKt {
    public static final File toFile(Uri uri) {
        M.p(uri, "<this>");
        if (!M.g(uri.getScheme(), ContentResolver.SCHEME_FILE)) {
            throw new IllegalArgumentException(("Uri lacks 'file' scheme: " + ((Object) uri)).toString());
        }
        String path = uri.getPath();
        if (path != null) {
            return new File(path);
        }
        throw new IllegalArgumentException(("Uri path is null: " + ((Object) uri)).toString());
    }

    public static final Uri toUri(String str) {
        M.p(str, "<this>");
        Uri parse = Uri.parse(str);
        M.o(parse, "parse(this)");
        return parse;
    }

    public static final Uri toUri(File file) {
        M.p(file, "<this>");
        Uri fromFile = Uri.fromFile(file);
        M.o(fromFile, "fromFile(this)");
        return fromFile;
    }
}
