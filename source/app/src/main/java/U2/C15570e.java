package u2;

import androidx.annotation.RecentlyNonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class C15570e {

    public final int f118372a;

    public final String f118373b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {

        public static final int f118374Y0 = 1;

        public static final int f118375Z0 = 2;

        public static final int f118376a1 = 3;

        public static final int f118377b1 = 4;
    }

    public C15570e(int i10, @RecentlyNonNull String str) {
        this.f118372a = i10;
        this.f118373b = str;
    }

    public int a() {
        return this.f118372a;
    }

    @RecentlyNonNull
    public String b() {
        return this.f118373b;
    }
}
