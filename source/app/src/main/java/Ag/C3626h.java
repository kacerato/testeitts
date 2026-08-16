package ag;

import java.nio.charset.Charset;

@Lf.j(name = "CharsetsKt")
public final class C3626h {
    @Ef.f
    public static final Charset a(String charsetName) {
        kotlin.jvm.internal.M.p(charsetName, "charsetName");
        Charset forName = Charset.forName(charsetName);
        kotlin.jvm.internal.M.o(forName, "forName(...)");
        return forName;
    }
}
