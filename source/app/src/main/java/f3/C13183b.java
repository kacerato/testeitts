package f3;

import K2.g;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.security.keystore.KeyProperties;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b3.s;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

public class C13183b {

    public static final String f85991c = "com.google.android.gms.appid";

    public static final String f85992d = "|S||P|";

    public static final String f85993e = "|S|id";

    public static final String f85994f = "|T|";

    public static final String f85995g = "|";

    public static final String f85996h = "token";

    public static final String f85997i = "{";

    public static final String[] f85998j = {"*", "FCM", "GCM", ""};

    @GuardedBy("iidPrefs")
    public final SharedPreferences f85999a;

    public final String f86000b;

    public C13183b(@NonNull g gVar) {
        this.f85999a = gVar.n().getSharedPreferences(f85991c, 0);
        this.f86000b = b(gVar);
    }

    public static String b(g gVar) {
        String m10 = gVar.s().m();
        if (m10 != null) {
            return m10;
        }
        String j10 = gVar.s().j();
        if (!j10.startsWith("1:") && !j10.startsWith("2:")) {
            return j10;
        }
        String[] split = j10.split(s.f32937c);
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Nullable
    public static String c(@NonNull PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w(ContentValues.TAG, "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    public final String a(@NonNull String str, @NonNull String str2) {
        return f85994f + str + "|" + str2;
    }

    public final String d(String str) {
        try {
            return new JSONObject(str).getString(f85996h);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    public final PublicKey e(String str) {
        try {
            return KeyFactory.getInstance(KeyProperties.KEY_ALGORITHM_RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e10) {
            Log.w(ContentValues.TAG, "Invalid key stored " + e10);
            return null;
        }
    }

    @Nullable
    public String f() {
        synchronized (this.f85999a) {
            try {
                String g10 = g();
                if (g10 != null) {
                    return g10;
                }
                return h();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final String g() {
        String string;
        synchronized (this.f85999a) {
            string = this.f85999a.getString(f85993e, null);
        }
        return string;
    }

    @Nullable
    public final String h() {
        synchronized (this.f85999a) {
            try {
                String string = this.f85999a.getString(f85992d, null);
                if (string == null) {
                    return null;
                }
                PublicKey e10 = e(string);
                if (e10 == null) {
                    return null;
                }
                return c(e10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public String i() {
        synchronized (this.f85999a) {
            try {
                for (String str : f85998j) {
                    String string = this.f85999a.getString(a(this.f86000b, str), null);
                    if (string != null && !string.isEmpty()) {
                        if (string.startsWith("{")) {
                            string = d(string);
                        }
                        return string;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    public C13183b(@NonNull SharedPreferences sharedPreferences, @Nullable String str) {
        this.f85999a = sharedPreferences;
        this.f86000b = str;
    }
}
