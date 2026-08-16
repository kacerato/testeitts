package Vc;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public class d {
    public static String a(Context context) {
        File b10 = b();
        return b10 != null ? b10.getAbsolutePath() : c(context);
    }

    public static File b() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
    }

    public static String c(Context context) {
        File externalFilesDir;
        return (context == null || (externalFilesDir = context.getExternalFilesDir("")) == null) ? "" : externalFilesDir.getAbsolutePath();
    }
}
