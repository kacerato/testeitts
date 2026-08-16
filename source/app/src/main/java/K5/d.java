package K5;

import Ic.C2635n;
import Ic.C2636o;
import android.content.Context;
import android.content.res.AssetManager;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import id.C13696a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import t3.C15377a;

public class d extends J5.b {

    public static final int f10850f = 16384;

    public class a implements Runnable {

        public class C0358a implements InterfaceC0361d {

            public final File f10852a;

            public C0358a(final File val$outdatedFile) {
                this.f10852a = val$outdatedFile;
            }

            @Override
            public void a() {
                d.this.b();
            }

            @Override
            public void b(String result) {
                d.this.w(result, true, this.f10852a);
            }
        }

        public a() {
        }

        @Override
        public void run() {
            File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/");
            File file2 = new File(file, "manifest.config");
            File file3 = new File(file, "outdated");
            if (file3.exists()) {
                d.this.w(d.m(), false, file3);
            } else if (file2.exists()) {
                d.this.p(C2636o.g(file2), new C0358a(file3));
            } else {
                d.this.w(d.m(), true, file3);
            }
        }
    }

    public class b implements Runnable {

        public final File f10854b;

        public final String f10855c;

        public class a implements c {

            public class RunnableC0359a implements Runnable {

                public final int f10858b;

                public final int f10859c;

                public RunnableC0359a(final int val$copied, final int val$total) {
                    this.f10858b = val$copied;
                    this.f10859c = val$total;
                }

                @Override
                public void run() {
                    d.this.j(Lang.l(Lang.T.PREPARING_ASSETS) + " " + this.f10858b + "/" + this.f10859c);
                }
            }

            public a() {
            }

            @Override
            public void a(final int copied, final int total, String assetPath) {
                N7.c.j0(new RunnableC0359a(copied, total));
            }
        }

        public class RunnableC0360b implements Runnable {

            public final File f10861b;

            public RunnableC0360b(final File val$destinationFolder) {
                this.f10861b = val$destinationFolder;
            }

            @Override
            public void run() {
                C2636o.e(b.this.f10855c, new File(this.f10861b, "manifest.config"));
                d.this.j(Lang.l(Lang.T.DONE));
                d.this.b();
            }
        }

        public b(final File val$outdatedFile, final String val$manifestContent) {
            this.f10854b = val$outdatedFile;
            this.f10855c = val$manifestContent;
        }

        @Override
        public void run() {
            d.this.j(Lang.l(Lang.T.PREPARING_REQUIRED_ASSETS));
            File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/");
            C13696a.g(file);
            try {
                d.r(N7.c.o(), "EditorGallery", file, new a());
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            if (this.f10854b.exists()) {
                this.f10854b.delete();
            }
            N7.c.j0(new RunnableC0360b(file));
        }
    }

    public interface c {
        void a(int copied, int total, String assetPath);
    }

    public interface InterfaceC0361d {
        void a();

        void b(String result);
    }

    public static String m() {
        return y();
    }

    public static void q(Context ctx, String assetsFolder, File destinationFolder) throws IOException {
        if (assetsFolder == null) {
            assetsFolder = "";
        }
        if (destinationFolder.exists() || destinationFolder.mkdirs()) {
            s(ctx.getAssets(), assetsFolder, destinationFolder);
            return;
        }
        throw new IOException("N\u00e3o foi poss\u00edvel criar pasta destino: " + destinationFolder.getAbsolutePath());
    }

    public static void r(Context ctx, String assetsFolder, File destinationFolder, c progress) throws IOException {
        if (assetsFolder == null) {
            assetsFolder = "";
        }
        String str = assetsFolder;
        if (destinationFolder.exists() || destinationFolder.mkdirs()) {
            AssetManager assets = ctx.getAssets();
            t(assets, str, destinationFolder, progress, new int[]{0}, v(assets, str));
        } else {
            throw new IOException("Unable to create destination folder: " + destinationFolder.getAbsolutePath());
        }
    }

    public static void s(AssetManager am2, String assetsPath, File destDir) throws IOException {
        String[] list = am2.list(assetsPath);
        if (list == null || list.length <= 0) {
            if (assetsPath.isEmpty() || !x(am2, assetsPath)) {
                return;
            }
            u(am2, assetsPath, new File(destDir, new File(assetsPath).getName()));
            return;
        }
        for (String str : list) {
            String str2 = assetsPath.isEmpty() ? str : assetsPath + "/" + str;
            File file = new File(destDir, str);
            String[] list2 = am2.list(str2);
            if (list2 != null && list2.length > 0) {
                if (!file.exists() && !file.mkdirs()) {
                    throw new IOException("N\u00e3o foi poss\u00edvel criar pasta: " + file.getAbsolutePath());
                }
                s(am2, str2, file);
            } else if (x(am2, str2)) {
                u(am2, str2, file);
            } else if (!file.exists() && !file.mkdirs()) {
                throw new IOException("N\u00e3o foi poss\u00edvel criar pasta vazia: " + file.getAbsolutePath());
            }
        }
    }

    public static void t(AssetManager am2, String assetsPath, File destDir, c progress, int[] copied, int totalFiles) throws IOException {
        String[] list = am2.list(assetsPath);
        if (list == null || list.length <= 0) {
            if (assetsPath.isEmpty() || !x(am2, assetsPath)) {
                return;
            }
            u(am2, assetsPath, new File(destDir, new File(assetsPath).getName()));
            int i10 = copied[0] + 1;
            copied[0] = i10;
            if (progress != null) {
                progress.a(i10, totalFiles, assetsPath);
                return;
            }
            return;
        }
        for (String str : list) {
            String str2 = assetsPath.isEmpty() ? str : assetsPath + "/" + str;
            File file = new File(destDir, str);
            String[] list2 = am2.list(str2);
            if (list2 != null && list2.length > 0) {
                if (!file.exists() && !file.mkdirs()) {
                    throw new IOException("Unable to create folder: " + file.getAbsolutePath());
                }
                t(am2, str2, file, progress, copied, totalFiles);
            } else if (x(am2, str2)) {
                u(am2, str2, file);
                int i11 = copied[0] + 1;
                copied[0] = i11;
                if (progress != null) {
                    progress.a(i11, totalFiles, str2);
                }
            } else if (!file.exists() && !file.mkdirs()) {
                throw new IOException("Unable to create empty folder: " + file.getAbsolutePath());
            }
        }
    }

    public static void u(AssetManager am2, String assetPath, File outFile) throws IOException {
        File parentFile = outFile.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("N\u00e3o foi poss\u00edvel criar pasta: " + parentFile.getAbsolutePath());
        }
        InputStream open = am2.open(assetPath);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(outFile);
            try {
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        open.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } finally {
            }
        } catch (Throwable th2) {
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public static int v(AssetManager am2, String assetsPath) throws IOException {
        String[] list = am2.list(assetsPath);
        if (list == null || list.length <= 0) {
            return (assetsPath.isEmpty() || !x(am2, assetsPath)) ? 0 : 1;
        }
        int i10 = 0;
        for (String str : list) {
            if (!assetsPath.isEmpty()) {
                str = assetsPath + "/" + str;
            }
            i10 += v(am2, str);
        }
        return i10;
    }

    public static boolean x(AssetManager am2, String assetPath) {
        try {
            InputStream open = am2.open(assetPath);
            if (open == null) {
                return true;
            }
            open.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static String y() {
        StringBuffer stringBuffer = new StringBuffer("");
        try {
            AssetManager r10 = N7.c.r();
            InputStream open = r10 != null ? r10.open("EditorGallery/manifest.config") : null;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                stringBuffer.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                byteArrayOutputStream.close();
                open.close();
            } finally {
            }
        } catch (FileNotFoundException unused) {
            System.out.println("Assets file not found: EditorGallery/manifest.config");
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return stringBuffer.toString();
    }

    @Override
    public void g() {
        super.g();
        k(Lang.l(Lang.T.LOADING_EDITOR));
        j(Lang.l(Lang.T.CHECKING_ASSETS));
        O9.b.d(new a());
    }

    public final void p(String manifest, InterfaceC0361d listener) {
        String y10 = y();
        if (y10 != null && !y10.isEmpty()) {
            if (y10.equalsIgnoreCase(manifest)) {
                listener.a();
                return;
            } else {
                listener.b(y10);
                return;
            }
        }
        if (C15377a.f109719g.booleanValue()) {
            j(Lang.l(Lang.T.MISSING_PAD_MANIFEST_FILE));
        } else {
            N7.c.v0("Missing PAD manifest file");
            listener.a();
        }
    }

    public final void w(String manifestContent, boolean blockUserWhenFail, File outdatedFile) {
        O9.b.d(new b(outdatedFile, manifestContent));
    }
}
