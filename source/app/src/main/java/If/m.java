package If;

import ag.C3617K;
import ag.X;
import java.nio.file.Path;
import java.nio.file.Paths;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;

public final class m {

    @NotNull
    public static final m f9288a = new m();

    public static final Path f9289b = Paths.get("", new String[0]);

    public static final Path f9290c = Paths.get(ClasspathEntry.DOT_DOT, new String[0]);

    @NotNull
    public final Path a(@NotNull Path path, @NotNull Path base) {
        M.p(path, "path");
        M.p(base, "base");
        Path normalize = base.normalize();
        Path normalize2 = path.normalize();
        Path relativize = normalize.relativize(normalize2);
        int min = Math.min(normalize.getNameCount(), normalize2.getNameCount());
        for (int i10 = 0; i10 < min; i10++) {
            Path name = normalize.getName(i10);
            Path path2 = f9290c;
            if (!M.g(name, path2)) {
                break;
            }
            if (!M.g(normalize2.getName(i10), path2)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (M.g(normalize2, normalize) || !M.g(normalize, f9289b)) {
            String obj = relativize.toString();
            String separator = relativize.getFileSystem().getSeparator();
            M.o(separator, "getSeparator(...)");
            normalize2 = C3617K.d2(obj, separator, false, 2, null) ? relativize.getFileSystem().getPath(X.i7(obj, relativize.getFileSystem().getSeparator().length()), new String[0]) : relativize;
        }
        M.m(normalize2);
        return normalize2;
    }
}
