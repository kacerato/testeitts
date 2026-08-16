package ig;

import kotlin.jvm.internal.M;

public final class h {
    public static final String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('\"');
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\"') {
                sb2.append("\\\"");
            } else if (charAt == '\\') {
                sb2.append("\\\\");
            } else if (charAt == '\b') {
                sb2.append("\\b");
            } else if (charAt == '\n') {
                sb2.append("\\n");
            } else if (charAt == '\r') {
                sb2.append("\\r");
            } else if (charAt == '\t') {
                sb2.append("\\t");
            } else {
                sb2.append(charAt);
            }
        }
        sb2.append('\"');
        String sb3 = sb2.toString();
        M.o(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }
}
