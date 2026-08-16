package i1;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.UiThread;
import com.google.android.gms.internal.consent_sdk.zzj;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

public final class O implements t0 {

    public final Application f91229a;

    public final K f91230b;

    public final Handler f91231c;

    public final Executor f91232d;

    public final u0 f91233e;

    public final C13560l f91234f;

    public final C13577z f91235g;

    public final C13564n f91236h;

    public O(Application application, K k10, Handler handler, Executor executor, u0 u0Var, C13560l c13560l, C13577z c13577z, C13564n c13564n) {
        this.f91229a = application;
        this.f91230b = k10;
        this.f91231c = handler;
        this.f91232d = executor;
        this.f91233e = u0Var;
        this.f91234f = c13560l;
        this.f91235g = c13577z;
        this.f91236h = c13564n;
    }

    @Override
    public final Executor N1() {
        final Handler handler = this.f91231c;
        return new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                Handler.this.post(runnable);
            }
        };
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    @UiThread
    public final boolean a(String str, JSONObject jSONObject) {
        char c10;
        char c11 = '\uffff';
        switch (str.hashCode()) {
            case -1370505102:
                if (str.equals("load_complete")) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case -278739366:
                if (str.equals("configure_app_assets")) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            case 150940456:
                if (str.equals("browser")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            case 1671672458:
                if (str.equals("dismiss")) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        if (c10 == 0) {
            this.f91235g.f();
            return true;
        }
        if (c10 != 1) {
            if (c10 == 2) {
                e(jSONObject);
                return true;
            }
            if (c10 != 3) {
                return false;
            }
            this.f91232d.execute(new Runnable() {
                @Override
                public final void run() {
                    O.this.b();
                }
            });
            return true;
        }
        String optString = jSONObject.optString("status");
        switch (optString.hashCode()) {
            case -954325659:
                if (optString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                    c11 = 3;
                    break;
                }
                break;
            case -258041904:
                if (optString.equals("personalized")) {
                    c11 = 0;
                    break;
                }
                break;
            case 429411856:
                if (optString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                    c11 = 4;
                    break;
                }
                break;
            case 467888915:
                if (optString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                    c11 = 1;
                    break;
                }
                break;
            case 1666911234:
                if (optString.equals("non_personalized")) {
                    c11 = 2;
                    break;
                }
                break;
        }
        if (c11 == 0 || c11 == 1 || c11 == 2 || c11 == 3 || c11 == 4) {
            this.f91235g.d(3);
        } else {
            this.f91235g.e(new zzj(1, "We are getting something wrong with the webview."));
        }
        return true;
    }

    public final void b() {
        String concat;
        Application application = this.f91229a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
            Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
            if (applicationIcon == null) {
                concat = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                String valueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
                concat = valueOf.length() != 0 ? "data:image/png;base64,".concat(valueOf) : new String("data:image/png;base64,");
            }
            jSONObject.put("app_icon", concat);
            jSONObject.put("stored_infos_map", this.f91236h.b());
        } catch (JSONException unused) {
        }
        this.f91235g.b().b("UMP_configureFormWithAppAssets", jSONObject.toString());
    }

    public final void c(String str) {
        String valueOf = String.valueOf(str);
        Log.d("UserMessagingPlatform", valueOf.length() != 0 ? "Receive consent action: ".concat(valueOf) : new String("Receive consent action: "));
        Uri parse = Uri.parse(str);
        this.f91233e.b(parse.getQueryParameter("action"), parse.getQueryParameter("args"), this, this.f91234f);
    }

    public final void d(int i10, String str, String str2) {
        this.f91235g.g(new zzj(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i10), str2, str)));
    }

    @UiThread
    public final void e(JSONObject jSONObject) {
        String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            Log.d("UserMessagingPlatform", "Action[browser]: empty url.");
        }
        Uri parse = Uri.parse(optString);
        if (parse.getScheme() == null) {
            String valueOf = String.valueOf(optString);
            Log.d("UserMessagingPlatform", valueOf.length() != 0 ? "Action[browser]: empty scheme: ".concat(valueOf) : new String("Action[browser]: empty scheme: "));
        }
        try {
            this.f91230b.startActivity(new Intent("android.intent.action.VIEW", parse));
        } catch (ActivityNotFoundException e10) {
            String valueOf2 = String.valueOf(optString);
            Log.d("UserMessagingPlatform", valueOf2.length() != 0 ? "Action[browser]: can not open url: ".concat(valueOf2) : new String("Action[browser]: can not open url: "), e10);
        }
    }
}
