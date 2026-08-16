package i1;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

public final class C13560l implements t0 {

    public final Application f91332a;

    public final C13564n f91333b;

    public final Executor f91334c;

    public C13560l(Application application, C13564n c13564n, Executor executor) {
        this.f91332a = application;
        this.f91333b = c13564n;
        this.f91334c = executor;
    }

    @Override
    public final Executor N1() {
        return this.f91334c;
    }

    @Override
    public final boolean a(String str, JSONObject jSONObject) {
        char c10;
        int hashCode = str.hashCode();
        if (hashCode != 94746189) {
            if (hashCode == 113399775 && str.equals("write")) {
                c10 = 0;
            }
            c10 = '\uffff';
        } else {
            if (str.equals("clear")) {
                c10 = 1;
            }
            c10 = '\uffff';
        }
        if (c10 == 0) {
            C13543c0 c13543c0 = new C13543c0(this.f91332a);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                String valueOf = String.valueOf(opt);
                StringBuilder sb2 = new StringBuilder(String.valueOf(next).length() + 23 + valueOf.length());
                sb2.append("Writing to storage: [");
                sb2.append(next);
                sb2.append("] ");
                sb2.append(valueOf);
                Log.d("UserMessagingPlatform", sb2.toString());
                if (c13543c0.c(next, opt)) {
                    this.f91333b.c().add(next);
                } else {
                    String valueOf2 = String.valueOf(next);
                    Log.d("UserMessagingPlatform", valueOf2.length() != 0 ? "Failed writing key: ".concat(valueOf2) : new String("Failed writing key: "));
                }
            }
            this.f91333b.e();
            c13543c0.b();
            return true;
        }
        if (c10 != 1) {
            return false;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("keys");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            String valueOf3 = String.valueOf(jSONObject.toString());
            Log.d("UserMessagingPlatform", valueOf3.length() != 0 ? "Action[clear]: wrong args.".concat(valueOf3) : new String("Action[clear]: wrong args."));
        } else {
            HashSet hashSet = new HashSet();
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                String optString = optJSONArray.optString(i10);
                if (TextUtils.isEmpty(optString)) {
                    StringBuilder sb3 = new StringBuilder(46);
                    sb3.append("Action[clear]: empty key at index: ");
                    sb3.append(i10);
                    Log.d("UserMessagingPlatform", sb3.toString());
                } else {
                    hashSet.add(optString);
                }
            }
            C13547e0.b(this.f91332a, hashSet);
        }
        return true;
    }
}
