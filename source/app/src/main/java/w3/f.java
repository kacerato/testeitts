package w3;

import K8.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import id.C13696a;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class f {

    public static final List<d> f126426a = new SteppedArrayList();

    public static final Set<Integer> f126427b = new HashSet();

    public class a implements Runnable {

        public final Uri f126428b;

        public final c f126429c;

        public class RunnableC2088a implements Runnable {

            public final String f126430b;

            public final File f126431c;

            public RunnableC2088a(final String val$finalName, final File val$imageFile) {
                this.f126430b = val$finalName;
                this.f126431c = val$imageFile;
            }

            @Override
            public void run() {
                a.this.f126429c.onSuccess(this.f126430b, this.f126431c);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                a.this.f126429c.onError("Failed to load imported image");
            }
        }

        public a(final Uri val$selectedImage, final c val$listener) {
            this.f126428b = val$selectedImage;
            this.f126429c = val$listener;
        }

        @Override
        public void run() {
            String str = W7.b.f27306f.f2458a.f() + "/gallery/" + Tc.b.L();
            File file = new File(str);
            if (!f.b(this.f126428b, str)) {
                N7.c.j0(new b());
                return;
            }
            String path = this.f126428b.getPath();
            if (path == null || (!path.contains(".") && !path.contains("external_files_files/ITsMagic/Projects"))) {
                path = Vc.f.c(N7.c.t(), this.f126428b);
            }
            N7.c.j0(new RunnableC2088a(Tc.b.v(path), file));
        }
    }

    public static class b {

        public static final int[] f126434a;

        static {
            int[] iArr = new int[c.a.values().length];
            f126434a = iArr;
            try {
                iArr[c.a.Portrait.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126434a[c.a.Landscape.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface c {
        void onCancel();

        void onError(String error);

        void onSuccess(String imageName, File imageFile);
    }

    public static class d {

        public int f126435a;

        public c f126436b;

        public d(int code, c listener) {
            this.f126435a = code;
            this.f126436b = listener;
        }
    }

    public static boolean b(Uri uri, String destination) {
        try {
            Context t10 = N7.c.t();
            t10.grantUriPermission(N7.c.C(), uri, 1);
            return C13696a.d(t10.getContentResolver().openInputStream(uri), new File(destination));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean c(int requestCode, int resultCode, Intent intent) {
        List<d> list = f126426a;
        synchronized (list) {
            try {
                for (d dVar : list) {
                    if (dVar.f126435a == requestCode) {
                        c cVar = dVar.f126436b;
                        f126426a.remove(dVar);
                        f126427b.remove(Integer.valueOf(dVar.f126435a));
                        if (intent == null) {
                            cVar.onCancel();
                            return true;
                        }
                        Uri data = intent.getData();
                        if (data == null) {
                            cVar.onCancel();
                            return true;
                        }
                        new Thread(new a(data, cVar)).start();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(Activity activity, c listener) {
        Set<Integer> set;
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        try {
            synchronized (f126426a) {
                try {
                    int j10 = Nc.d.j(1, 99999);
                    while (true) {
                        set = f126427b;
                        if (!set.contains(Integer.valueOf(j10))) {
                            break;
                        } else {
                            j10 = Nc.d.j(1, 99999);
                        }
                    }
                    f126426a.add(new d(j10, listener));
                    set.add(Integer.valueOf(j10));
                    int i10 = b.f126434a[K8.c.f11004e.ordinal()];
                    if (i10 == 1) {
                        N7.c.o().setRequestedOrientation(7);
                    } else if (i10 == 2) {
                        N7.c.o().setRequestedOrientation(6);
                    }
                    activity.startActivityForResult(new Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI), j10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void e(c listener) {
        d(N7.c.o(), listener);
    }
}
