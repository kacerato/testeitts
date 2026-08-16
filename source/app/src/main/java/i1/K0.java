package i1;

import android.app.Activity;
import android.app.Application;
import android.media.tv.TvContract;
import android.os.Handler;
import android.util.JsonReader;
import android.util.JsonWriter;
import android.util.Log;
import android.webkit.WebSettings;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.google.android.gms.internal.consent_sdk.zzj;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.Executor;
import u2.C15566a;
import u2.C15569d;
import u2.InterfaceC15568c;

public final class K0 {

    public final Application f91203a;

    public final C13544d f91204b;

    public final Handler f91205c;

    public final Executor f91206d;

    public final C13564n f91207e;

    public final C f91208f;

    public final z0 f91209g;

    public final O0 f91210h;

    public final u0 f91211i;

    public K0(Application application, C13544d c13544d, Handler handler, Executor executor, C13564n c13564n, C c10, z0 z0Var, O0 o02, u0 u0Var) {
        this.f91203a = application;
        this.f91204b = c13544d;
        this.f91205c = handler;
        this.f91206d = executor;
        this.f91207e = c13564n;
        this.f91208f = c10;
        this.f91209g = z0Var;
        this.f91210h = o02;
        this.f91211i = u0Var;
    }

    public final void a(final InterfaceC15568c.InterfaceC2023c interfaceC2023c) {
        Handler handler = this.f91205c;
        interfaceC2023c.getClass();
        handler.post(new Runnable() {
            @Override
            public final void run() {
                InterfaceC15568c.InterfaceC2023c.this.a();
            }
        });
    }

    public final void b(Activity activity, C15569d c15569d, final InterfaceC15568c.InterfaceC2023c interfaceC2023c, final InterfaceC15568c.b bVar) {
        try {
            C15566a a10 = c15569d.a();
            if (a10 != null) {
                if (!a10.b()) {
                }
                C13540b a11 = new N0(this.f91210h, d(this.f91209g.d(activity, c15569d))).a();
                this.f91207e.f(a11.f91285a);
                this.f91208f.b(a11.f91286b);
                this.f91211i.a().execute(new Runnable() {
                    @Override
                    public final void run() {
                        K0.this.a(interfaceC2023c);
                    }
                });
            }
            String a12 = C13539a0.a(this.f91203a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(a12).length() + 95);
            sb2.append("Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\"");
            sb2.append(a12);
            sb2.append("\") to set this as a debug device.");
            Log.i("UserMessagingPlatform", sb2.toString());
            C13540b a112 = new N0(this.f91210h, d(this.f91209g.d(activity, c15569d))).a();
            this.f91207e.f(a112.f91285a);
            this.f91208f.b(a112.f91286b);
            this.f91211i.a().execute(new Runnable() {
                @Override
                public final void run() {
                    K0.this.a(interfaceC2023c);
                }
            });
        } catch (zzj e10) {
            this.f91205c.post(new Runnable() {
                @Override
                public final void run() {
                    InterfaceC15568c.b.this.a(e10.zza());
                }
            });
        } catch (RuntimeException e11) {
            String valueOf = String.valueOf(Log.getStackTraceString(e11));
            final zzj zzjVar = new zzj(1, valueOf.length() != 0 ? "Caught exception when trying to request consent info update: ".concat(valueOf) : new String("Caught exception when trying to request consent info update: "));
            this.f91205c.post(new Runnable() {
                @Override
                public final void run() {
                    InterfaceC15568c.b.this.a(zzjVar.zza());
                }
            });
        }
    }

    public final void c(@Nullable final Activity activity, final C15569d c15569d, final InterfaceC15568c.InterfaceC2023c interfaceC2023c, final InterfaceC15568c.b bVar) {
        this.f91206d.execute(new Runnable() {
            @Override
            public final void run() {
                K0.this.b(activity, c15569d, interfaceC2023c, bVar);
            }
        });
    }

    @WorkerThread
    public final Z d(X x10) throws zzj {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://fundingchoicesmessages.google.com/a/consent").openConnection();
            httpURLConnection.setRequestProperty("User-Agent", WebSettings.getDefaultUserAgent(this.f91203a));
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", g3.c.f88114q);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8");
            try {
                JsonWriter jsonWriter = new JsonWriter(outputStreamWriter);
                try {
                    jsonWriter.beginObject();
                    String str = x10.f91263a;
                    if (str != null) {
                        jsonWriter.name("admob_app_id");
                        jsonWriter.value(str);
                    }
                    Boolean bool = x10.f91264b;
                    if (bool != null) {
                        jsonWriter.name("is_lat");
                        jsonWriter.value(bool.booleanValue());
                    }
                    String str2 = x10.f91265c;
                    if (str2 != null) {
                        jsonWriter.name("adid");
                        jsonWriter.value(str2);
                    }
                    T t10 = x10.f91266d;
                    if (t10 != null) {
                        jsonWriter.name("device_info");
                        jsonWriter.beginObject();
                        int i10 = t10.f91253c;
                        if (i10 != 1) {
                            jsonWriter.name("os_type");
                            if (i10 == 0) {
                                throw null;
                            }
                            S s10 = S.DEBUG_PARAM_UNKNOWN;
                            if (i10 - 1 != 0) {
                                jsonWriter.value("ANDROID");
                            } else {
                                jsonWriter.value("UNKNOWN");
                            }
                        }
                        String str3 = t10.f91251a;
                        if (str3 != null) {
                            jsonWriter.name(ResourceLocatorTool.TYPE_MODEL);
                            jsonWriter.value(str3);
                        }
                        Integer num = t10.f91252b;
                        if (num != null) {
                            jsonWriter.name("android_api_level");
                            jsonWriter.value(num);
                        }
                        jsonWriter.endObject();
                    }
                    String str4 = x10.f91267e;
                    if (str4 != null) {
                        jsonWriter.name("language_code");
                        jsonWriter.value(str4);
                    }
                    Boolean bool2 = x10.f91268f;
                    if (bool2 != null) {
                        jsonWriter.name("tag_for_under_age_of_consent");
                        jsonWriter.value(bool2.booleanValue());
                    }
                    Map<String, String> map = x10.f91269g;
                    if (!map.isEmpty()) {
                        jsonWriter.name("stored_infos_map");
                        jsonWriter.beginObject();
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            jsonWriter.name(entry.getKey());
                            jsonWriter.value(entry.getValue());
                        }
                        jsonWriter.endObject();
                    }
                    V v10 = x10.f91270h;
                    if (v10 != null) {
                        jsonWriter.name("screen_info");
                        jsonWriter.beginObject();
                        Integer num2 = v10.f91258a;
                        if (num2 != null) {
                            jsonWriter.name("width");
                            jsonWriter.value(num2);
                        }
                        Integer num3 = v10.f91259b;
                        if (num3 != null) {
                            jsonWriter.name("height");
                            jsonWriter.value(num3);
                        }
                        Double d10 = v10.f91260c;
                        if (d10 != null) {
                            jsonWriter.name("density");
                            jsonWriter.value(d10);
                        }
                        List<U> list = v10.f91261d;
                        if (!list.isEmpty()) {
                            jsonWriter.name("screen_insets");
                            jsonWriter.beginArray();
                            for (U u10 : list) {
                                jsonWriter.beginObject();
                                Integer num4 = u10.f91254a;
                                if (num4 != null) {
                                    jsonWriter.name("top");
                                    jsonWriter.value(num4);
                                }
                                Integer num5 = u10.f91255b;
                                if (num5 != null) {
                                    jsonWriter.name(ga.m.f88234c);
                                    jsonWriter.value(num5);
                                }
                                Integer num6 = u10.f91256c;
                                if (num6 != null) {
                                    jsonWriter.name("right");
                                    jsonWriter.value(num6);
                                }
                                Integer num7 = u10.f91257d;
                                if (num7 != null) {
                                    jsonWriter.name("bottom");
                                    jsonWriter.value(num7);
                                }
                                jsonWriter.endObject();
                            }
                            jsonWriter.endArray();
                        }
                        jsonWriter.endObject();
                    }
                    Q q10 = x10.f91271i;
                    if (q10 != null) {
                        jsonWriter.name("app_info");
                        jsonWriter.beginObject();
                        String str5 = q10.f91248a;
                        if (str5 != null) {
                            jsonWriter.name(TvContract.BaseTvColumns.COLUMN_PACKAGE_NAME);
                            jsonWriter.value(str5);
                        }
                        String str6 = q10.f91249b;
                        if (str6 != null) {
                            jsonWriter.name("publisher_display_name");
                            jsonWriter.value(str6);
                        }
                        String str7 = q10.f91250c;
                        if (str7 != null) {
                            jsonWriter.name("version");
                            jsonWriter.value(str7);
                        }
                        jsonWriter.endObject();
                    }
                    W w10 = x10.f91272j;
                    if (w10 != null) {
                        jsonWriter.name("sdk_info");
                        jsonWriter.beginObject();
                        String str8 = w10.f91262a;
                        if (str8 != null) {
                            jsonWriter.name("version");
                            jsonWriter.value(str8);
                        }
                        jsonWriter.endObject();
                    }
                    List<S> list2 = x10.f91273k;
                    if (!list2.isEmpty()) {
                        jsonWriter.name("debug_params");
                        jsonWriter.beginArray();
                        for (S s11 : list2) {
                            S s12 = S.DEBUG_PARAM_UNKNOWN;
                            int ordinal = s11.ordinal();
                            if (ordinal == 0) {
                                jsonWriter.value("DEBUG_PARAM_UNKNOWN");
                            } else if (ordinal == 1) {
                                jsonWriter.value("ALWAYS_SHOW");
                            } else if (ordinal == 2) {
                                jsonWriter.value("GEO_OVERRIDE_EEA");
                            } else if (ordinal == 3) {
                                jsonWriter.value("GEO_OVERRIDE_NON_EEA");
                            } else if (ordinal == 4) {
                                jsonWriter.value("PREVIEWING_DEBUG_MESSAGES");
                            }
                        }
                        jsonWriter.endArray();
                    }
                    jsonWriter.endObject();
                    jsonWriter.close();
                    outputStreamWriter.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != 200) {
                        String next = new Scanner(httpURLConnection.getErrorStream()).useDelimiter("\\A").next();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(next).length() + 31);
                        sb2.append("Http error code - ");
                        sb2.append(responseCode);
                        sb2.append(".\n");
                        sb2.append(next);
                        throw new IOException(sb2.toString());
                    }
                    String headerField = httpURLConnection.getHeaderField("x-ump-using-header");
                    if (headerField != null) {
                        Z a10 = Z.a(new JsonReader(new StringReader(headerField)));
                        a10.f91276a = new Scanner(httpURLConnection.getInputStream()).useDelimiter("\\A").next();
                        return a10;
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                    try {
                        bufferedReader.readLine();
                        JsonReader jsonReader = new JsonReader(bufferedReader);
                        try {
                            Z a11 = Z.a(jsonReader);
                            jsonReader.close();
                            bufferedReader.close();
                            return a11;
                        } finally {
                        }
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } finally {
                }
            } catch (Throwable th4) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (SocketTimeoutException e10) {
            throw new zzj(4, "The server timed out.", e10);
        } catch (IOException e11) {
            throw new zzj(2, "Error making request.", e11);
        }
    }
}
