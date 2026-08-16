package w3;

import K8.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.itsmagic.engine.Activities.Editor.Extensions.ManagerDocumentsProvider;
import id.C13696a;
import java.io.File;
import java.io.FileNotFoundException;

public class l {

    public static final int f126466a = 9998;

    public static o f126467b;

    public static class a {

        public static final int[] f126468a;

        static {
            int[] iArr = new int[c.a.values().length];
            f126468a = iArr;
            try {
                iArr[c.a.Portrait.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126468a[c.a.Landscape.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static boolean a(int requestCode, int resultCode, Intent intent, Activity activity) {
        if (requestCode != 9998) {
            return false;
        }
        o oVar = f126467b;
        if (oVar == null) {
            return true;
        }
        oVar.a(requestCode, resultCode, intent, activity);
        f126467b = null;
        return true;
    }

    public static boolean b(Uri uri, String destination, Context context) {
        try {
            return C13696a.d(context.getContentResolver().openInputStream(uri), new File(destination));
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void c(Activity activity, o listener) {
        try {
            int i10 = a.f126468a[K8.c.f11004e.ordinal()];
            if (i10 == 1) {
                N7.c.o().setRequestedOrientation(7);
            } else if (i10 == 2) {
                N7.c.o().setRequestedOrientation(6);
            }
            f126467b = listener;
            Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType(ManagerDocumentsProvider.f70102b);
            activity.startActivityForResult(Intent.createChooser(intent, "Choose a file"), f126466a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void d(o listener) {
        c(N7.c.o(), listener);
    }
}
