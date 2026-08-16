package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.nio.file.Path;
import java.util.List;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class P0 {

    public final Path f56877a;

    public final AbstractC7552hC f56878b;

    public final Origin f56879c;

    public final Position f56880d;

    public P0(Path path, List<String> list, Origin origin, Position position) {
        this.f56877a = path;
        this.f56878b = AbstractC7552hC.a(list);
        this.f56879c = origin;
        this.f56880d = position;
    }

    public static boolean a(int i10, int i11, String str, String str2) {
        if (i11 >= str2.length()) {
            return i10 == str.length();
        }
        char charAt = str2.charAt(i11);
        if (charAt == '*') {
            int i12 = i11 + 1;
            boolean z10 = str2.length() > i12 && str2.charAt(i12) == '*';
            if (z10) {
                i11 = i12;
            }
            int i13 = i11 + 1;
            String substring = str2.substring(i13);
            if (substring.indexOf(42) == -1) {
                int length = substring.length();
                if (i10 + length > str.length()) {
                    return false;
                }
                if (z10 || str.substring(i10, str.length() - length).indexOf(47) == -1) {
                    return a(str.length() - length, i13, str, str2);
                }
            } else {
                while (i10 < str.length()) {
                    if (!z10 && str.charAt(i10) == '/') {
                        return false;
                    }
                    if (a(i10, i13, str, str2)) {
                        return true;
                    }
                    i10++;
                }
            }
        } else {
            if (i10 >= str.length()) {
                return false;
            }
            if (charAt == '?' || charAt == str.charAt(i10)) {
                return a(i10 + 1, i11 + 1, str, str2);
            }
        }
        return false;
    }

    public final String toString() {
        if (this.f56878b.isEmpty()) {
            return this.f56877a.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) this.f56877a);
        sb2.append('(');
        AbstractC4895Av0 it = this.f56878b.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!z10) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            sb2.append(str);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean] */
    public boolean a(String str) {
        if (this.f56878b.isEmpty()) {
            return true;
        }
        AbstractC4895Av0 it = this.f56878b.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            ?? r42 = str2.charAt(0) == '!' ? 1 : 0;
            if (a(0, r42, str, str2)) {
                return r42 ^ 1;
            }
            z10 = r42;
        }
        return z10;
    }
}
