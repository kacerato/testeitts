package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

final class TerminateException extends FileSystemException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminateException(@NotNull File file) {
        super(file, null, null, 6, null);
        M.p(file, "file");
    }
}
