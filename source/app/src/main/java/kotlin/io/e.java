package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.M;

public final class e {
    public static final String b(File file, File file2, String str) {
        StringBuilder sb2 = new StringBuilder(file.toString());
        if (file2 != null) {
            sb2.append(" -> " + ((Object) file2));
        }
        if (str != null) {
            sb2.append(": " + str);
        }
        String sb3 = sb2.toString();
        M.o(sb3, "toString(...)");
        return sb3;
    }
}
