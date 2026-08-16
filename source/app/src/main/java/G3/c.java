package g3;

import G0.A;
import T0.C3031a;
import T0.n;
import Z2.j;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.installations.FirebaseInstallationsException;
import f3.C13183b;
import g3.d;
import g3.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import v1.C15793n;

public class c {

    public static final String f88094A = "x-goog-api-key";

    public static final int f88095B = 10000;

    public static final int f88097D = 1;

    public static final String f88099F = "a:";

    public static final String f88100G = "Firebase-Installations";

    @VisibleForTesting
    public static final String f88101H = "Invalid Expiration Timestamp.";

    public static final int f88102e = 32768;

    public static final int f88103f = 32769;

    public static final int f88104g = 32770;

    public static final int f88105h = 32771;

    public static final String f88106i = "firebaseinstallations.googleapis.com";

    public static final String f88107j = "projects/%s/installations";

    public static final String f88108k = "projects/%s/installations/%s/authTokens:generate";

    public static final String f88109l = "projects/%s/installations/%s";

    public static final String f88110m = "v1";

    public static final String f88111n = "FIS_v2";

    public static final String f88112o = "Content-Type";

    public static final String f88113p = "Accept";

    public static final String f88114q = "application/json";

    public static final String f88115r = "Content-Encoding";

    public static final String f88116s = "gzip";

    public static final String f88117t = "Cache-Control";

    public static final String f88118u = "no-cache";

    public static final String f88119v = "fire-installations-id";

    public static final String f88120w = "x-firebase-client";

    public static final String f88121x = "X-Android-Package";

    public static final String f88122y = "X-Android-Cert";

    public static final String f88123z = "x-goog-fis-android-iid-migration-auth";

    public boolean f88124a;

    public final Context f88125b;

    public final a3.b<j> f88126c;

    public final e f88127d = new e();

    public static final Pattern f88096C = Pattern.compile("[0-9]+s");

    public static final Charset f88098E = Charset.forName("UTF-8");

    public c(@NonNull Context context, @NonNull a3.b<j> bVar) {
        this.f88125b = context;
        this.f88126c = bVar;
    }

    public static String a(@Nullable String str, @NonNull String str2, @NonNull String str3) {
        String str4;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", str2, str3, str4);
    }

    public static JSONObject b(@Nullable String str, @NonNull String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", f88111n);
            jSONObject.put("sdkVersion", "a:18.0.0");
            return jSONObject;
        } catch (JSONException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static JSONObject c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:18.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static byte[] i(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes("UTF-8");
    }

    public static boolean j(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    public static void k() {
        Log.e(f88100G, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    public static void l(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2, @NonNull String str3) {
        String p10 = p(httpURLConnection);
        if (TextUtils.isEmpty(p10)) {
            return;
        }
        Log.w(f88100G, p10);
        Log.w(f88100G, a(str, str2, str3));
    }

    @VisibleForTesting
    public static long n(String str) {
        A.b(f88096C.matcher(str).matches(), f88101H);
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    @Nullable
    public static String p(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f88098E));
        try {
            try {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
                String format = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb2);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return format;
            } catch (IOException unused2) {
                return null;
            }
        } catch (IOException unused3) {
            bufferedReader.close();
            return null;
        } catch (Throwable th2) {
            try {
                bufferedReader.close();
            } catch (IOException unused4) {
            }
            throw th2;
        }
    }

    public static void t(URLConnection uRLConnection, byte[] bArr) throws IOException {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @NonNull
    public d d(@NonNull String str, @Nullable String str2, @NonNull String str3, @NonNull String str4, @Nullable String str5) throws FirebaseInstallationsException {
        int responseCode;
        d o10;
        if (!this.f88127d.b()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
        URL h10 = h(String.format(f88107j, str3));
        for (int i10 = 0; i10 <= 1; i10++) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection m10 = m(h10, str);
            try {
                try {
                    m10.setRequestMethod("POST");
                    m10.setDoOutput(true);
                    if (str5 != null) {
                        m10.addRequestProperty(f88123z, str5);
                    }
                    r(m10, str2, str4);
                    responseCode = m10.getResponseCode();
                    this.f88127d.f(responseCode);
                } catch (IOException | AssertionError unused) {
                }
                if (j(responseCode)) {
                    o10 = o(m10);
                } else {
                    l(m10, str4, str, str3);
                    if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.a.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        k();
                        o10 = d.a().e(d.b.BAD_CONFIG).a();
                    }
                    m10.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
                m10.disconnect();
                TrafficStats.clearThreadStatsTag();
                return o10;
            } catch (Throwable th2) {
                m10.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th2;
            }
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
    }

    @NonNull
    public void e(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) throws FirebaseInstallationsException {
        int responseCode;
        URL h10 = h(String.format(f88109l, str3, str2));
        int i10 = 0;
        while (i10 <= 1) {
            TrafficStats.setThreadStatsTag(32770);
            HttpURLConnection m10 = m(h10, str);
            try {
                m10.setRequestMethod("DELETE");
                m10.addRequestProperty("Authorization", "FIS_v2 " + str4);
                responseCode = m10.getResponseCode();
            } catch (IOException unused) {
            } catch (Throwable th2) {
                m10.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th2;
            }
            if (responseCode != 200 && responseCode != 401 && responseCode != 404) {
                l(m10, null, str, str3);
                if (responseCode != 429 && (responseCode < 500 || responseCode >= 600)) {
                    k();
                    throw new FirebaseInstallationsException("Bad config while trying to delete FID", FirebaseInstallationsException.a.BAD_CONFIG);
                    break;
                }
                i10++;
                m10.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
            m10.disconnect();
            TrafficStats.clearThreadStatsTag();
            return;
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
    }

    @NonNull
    public f f(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) throws FirebaseInstallationsException {
        int responseCode;
        f q10;
        if (!this.f88127d.b()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
        URL h10 = h(String.format(f88108k, str3, str2));
        for (int i10 = 0; i10 <= 1; i10++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection m10 = m(h10, str);
            try {
                try {
                    m10.setRequestMethod("POST");
                    m10.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    m10.setDoOutput(true);
                    s(m10);
                    responseCode = m10.getResponseCode();
                    this.f88127d.f(responseCode);
                } finally {
                    m10.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused) {
            }
            if (j(responseCode)) {
                q10 = q(m10);
            } else {
                l(m10, null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    q10 = f.a().b(f.b.AUTH_ERROR).a();
                } else {
                    if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.a.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        k();
                        q10 = f.a().b(f.b.BAD_CONFIG).a();
                    }
                }
            }
            return q10;
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
    }

    public final String g() {
        try {
            Context context = this.f88125b;
            byte[] a10 = C3031a.a(context, context.getPackageName());
            if (a10 != null) {
                return n.c(a10, false);
            }
            Log.e(ContentValues.TAG, "Could not get fingerprint hash for package: " + this.f88125b.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e(ContentValues.TAG, "No such package: " + this.f88125b.getPackageName(), e10);
            return null;
        }
    }

    public final URL h(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", f88106i, f88110m, str));
        } catch (MalformedURLException e10) {
            throw new FirebaseInstallationsException(e10.getMessage(), FirebaseInstallationsException.a.UNAVAILABLE);
        }
    }

    public final HttpURLConnection m(URL url, String str) throws FirebaseInstallationsException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", f88114q);
            httpURLConnection.addRequestProperty("Accept", f88114q);
            httpURLConnection.addRequestProperty("Content-Encoding", f88116s);
            httpURLConnection.addRequestProperty("Cache-Control", f88118u);
            httpURLConnection.addRequestProperty(f88121x, this.f88125b.getPackageName());
            j jVar = this.f88126c.get();
            if (jVar != null) {
                try {
                    httpURLConnection.addRequestProperty(f88120w, (String) C15793n.a(jVar.b()));
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    Log.w(ContentValues.TAG, "Failed to get heartbeats header", e10);
                } catch (ExecutionException e11) {
                    Log.w(ContentValues.TAG, "Failed to get heartbeats header", e11);
                }
            }
            httpURLConnection.addRequestProperty(f88122y, g());
            httpURLConnection.addRequestProperty(f88094A, str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
    }

    public final d o(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f88098E));
        f.a a10 = f.a();
        d.a a11 = d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                a11.f(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                a11.c(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                a11.d(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals(C13183b.f85996h)) {
                        a10.c(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        a10.d(n(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                a11.b(a10.a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return a11.e(d.b.OK).a();
    }

    public final f q(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f88098E));
        f.a a10 = f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(C13183b.f85996h)) {
                a10.c(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                a10.d(n(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return a10.b(f.b.OK).a();
    }

    public final void r(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2) throws IOException {
        t(httpURLConnection, i(b(str, str2)));
    }

    public final void s(HttpURLConnection httpURLConnection) throws IOException {
        t(httpURLConnection, i(c()));
    }
}
