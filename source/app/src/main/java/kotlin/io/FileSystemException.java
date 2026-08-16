package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class FileSystemException extends IOException {

    @NotNull
    private final File file;

    @Nullable
    private final File other;

    @Nullable
    private final String reason;

    public FileSystemException(File file, File file2, String str, int i10, C14026x c14026x) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }

    @NotNull
    public final File getFile() {
        return this.file;
    }

    @Nullable
    public final File getOther() {
        return this.other;
    }

    @Nullable
    public final String getReason() {
        return this.reason;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystemException(@NotNull File file, @Nullable File file2, @Nullable String str) {
        super(e.a(file, file2, str));
        M.p(file, "file");
        this.file = file;
        this.other = file2;
        this.reason = str;
    }
}
