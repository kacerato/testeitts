package i1;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class C13564n {

    public final Application f91340a;

    public final SharedPreferences f91341b;

    public final Set<String> f91342c;

    public C13564n(Application application) {
        this.f91340a = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences("__GOOGLE_FUNDING_CHOICE_SDK_INTERNAL__", 0);
        this.f91341b = sharedPreferences;
        this.f91342c = new HashSet(sharedPreferences.getStringSet("written_values", Collections.emptySet()));
    }

    public final int a() {
        return this.f91341b.getInt("consent_status", 0);
    }

    public final Map<String, String> b() {
        String str;
        Application application = this.f91340a;
        Set<String> stringSet = this.f91341b.getStringSet("stored_info", Collections.emptySet());
        HashMap hashMap = new HashMap();
        for (String str2 : stringSet) {
            C13541b0 a10 = C13547e0.a(application, str2);
            if (a10 == null) {
                String valueOf = String.valueOf(str2);
                Log.d("UserMessagingPlatform", valueOf.length() != 0 ? "Fetching request info: failed for key: ".concat(valueOf) : new String("Fetching request info: failed for key: "));
            } else {
                Object obj = application.getSharedPreferences(a10.f91287a, 0).getAll().get(a10.f91288b);
                if (obj == null) {
                    String valueOf2 = String.valueOf(str2);
                    Log.d("UserMessagingPlatform", valueOf2.length() != 0 ? "Stored info not exists: ".concat(valueOf2) : new String("Stored info not exists: "));
                } else {
                    if (obj instanceof Boolean) {
                        str = true != ((Boolean) obj).booleanValue() ? "0" : "1";
                    } else if (obj instanceof Number) {
                        str = obj.toString();
                    } else if (obj instanceof String) {
                        str = (String) obj;
                    } else {
                        String valueOf3 = String.valueOf(str2);
                        Log.d("UserMessagingPlatform", valueOf3.length() != 0 ? "Failed to fetch stored info: ".concat(valueOf3) : new String("Failed to fetch stored info: "));
                    }
                    hashMap.put(str2, str);
                }
            }
        }
        return hashMap;
    }

    public final Set<String> c() {
        return this.f91342c;
    }

    public final void d() {
        C13547e0.b(this.f91340a, this.f91342c);
        this.f91342c.clear();
        this.f91341b.edit().remove("stored_info").remove("consent_status").remove("consent_type").apply();
    }

    public final void e() {
        this.f91341b.edit().putStringSet("written_values", this.f91342c).apply();
    }

    public final void f(int i10) {
        this.f91341b.edit().putInt("consent_status", i10).apply();
    }

    public final void g(Set<String> set) {
        this.f91341b.edit().putStringSet("stored_info", set).apply();
    }
}
