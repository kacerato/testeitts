package i1;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class C13543c0 {

    public final Context f91292a;

    public final Map<String, SharedPreferences.Editor> f91293b = new HashMap();

    public C13543c0(Context context) {
        this.f91292a = context;
    }

    public static SharedPreferences.Editor a(C13543c0 c13543c0, String str) {
        return c13543c0.d(str);
    }

    public final void b() {
        Iterator<SharedPreferences.Editor> it = this.f91293b.values().iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
    }

    public final boolean c(String str, @Nullable Object obj) {
        C13541b0 a10 = C13547e0.a(this.f91292a, str);
        if (a10 == null) {
            return false;
        }
        SharedPreferences.Editor d10 = d(a10.f91287a);
        if (obj instanceof Integer) {
            d10.putInt(a10.f91288b, ((Integer) obj).intValue());
            return true;
        }
        if (obj instanceof Long) {
            d10.putLong(a10.f91288b, ((Long) obj).longValue());
            return true;
        }
        if (obj instanceof Double) {
            d10.putFloat(a10.f91288b, ((Double) obj).floatValue());
            return true;
        }
        if (obj instanceof Float) {
            d10.putFloat(a10.f91288b, ((Float) obj).floatValue());
            return true;
        }
        if (obj instanceof Boolean) {
            d10.putBoolean(a10.f91288b, ((Boolean) obj).booleanValue());
            return true;
        }
        if (!(obj instanceof String)) {
            return false;
        }
        d10.putString(a10.f91288b, (String) obj);
        return true;
    }

    public final SharedPreferences.Editor d(String str) {
        if (!this.f91293b.containsKey(str)) {
            this.f91293b.put(str, this.f91292a.getSharedPreferences(str, 0).edit());
        }
        return this.f91293b.get(str);
    }
}
