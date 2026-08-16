package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.JavaElement;

public abstract class AbstractC5235Gr0 {
    public static String a(InterfaceC5177Fr0 interfaceC5177Fr0) {
        StringBuilder sb2 = new StringBuilder(interfaceC5177Fr0.size());
        for (int i10 = 0; i10 < interfaceC5177Fr0.size(); i10++) {
            byte a10 = interfaceC5177Fr0.a(i10);
            if (a10 == 34) {
                sb2.append("\\\"");
            } else if (a10 == 39) {
                sb2.append("\\'");
            } else if (a10 != 92) {
                switch (a10) {
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
                        if (a10 < 32 || a10 > 126) {
                            sb2.append(JavaElement.JEM_ESCAPE);
                            sb2.append((char) (((a10 >>> 6) & 3) + 48));
                            sb2.append((char) (((a10 >>> 3) & 7) + 48));
                            sb2.append((char) ((a10 & 7) + 48));
                            break;
                        } else {
                            sb2.append((char) a10);
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
