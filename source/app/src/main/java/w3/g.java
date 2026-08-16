package w3;

import K8.c;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.documentfile.provider.DocumentFile;
import com.itsmagic.engine.Activities.Editor.Extensions.ManagerDocumentsProvider;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import id.C13696a;
import java.io.File;
import java.util.List;

public class g {

    public static final String f126437a = "AndroidMultipleFilePicker";

    public class a implements v3.l {

        public final d f126438a;

        public class C2089a implements c {
            public C2089a() {
            }

            @Override
            public boolean a(Uri uri, File destination) {
                return g.b(uri, destination);
            }

            @Override
            public String b(Uri uri) {
                return DocumentFile.fromSingleUri(N7.c.o(), uri).getName();
            }
        }

        public a(final d val$listener) {
            this.f126438a = val$listener;
        }

        @Override
        public void a(int resultCode, Intent intent) {
            if (resultCode == -1) {
                try {
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    ClipData clipData = intent.getClipData();
                    if (clipData != null) {
                        for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
                            steppedArrayList.add(clipData.getItemAt(i10).getUri());
                        }
                    } else {
                        steppedArrayList.add(intent.getData());
                    }
                    this.f126438a.a(steppedArrayList, new C2089a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f126438a.onError(e10.getMessage());
                }
            }
        }
    }

    public static class b {

        public static final int[] f126440a;

        static {
            int[] iArr = new int[c.a.values().length];
            f126440a = iArr;
            try {
                iArr[c.a.Portrait.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126440a[c.a.Landscape.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface c {
        boolean a(Uri documentFile, File destination);

        String b(Uri uri);
    }

    public interface d {
        void a(List<Uri> files, c callback);

        void onCancel();

        void onError(String error);
    }

    public static boolean b(Uri uri, File destination) {
        try {
            Context t10 = N7.c.t();
            t10.grantUriPermission(N7.c.C(), uri, 1);
            return C13696a.d(t10.getContentResolver().openInputStream(uri), destination);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean c(Uri uri, String destination) {
        try {
            Context t10 = N7.c.t();
            t10.grantUriPermission(N7.c.C(), uri, 1);
            return C13696a.d(t10.getContentResolver().openInputStream(uri), new File(destination));
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void d(d listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        int j10 = Nc.d.j(1, 99999);
        int i10 = b.f126440a[K8.c.f11004e.ordinal()];
        if (i10 == 1) {
            N7.c.o().setRequestedOrientation(7);
        } else if (i10 == 2) {
            N7.c.o().setRequestedOrientation(6);
        }
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.setType(ManagerDocumentsProvider.f70102b);
        intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
        intent.addFlags(1);
        N7.c.r0(j10, intent, new a(listener));
    }
}
