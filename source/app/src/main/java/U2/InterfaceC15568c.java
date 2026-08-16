package u2;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public interface InterfaceC15568c {

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {

        public static final int f118362U0 = 0;

        public static final int f118363V0 = 1;

        public static final int f118364W0 = 2;

        public static final int f118365X0 = 3;
    }

    public interface b {
        void a(@RecentlyNonNull C15570e c15570e);
    }

    public interface InterfaceC2023c {
        void a();
    }

    int a();

    boolean b();

    void c(@RecentlyNonNull Activity activity, @RecentlyNonNull C15569d c15569d, @RecentlyNonNull InterfaceC2023c interfaceC2023c, @RecentlyNonNull b bVar);

    void reset();
}
