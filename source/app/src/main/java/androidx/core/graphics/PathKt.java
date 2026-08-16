package androidx.core.graphics;

import android.graphics.Path;
import java.util.Collection;
import kotlin.jvm.internal.M;

public final class PathKt {
    public static final Path and(Path path, Path p10) {
        M.p(path, "<this>");
        M.p(p10, "p");
        Path path2 = new Path();
        path2.op(path, p10, Path.Op.INTERSECT);
        return path2;
    }

    public static final Iterable<PathSegment> flatten(Path path, float f10) {
        M.p(path, "<this>");
        Collection<PathSegment> flatten = PathUtils.flatten(path, f10);
        M.o(flatten, "flatten(this, error)");
        return flatten;
    }

    public static Iterable flatten$default(Path path, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.5f;
        }
        return flatten(path, f10);
    }

    public static final Path minus(Path path, Path p10) {
        M.p(path, "<this>");
        M.p(p10, "p");
        Path path2 = new Path(path);
        path2.op(p10, Path.Op.DIFFERENCE);
        return path2;
    }

    public static final Path or(Path path, Path p10) {
        M.p(path, "<this>");
        M.p(p10, "p");
        Path path2 = new Path(path);
        path2.op(p10, Path.Op.UNION);
        return path2;
    }

    public static final Path plus(Path path, Path p10) {
        M.p(path, "<this>");
        M.p(p10, "p");
        Path path2 = new Path(path);
        path2.op(p10, Path.Op.UNION);
        return path2;
    }

    public static final Path xor(Path path, Path p10) {
        M.p(path, "<this>");
        M.p(p10, "p");
        Path path2 = new Path(path);
        path2.op(p10, Path.Op.XOR);
        return path2;
    }
}
