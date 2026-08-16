package we;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;

public class C15996c extends AbstractC15994a {

    public final URL f127459a;

    public C15996c(@NonNull String str) {
        this.f127459a = e(str);
    }

    @NonNull
    public static C15996c c(@NonNull String str) {
        return new C15996c(str);
    }

    public static C15996c d(@NonNull URL url) {
        return new C15996c(url);
    }

    @Nullable
    public static URL e(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    @NonNull
    public String b(@NonNull String str) {
        if (this.f127459a == null) {
            return str;
        }
        try {
            return new URL(this.f127459a, str).toString();
        } catch (MalformedURLException e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public C15996c(@NonNull URL url) {
        this.f127459a = url;
    }
}
