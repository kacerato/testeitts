package ag;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C3625g {

    @NotNull
    public static final C3625g f32085a = new C3625g();

    @Lf.g
    @NotNull
    public static final Charset f32086b;

    @Lf.g
    @NotNull
    public static final Charset f32087c;

    @Lf.g
    @NotNull
    public static final Charset f32088d;

    @Lf.g
    @NotNull
    public static final Charset f32089e;

    @Lf.g
    @NotNull
    public static final Charset f32090f;

    @Lf.g
    @NotNull
    public static final Charset f32091g;

    @Nullable
    public static volatile Charset f32092h;

    @Nullable
    public static volatile Charset f32093i;

    @Nullable
    public static volatile Charset f32094j;

    static {
        Charset forName = Charset.forName("UTF-8");
        kotlin.jvm.internal.M.o(forName, "forName(...)");
        f32086b = forName;
        Charset forName2 = Charset.forName(CharEncoding.UTF_16);
        kotlin.jvm.internal.M.o(forName2, "forName(...)");
        f32087c = forName2;
        Charset forName3 = Charset.forName(CharEncoding.UTF_16BE);
        kotlin.jvm.internal.M.o(forName3, "forName(...)");
        f32088d = forName3;
        Charset forName4 = Charset.forName(CharEncoding.UTF_16LE);
        kotlin.jvm.internal.M.o(forName4, "forName(...)");
        f32089e = forName4;
        Charset forName5 = Charset.forName(CharEncoding.US_ASCII);
        kotlin.jvm.internal.M.o(forName5, "forName(...)");
        f32090f = forName5;
        Charset forName6 = Charset.forName("ISO-8859-1");
        kotlin.jvm.internal.M.o(forName6, "forName(...)");
        f32091g = forName6;
    }

    @Lf.j(name = "UTF32")
    @NotNull
    public final Charset a() {
        Charset charset = f32092h;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32");
        kotlin.jvm.internal.M.o(forName, "forName(...)");
        f32092h = forName;
        return forName;
    }

    @Lf.j(name = "UTF32_BE")
    @NotNull
    public final Charset b() {
        Charset charset = f32094j;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32BE");
        kotlin.jvm.internal.M.o(forName, "forName(...)");
        f32094j = forName;
        return forName;
    }

    @Lf.j(name = "UTF32_LE")
    @NotNull
    public final Charset c() {
        Charset charset = f32093i;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32LE");
        kotlin.jvm.internal.M.o(forName, "forName(...)");
        f32093i = forName;
        return forName;
    }
}
