package If;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import kotlin.jvm.internal.M;

public final class o {
    public static final boolean a(l lVar) {
        return c(lVar);
    }

    public static final Object b(Path path, LinkOption[] linkOptionArr) {
        return d(path, linkOptionArr);
    }

    public static final boolean c(l lVar) {
        for (l c10 = lVar.c(); c10 != null; c10 = c10.c()) {
            if (c10.b() == null || lVar.b() == null) {
                try {
                    if (Files.isSameFile(c10.d(), lVar.d())) {
                        return true;
                    }
                } catch (IOException | SecurityException unused) {
                    continue;
                }
            } else if (M.g(c10.b(), lVar.b())) {
                return true;
            }
        }
        return false;
    }

    public static final Object d(Path path, LinkOption[] linkOptionArr) {
        try {
            LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length);
            BasicFileAttributes readAttributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length));
            M.o(readAttributes, "readAttributes(...)");
            return readAttributes.fileKey();
        } catch (Throwable unused) {
            return null;
        }
    }
}
