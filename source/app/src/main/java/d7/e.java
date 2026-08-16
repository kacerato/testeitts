package D7;

import U.h;
import U9.InterfaceC3114c;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Utils.ThumbBuilder.Core.Manifest;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import ub.n;
import yd.C16181m;

public class e {

    public static final Queue<d> f4913a = new LinkedList();

    public static final AtomicBoolean f4914b = new AtomicBoolean(false);

    public class a implements Runnable {
        @Override
        public void run() {
            d dVar;
            while (true) {
                try {
                    synchronized (e.f4913a) {
                        dVar = (d) e.f4913a.poll();
                    }
                    if (dVar == null) {
                        break;
                    } else {
                        e.f(dVar);
                    }
                } catch (Throwable th2) {
                    e.f4914b.set(false);
                    synchronized (e.f4913a) {
                        try {
                            if (!e.f4913a.isEmpty()) {
                                e.h();
                            }
                            throw th2;
                        } finally {
                        }
                    }
                }
            }
            e.f4914b.set(false);
            synchronized (e.f4913a) {
                try {
                    if (!e.f4913a.isEmpty()) {
                        e.h();
                    }
                } finally {
                }
            }
        }
    }

    public class b implements Runnable {

        public final ImageView f4915b;

        public final File f4916c;

        public b(final ImageView val$display, final File val$thumbFile) {
            this.f4915b = val$display;
            this.f4916c = val$thumbFile;
        }

        @Override
        public void run() {
            Vc.e.L(this.f4915b, this.f4916c.getAbsolutePath(), N7.c.t(), new h().u(R.drawable.sui_button_v3), i.f59186b);
        }
    }

    public class c implements InterfaceC3114c {
        @Override
        public float a(float px) {
            return Nc.b.w0(px * 3.5f);
        }
    }

    public static class d {

        public final File f4917a;

        public final WeakReference<ImageView> f4918b;

        public d(File file, ImageView display) {
            this.f4917a = file;
            this.f4918b = new WeakReference<>(display);
        }

        public File a() {
            return new File((Tc.b.O(this.f4917a.getAbsolutePath()) + ".meta/") + "thumb.png");
        }
    }

    public static void e(File file, ImageView display) {
        if (file == null || !file.exists()) {
            throw new RuntimeException();
        }
        Queue<d> queue = f4913a;
        synchronized (queue) {
            try {
                Iterator<d> it = queue.iterator();
                while (it.hasNext()) {
                    if (it.next().f4917a.getAbsolutePath().equals(file.getAbsolutePath())) {
                        return;
                    }
                }
                f4913a.add(new d(file, display));
                h();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void f(d obj) {
        try {
            if (i(obj.f4917a, obj.a())) {
                Manifest manifest = new Manifest();
                manifest.b();
                E7.f.b(g(obj.f4917a), manifest);
                ImageView imageView = obj.f4918b.get();
                File a10 = obj.a();
                if (imageView == null || !a10.exists()) {
                    return;
                }
                N7.c.j0(new b(imageView, a10));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String g(File file) {
        String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
        String absolutePath = file.getAbsolutePath();
        if (!absolutePath.startsWith(R10)) {
            return absolutePath;
        }
        String substring = absolutePath.substring(R10.length());
        return (substring.startsWith("/") || substring.startsWith(C16181m.f130232i)) ? substring.substring(1) : substring;
    }

    public static void h() {
        if (f4914b.compareAndSet(false, true)) {
            new Thread(new a()).start();
        }
    }

    public static boolean i(File source, File output) {
        UIStyle uIStyle;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            uIStyle = UIStyle.O(X7.a.x(source));
        } catch (Exception e10) {
            e10.printStackTrace();
            uIStyle = null;
        }
        if (uIStyle == null) {
            return false;
        }
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.allowModifications = true;
        textureConfig.genMipmaps = false;
        n nVar = new n(256, 256, textureConfig);
        uIStyle.x0(nVar, new c());
        int[] iArr = new int[65536];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            int i12 = 0;
            while (i12 < 256) {
                iArr[i10] = nVar.i(i12, i11).intColor;
                i12++;
                i10++;
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, 256, 0, 0, 256, 256);
        File parentFile = output.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            try {
                fileOutputStream = new FileOutputStream(output);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
        try {
            boolean compress = createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            try {
                fileOutputStream.close();
            } catch (Exception unused) {
            }
            return compress;
        } catch (Exception e12) {
            e = e12;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception unused2) {
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
    }
}
