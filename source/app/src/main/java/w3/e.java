package w3;

import K8.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import id.C13696a;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class e {

    public static final String f126420a = "AndroidFilePicker";

    public static final List<C2087e> f126421b = new SteppedArrayList();

    public static final Set<Integer> f126422c = new HashSet();

    public class a implements c {
        @Override
        public boolean a(DocumentFile documentFile, File destination) {
            return e.c(documentFile.getUri(), destination);
        }
    }

    public static class b {

        public static final int[] f126423a;

        static {
            int[] iArr = new int[c.a.values().length];
            f126423a = iArr;
            try {
                iArr[c.a.Portrait.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126423a[c.a.Landscape.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface c {
        boolean a(DocumentFile documentFile, File destination);
    }

    public interface d {
        void onCancel();

        void onError(String error);

        void onSuccess(List<DocumentFile> files, c callback);
    }

    public static class C2087e {

        public int f126424a;

        public d f126425b;

        public C2087e(int code, d listener) {
            this.f126424a = code;
            this.f126425b = listener;
        }
    }

    public static boolean b(DocumentFile documentFile, File destination) {
        return c(documentFile.getUri(), destination);
    }

    public static boolean c(Uri uri, File destination) {
        try {
            Context t10 = N7.c.t();
            t10.grantUriPermission(N7.c.C(), uri, 1);
            return C13696a.d(t10.getContentResolver().openInputStream(uri), destination);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean d(Uri uri, String destination) {
        try {
            Context t10 = N7.c.t();
            t10.grantUriPermission(N7.c.C(), uri, 1);
            return C13696a.d(t10.getContentResolver().openInputStream(uri), new File(destination));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean e(int requestCode, int resultCode, Intent intent) {
        int i10;
        C2087e next;
        List<C2087e> list = f126421b;
        synchronized (list) {
            try {
                Iterator<C2087e> it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next = it.next();
                } while (next.f126424a != requestCode);
                d dVar = next.f126425b;
                f126421b.remove(next);
                f126422c.remove(Integer.valueOf(next.f126424a));
                Activity o10 = N7.c.o();
                if (resultCode == -1) {
                    try {
                        DocumentFile fromTreeUri = DocumentFile.fromTreeUri(o10, intent.getData());
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        for (DocumentFile documentFile : fromTreeUri.listFiles()) {
                            if (documentFile.canRead()) {
                                steppedArrayList.add(documentFile);
                            }
                            Log.d(f126420a, "Found file " + documentFile.getName() + " with size " + documentFile.length() + " can read " + documentFile.canRead());
                        }
                        dVar.onSuccess(steppedArrayList, new a());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void f(Activity activity, d listener) {
        Set<Integer> set;
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        try {
            synchronized (f126421b) {
                try {
                    int j10 = Nc.d.j(1, 99999);
                    while (true) {
                        set = f126422c;
                        if (!set.contains(Integer.valueOf(j10))) {
                            break;
                        } else {
                            j10 = Nc.d.j(1, 99999);
                        }
                    }
                    f126421b.add(new C2087e(j10, listener));
                    set.add(Integer.valueOf(j10));
                    int i10 = b.f126423a[K8.c.f11004e.ordinal()];
                    if (i10 == 1) {
                        N7.c.o().setRequestedOrientation(7);
                    } else if (i10 == 2) {
                        N7.c.o().setRequestedOrientation(6);
                    }
                    Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
                    intent.addFlags(1);
                    activity.startActivityForResult(intent, j10);
                } finally {
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void g(d listener) {
        f(N7.c.o(), listener);
    }
}
