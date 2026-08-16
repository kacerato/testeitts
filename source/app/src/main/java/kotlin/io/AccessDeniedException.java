package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class AccessDeniedException extends FileSystemException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccessDeniedException(@NotNull File file, @Nullable File file2, @Nullable String str) {
        super(file, file2, str);
        M.p(file, "file");
    }

    public AccessDeniedException(File file, File file2, String str, int i10, C14026x c14026x) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }
}
