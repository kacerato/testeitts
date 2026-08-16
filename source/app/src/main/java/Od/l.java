package Od;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class l {

    public static volatile l f16633a = null;

    public static SharedPreferences f16634b = null;

    public static final String f16635c = "INDEX";

    @NotNull
    public static final a f16636d = new a(null);

    public static final class a {
        public a() {
        }

        @Lf.o
        @NotNull
        public final l a(@NotNull Context context) {
            M.p(context, "context");
            l lVar = l.f16633a;
            if (lVar == null) {
                synchronized (this) {
                    lVar = l.f16633a;
                    if (lVar == null) {
                        lVar = new l(null);
                        l.f16633a = lVar;
                        SharedPreferences sharedPreferences = context.getSharedPreferences("com.skydoves.powerspinenr", 0);
                        M.o(sharedPreferences, "context.getSharedPrefere\u2026r\", Context.MODE_PRIVATE)");
                        l.f16634b = sharedPreferences;
                    }
                }
            }
            return lVar;
        }

        public a(C14026x c14026x) {
            this();
        }
    }

    public l() {
    }

    @Lf.o
    @NotNull
    public static final l f(@NotNull Context context) {
        return f16636d.a(context);
    }

    public final void e() {
        SharedPreferences sharedPreferences = f16634b;
        if (sharedPreferences == null) {
            M.S("sharedPreferenceManager");
        }
        sharedPreferences.edit().clear().apply();
    }

    public final int g(@NotNull String name) {
        M.p(name, "name");
        SharedPreferences sharedPreferences = f16634b;
        if (sharedPreferences == null) {
            M.S("sharedPreferenceManager");
        }
        return sharedPreferences.getInt(f16635c + name, -1);
    }

    public final void h(@NotNull String name, int i10) {
        M.p(name, "name");
        SharedPreferences sharedPreferences = f16634b;
        if (sharedPreferences == null) {
            M.S("sharedPreferenceManager");
        }
        sharedPreferences.edit().putInt(f16635c + name, i10).apply();
    }

    public final void i(@NotNull String name) {
        M.p(name, "name");
        SharedPreferences sharedPreferences = f16634b;
        if (sharedPreferences == null) {
            M.S("sharedPreferenceManager");
        }
        sharedPreferences.edit().remove(name).apply();
    }

    public l(C14026x c14026x) {
        this();
    }
}
