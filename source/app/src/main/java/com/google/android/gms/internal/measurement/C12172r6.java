package com.google.android.gms.internal.measurement;

import org.eclipse.jdt.internal.core.JavaElement;

public final class C12172r6 {
    public static String a(S4 s42) {
        StringBuilder sb2 = new StringBuilder(s42.l());
        for (int i10 = 0; i10 < s42.l(); i10++) {
            byte j10 = s42.j(i10);
            if (j10 == 34) {
                sb2.append("\\\"");
            } else if (j10 == 39) {
                sb2.append("\\'");
            } else if (j10 != 92) {
                switch (j10) {
                    case 7:
                        sb2.append("\\a");
                        break;
                    case 8:
                        sb2.append("\\b");
                        break;
                    case 9:
                        sb2.append("\\t");
                        break;
                    case 10:
                        sb2.append("\\n");
                        break;
                    case 11:
                        sb2.append("\\v");
                        break;
                    case 12:
                        sb2.append("\\f");
                        break;
                    case 13:
                        sb2.append("\\r");
                        break;
                    default:
                        if (j10 < 32 || j10 > 126) {
                            sb2.append(JavaElement.JEM_ESCAPE);
                            sb2.append((char) (((j10 >>> 6) & 3) + 48));
                            sb2.append((char) (((j10 >>> 3) & 7) + 48));
                            sb2.append((char) ((j10 & 7) + 48));
                            break;
                        } else {
                            sb2.append((char) j10);
                            break;
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }
}
