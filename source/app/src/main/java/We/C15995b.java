package we;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class C15995b extends AbstractC15994a {

    public static final String f127455c = "https://android.asset/";

    public static final String f127456d = "file:///android_asset/";

    public final C15996c f127457a;

    public final AbstractC15994a f127458b;

    public C15995b() {
        this(null);
    }

    @NonNull
    public static C15995b c(@Nullable AbstractC15994a abstractC15994a) {
        return new C15995b(abstractC15994a);
    }

    @Override
    @NonNull
    public String b(@NonNull String str) {
        if (TextUtils.isEmpty(Uri.parse(str).getScheme())) {
            return this.f127457a.b(str).replace(f127455c, "file:///android_asset/");
        }
        AbstractC15994a abstractC15994a = this.f127458b;
        return abstractC15994a != null ? abstractC15994a.b(str) : str;
    }

    public C15995b(@Nullable AbstractC15994a abstractC15994a) {
        this.f127457a = new C15996c(f127455c);
        this.f127458b = abstractC15994a;
    }
}
