package A8;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.DropBoxManager;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class a {

    public static int f332a;

    public static final boolean f333b = false;

    public final void a(AssetManager assetManager, String filename, String outputLocation) {
        f332a++;
        try {
            InputStream open = assetManager.open(filename);
            if (outputLocation.contains("/")) {
                File file = new File(outputLocation.substring(0, outputLocation.lastIndexOf("/")));
                if (!file.exists()) {
                    file.mkdirs();
                }
            }
            File file2 = new File(outputLocation);
            if (!file2.exists()) {
                file2.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(outputLocation);
            c(open, fileOutputStream);
            open.close();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e10) {
            Log.e(DropBoxManager.EXTRA_TAG, e10.getMessage());
        }
    }

    public void b(String fileInAssets, String outputLocation, b listener, Context context) {
        String str;
        String[] strArr;
        f332a = 0;
        AssetManager assets = context.getAssets();
        if (fileInAssets.contains("/")) {
            str = fileInAssets.substring(0, fileInAssets.lastIndexOf("/"));
            fileInAssets = fileInAssets.substring(fileInAssets.lastIndexOf("/") + 1);
        } else {
            str = "/";
        }
        try {
            strArr = assets.list(str);
        } catch (IOException unused) {
            strArr = null;
        }
        int length = strArr.length;
        int i10 = 0;
        for (String str2 : strArr) {
            if (fileInAssets.equals(str2) && str2.contains(".")) {
                a(assets, str + "/" + str2, outputLocation);
                i10++;
                if (listener != null) {
                    listener.onProgressChange(i10, length);
                }
            }
        }
        if (listener != null) {
            listener.onFinish();
        }
    }

    public final void c(InputStream in2, OutputStream out) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = in2.read(bArr);
            if (read == -1) {
                return;
            } else {
                out.write(bArr, 0, read);
            }
        }
    }
}
