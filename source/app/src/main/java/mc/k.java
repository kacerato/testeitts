package mc;

import Ic.C2636o;
import android.content.Context;
import android.content.res.AssetManager;
import id.C13696a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import yd.C16181m;

public class k {

    public static final String f96953a = "Editor/Vulkan";

    public static void a(Context context) {
        File file = new File(ec.b.d());
        File file2 = new File(file, "av.bin");
        if (file.exists()) {
            if (file2.exists()) {
                if (!C2636o.g(file2).equals("bi:" + K8.a.l().buildID) && !C13696a.g(file)) {
                    return;
                }
            } else if (!C13696a.g(file)) {
                return;
            }
        }
        C2636o.e("bi:" + K8.a.l().buildID, file2);
    }

    public static void b(AssetManager assetManager, String assetPath, File destDir) throws IOException {
        File file = new File(destDir, e(assetPath));
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        InputStream open = assetManager.open(assetPath);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        fileOutputStream.close();
                        open.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
            }
            throw th4;
        }
    }

    public static void c(AssetManager assetManager, String assetPath, File destDir) throws IOException {
        String[] list = assetManager.list(assetPath);
        if (list == null) {
            return;
        }
        if (list.length == 0) {
            b(assetManager, assetPath, destDir);
            return;
        }
        File file = new File(destDir, e(assetPath));
        if (!file.exists()) {
            file.mkdirs();
        }
        for (String str : list) {
            c(assetManager, assetPath + "/" + str, destDir);
        }
    }

    public static void d(Context context, File outputFolder) {
        try {
            c(context.getAssets(), f96953a, outputFolder);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static String e(String assetPath) {
        if (assetPath.startsWith(f96953a)) {
            assetPath = assetPath.substring(13);
        }
        return (assetPath.startsWith("/") || assetPath.startsWith(C16181m.f130232i)) ? assetPath.substring(1) : assetPath;
    }
}
