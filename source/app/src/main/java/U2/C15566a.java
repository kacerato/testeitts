package u2;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import i1.C13539a0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public class C15566a {

    public final boolean f118353a;

    public final int f118354b;

    public static class C2022a {

        public final Context f118356b;

        public boolean f118358d;

        public final List<String> f118355a = new ArrayList();

        public int f118357c = 0;

        public C2022a(@RecentlyNonNull Context context) {
            this.f118356b = context.getApplicationContext();
        }

        @RecentlyNonNull
        public C2022a a(@RecentlyNonNull String str) {
            this.f118355a.add(str);
            return this;
        }

        @RecentlyNonNull
        public C15566a b() {
            Context context = this.f118356b;
            List<String> list = this.f118355a;
            boolean z10 = true;
            if (!C13539a0.b() && !list.contains(C13539a0.a(context)) && !this.f118358d) {
                z10 = false;
            }
            return new C15566a(z10, this, null);
        }

        @RecentlyNonNull
        public C2022a c(int i10) {
            this.f118357c = i10;
            return this;
        }

        @RecentlyNonNull
        @C0.a
        public C2022a d(boolean z10) {
            this.f118358d = z10;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {

        public static final int f118359R0 = 0;

        public static final int f118360S0 = 1;

        public static final int f118361T0 = 2;
    }

    public C15566a(boolean z10, C2022a c2022a, C15572g c15572g) {
        this.f118353a = z10;
        this.f118354b = c2022a.f118357c;
    }

    public int a() {
        return this.f118354b;
    }

    public boolean b() {
        return this.f118353a;
    }
}
