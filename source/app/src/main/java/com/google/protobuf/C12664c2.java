package com.google.protobuf;

import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;
import yd.C16181m;

public final class C12664c2 {

    public class a implements c {

        public final AbstractC12724x f69062a;

        public a(final AbstractC12724x val$input) {
            this.f69062a = val$input;
        }

        @Override
        public byte a(int offset) {
            return this.f69062a.j(offset);
        }

        @Override
        public int size() {
            return this.f69062a.size();
        }
    }

    public class b implements c {

        public final byte[] f69063a;

        public b(final byte[] val$input) {
            this.f69063a = val$input;
        }

        @Override
        public byte a(int offset) {
            return this.f69063a[offset];
        }

        @Override
        public int size() {
            return this.f69063a.length;
        }
    }

    public interface c {
        byte a(int offset);

        int size();
    }

    public static String a(final AbstractC12724x input) {
        return b(new a(input));
    }

    public static String b(c input) {
        StringBuilder sb2 = new StringBuilder(input.size());
        for (int i10 = 0; i10 < input.size(); i10++) {
            byte a10 = input.a(i10);
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

    public static String c(final byte[] input) {
        return b(new b(input));
    }

    public static String d(String input) {
        return input.replace(C16181m.f130232i, "\\\\").replace(JavadocConstants.ANCHOR_PREFIX_END, "\\\"");
    }

    public static String e(String input) {
        return a(AbstractC12724x.w(input));
    }
}
