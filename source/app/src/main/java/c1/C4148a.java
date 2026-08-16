package c1;

import androidx.annotation.NonNull;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class C4148a {

    @NonNull
    @VisibleForTesting
    public static final String f34377c = "errorCode";

    @NonNull
    @VisibleForTesting
    public static final String f34378d = "errorMessage";

    public final b f34379a;

    public final String f34380b;

    public C4148a(@NonNull b bVar) {
        this.f34379a = bVar;
        this.f34380b = null;
    }

    @NonNull
    public b a() {
        return this.f34379a;
    }

    @NonNull
    public String b() {
        return this.f34380b;
    }

    @NonNull
    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", this.f34379a.b());
            String str = this.f34380b;
            if (str != null) {
                jSONObject.put("errorMessage", str);
            }
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public String toString() {
        return this.f34380b == null ? String.format(Locale.ENGLISH, "{errorCode: %d}", Integer.valueOf(this.f34379a.b())) : String.format(Locale.ENGLISH, "{errorCode: %d, errorMessage: %s}", Integer.valueOf(this.f34379a.b()), this.f34380b);
    }

    public C4148a(@NonNull b bVar, @NonNull String str) {
        this.f34379a = bVar;
        this.f34380b = str;
    }
}
