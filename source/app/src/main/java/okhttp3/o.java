package okhttp3;

import java.nio.charset.Charset;

public final class o {
    public static String a(String str, String str2) {
        return b(str, str2, Gg.c.f7808k);
    }

    public static String b(String str, String str2, Charset charset) {
        return "Basic " + Tg.f.k(str + b3.s.f32937c + str2, charset).b();
    }
}
