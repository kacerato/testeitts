package If;

import java.nio.file.FileVisitOption;
import java.nio.file.LinkOption;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import pf.y0;
import pf.z0;

public final class j {

    @NotNull
    public static final j f9279a = new j();

    @NotNull
    public static final LinkOption[] f9280b = {LinkOption.NOFOLLOW_LINKS};

    @NotNull
    public static final LinkOption[] f9281c = new LinkOption[0];

    @NotNull
    public static final Set<FileVisitOption> f9282d = z0.k();

    @NotNull
    public static final Set<FileVisitOption> f9283e = y0.f(FileVisitOption.FOLLOW_LINKS);

    @NotNull
    public final LinkOption[] a(boolean z10) {
        return z10 ? f9281c : f9280b;
    }

    @NotNull
    public final Set<FileVisitOption> b(boolean z10) {
        return z10 ? f9283e : f9282d;
    }
}
