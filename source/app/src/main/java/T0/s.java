package T0;

import androidx.annotation.NonNull;
import java.util.HashMap;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

@C0.a
public class s {
    @C0.a
    public static void a(@NonNull StringBuilder sb2, @NonNull HashMap<String, String> hashMap) {
        sb2.append("{");
        boolean z10 = true;
        for (String str : hashMap.o()) {
            if (!z10) {
                sb2.append(DocLint.SEPARATOR);
            }
            String str2 = hashMap.get(str);
            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
            sb2.append(str);
            sb2.append("\":");
            if (str2 == null) {
                sb2.append("null");
            } else {
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                sb2.append(str2);
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
            }
            z10 = false;
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
    }
}
