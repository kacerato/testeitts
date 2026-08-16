package com.google.android.gms.internal.auth;

import org.eclipse.jdt.internal.core.JavaElement;

public final class E2 {
    public static String a(AbstractC11956l1 abstractC11956l1) {
        StringBuilder sb2 = new StringBuilder(abstractC11956l1.l());
        for (int i10 = 0; i10 < abstractC11956l1.l(); i10++) {
            byte j10 = abstractC11956l1.j(i10);
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
