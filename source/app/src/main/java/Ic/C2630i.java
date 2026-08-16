package Ic;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.view.inputmethod.InputMethodManager;
import android.webkit.MimeTypeMap;
import androidx.annotation.RequiresApi;
import androidx.core.content.FileProvider;
import com.itsmagic.engine.Activities.Editor.Extensions.ManagerDocumentsProvider;
import java.io.File;
import java.util.Locale;
import t3.C15377a;

public class C2630i {

    public static final String f9106a = "com.itsmagic.vision";

    public static Vibrator f9107b;

    public class a implements Runnable {

        public final String f9108b;

        public final e f9109c;

        public class C0231a implements v3.l {
            public C0231a() {
            }

            @Override
            public void a(int resultCode, Intent intent) {
                a.this.f9109c.onResume();
            }
        }

        public a(final String val$url, final e val$resumeCallback) {
            this.f9108b = val$url;
            this.f9109c = val$resumeCallback;
        }

        @Override
        public void run() {
            String str = this.f9108b;
            if (!str.startsWith("http://") && !str.startsWith("https://")) {
                str = "http://" + str;
            }
            try {
                N7.c.s0(new Intent("android.intent.action.VIEW", Uri.parse(str)), new C0231a());
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f9109c.onResume();
            }
        }
    }

    public class b implements Runnable {

        public final String f9111b;

        public final Activity f9112c;

        public b(final String val$url, final Activity val$activity) {
            this.f9111b = val$url;
            this.f9112c = val$activity;
        }

        @Override
        public void run() {
            String str = this.f9111b;
            if (!str.startsWith("http://") && !str.startsWith("https://")) {
                str = "http://" + str;
            }
            try {
                this.f9112c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            ((InputMethodManager) N7.c.o().getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(N7.c.E().getWindowToken(), 0);
        }
    }

    public class d implements v3.l {

        public final e f9113a;

        public d(final e val$resumeCallback) {
            this.f9113a = val$resumeCallback;
        }

        @Override
        public void a(int resultCode, Intent intent) {
            this.f9113a.onResume();
        }
    }

    public interface e {
        void onResume();
    }

    public static int a() {
        return Runtime.getRuntime().availableProcessors();
    }

    public static void b() {
        N7.c.j0(new c());
    }

    public static String c() {
        return Settings.Secure.getString(N7.c.t().getContentResolver(), "android_id");
    }

    public static int d() {
        return ((BatteryManager) N7.c.t().getSystemService(Context.BATTERY_SERVICE)).getIntProperty(4);
    }

    public static String e() {
        return f(N7.c.t());
    }

    public static String f(Context context) {
        ClipData primaryClip;
        ClipData.Item itemAt;
        CharSequence text;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
            if (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0 || (itemAt = primaryClip.getItemAt(0)) == null || (text = itemAt.getText()) == null) {
                return null;
            }
            return text.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String g(File file) {
        String name;
        int lastIndexOf;
        if (file != null && (lastIndexOf = (name = file.getName()).lastIndexOf(46)) >= 0 && lastIndexOf < name.length() - 1) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(lastIndexOf + 1).toLowerCase(Locale.ROOT));
            if (mimeTypeFromExtension != null && !mimeTypeFromExtension.isEmpty()) {
                return mimeTypeFromExtension;
            }
        }
        return ManagerDocumentsProvider.f70102b;
    }

    public static boolean h(String packageName) {
        try {
            N7.c.t().getPackageManager().getPackageInfo(packageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static void i(File file, String title, e resumeCallback) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        Context t10 = N7.c.t();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(FileProvider.getUriForFile(t10, t10.getApplicationContext().getPackageName() + ".provider", file), g(file));
        intent.addFlags(3);
        Intent createChooser = Intent.createChooser(intent, title);
        try {
            if (resumeCallback != null) {
                N7.c.s0(createChooser, new d(resumeCallback));
            } else {
                t10.startActivity(createChooser);
            }
        } catch (ActivityNotFoundException unused) {
            N7.c.v0("No app found to open this file");
            if (resumeCallback != null) {
                resumeCallback.onResume();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (resumeCallback != null) {
                resumeCallback.onResume();
            }
        }
    }

    public static void j() {
        l(C15377a.f109714b);
    }

    public static void k() {
        l(N7.c.C());
    }

    public static void l(String appPackageName) {
        try {
            try {
                N7.c.p0(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + appPackageName)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (ActivityNotFoundException unused) {
            N7.c.p0(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + appPackageName)));
        }
    }

    public static void m(String sku) {
        try {
            N7.c.p0(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account/subscriptions?sku=" + sku + "&package=" + N7.c.C())));
        } catch (ActivityNotFoundException e10) {
            N7.c.v0("Cant open play store");
            e10.printStackTrace();
        }
    }

    public static void n(String url) {
        p(url, N7.c.o());
    }

    public static void o(String url, e resumeCallback) {
        if (url == null || url.isEmpty()) {
            throw new NullPointerException("url can't be empty or null");
        }
        if (resumeCallback == null) {
            throw new NullPointerException("resumeCallback can't be null");
        }
        Activity o10 = N7.c.o();
        if (o10 == null) {
            throw new NullPointerException("activity can't be null");
        }
        o10.runOnUiThread(new a(url, resumeCallback));
    }

    public static void p(String url, Activity activity) {
        if (url == null || url.isEmpty()) {
            throw new NullPointerException("url can't be empty or null");
        }
        if (activity == null) {
            throw new NullPointerException("activity can't be null");
        }
        activity.runOnUiThread(new b(url, activity));
    }

    public static void q(String url, Context context) {
        if (url == null || url.isEmpty()) {
            throw new NullPointerException("url can't be empty or null");
        }
        if (context == null) {
            throw new NullPointerException("context can't be null");
        }
        if (!url.startsWith("http://") && !url.startsWith("https://")) {
            url = "http://" + url;
        }
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void r(Context context, String text) {
        ClipData newPlainText;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
            if (clipboardManager == null || (newPlainText = ClipData.newPlainText("Copied Text", text)) == null) {
                return;
            }
            clipboardManager.setPrimaryClip(newPlainText);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void s(String text) {
        r(N7.c.t(), text);
    }

    public static void t(File file, String tittle, String type) {
        Context t10 = N7.c.t();
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.putExtra(Intent.EXTRA_STREAM, FileProvider.getUriForFile(t10, t10.getApplicationContext().getPackageName() + ".provider", file));
        intent.addFlags(1);
        intent.setType("application/" + type);
        t10.startActivity(Intent.createChooser(intent, tittle));
    }

    public static void u() {
        Vibrator vibrator = f9107b;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    @RequiresApi(api = 26)
    public static void v(VibrationEffect vibrationEffect) {
        Context t10 = N7.c.t();
        Vibrator vibrator = f9107b;
        if (vibrator == null) {
            f9107b = (Vibrator) t10.getSystemService(Context.VIBRATOR_SERVICE);
        } else {
            vibrator.cancel();
        }
        f9107b.vibrate(vibrationEffect);
    }

    public static void w(long milis) {
        v(VibrationEffect.createOneShot(milis, -1));
    }

    public static void x(final long[] pattern, int repeat) {
        v(VibrationEffect.createWaveform(pattern, repeat));
    }
}
