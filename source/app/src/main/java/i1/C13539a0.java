package i1;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.security.keystore.KeyProperties;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class C13539a0 {

    @Nullable
    @GuardedBy("DeviceId.class")
    public static String f91284a;

    public static synchronized String a(Context context) {
        String str;
        synchronized (C13539a0.class) {
            try {
                if (f91284a == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
                    if (string != null) {
                        if (b()) {
                        }
                        f91284a = c(string);
                    }
                    string = "emulator";
                    f91284a = c(string);
                }
                str = f91284a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static boolean b() {
        String str = Build.FINGERPRINT;
        if (str.startsWith("generic") || str.startsWith("unknown")) {
            return true;
        }
        String str2 = Build.MODEL;
        if (str2.contains("google_sdk") || str2.contains("Emulator") || str2.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    public static String c(String str) {
        for (int i10 = 0; i10 < 3; i10++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
                messageDigest.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return "";
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return "";
    }
}
