package com.android.tools.r8.internal;

import java.lang.Character;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class AbstractC5003Cr0 {

    public static final Logger f39372a = Logger.getLogger(AbstractC5003Cr0.class.getName());

    static {
        int i10 = C10334xu0.f53871a;
        C10334xu0 c10334xu0 = AbstractC10167wu0.f53639a;
    }

    public static int a(byte b10) {
        if (48 > b10 || b10 > 57) {
            return (97 > b10 || b10 > 122) ? b10 + Opcodes.OPC_jsr_w : b10 + Opcodes.OPC_ret;
        }
        return b10 - 48;
    }

    public static boolean b(byte b10) {
        if (48 <= b10 && b10 <= 57) {
            return true;
        }
        if (97 > b10 || b10 > 102) {
            return 65 <= b10 && b10 <= 70;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x013d, code lost:
    
        throw new com.android.tools.r8.internal.C10492yr0("Invalid escape sequence: '\\u' with too few hex chars");
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0192, code lost:
    
        throw new com.android.tools.r8.internal.C10492yr0("Invalid escape sequence: '\\x' with no digits");
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x0097. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C7707i8 a(String str) {
        int i10;
        int i11;
        int i12;
        int i13;
        int length;
        int i14;
        byte b10;
        byte b11;
        String str2 = str.toString();
        C7707i8 c7707i8 = AbstractC8373m8.f50204c;
        byte[] bytes = str2.getBytes(YI.f45965b);
        C7707i8 c7707i82 = new C7707i8(bytes);
        int length2 = bytes.length;
        byte[] bArr = new byte[length2];
        int i15 = 0;
        int i16 = 0;
        while (true) {
            byte[] bArr2 = c7707i82.f48850e;
            if (i15 >= bArr2.length) {
                if (length2 == i16) {
                    return new C7707i8(bArr);
                }
                AbstractC8373m8.a(0, i16, length2);
                return new C7707i8(AbstractC8373m8.f50205d.a(bArr, 0, i16));
            }
            byte b12 = bArr2[i15];
            if (b12 == 92) {
                int i17 = i15 + 1;
                if (i17 < bArr2.length) {
                    byte b13 = bArr2[i17];
                    if (48 > b13 || b13 > 55) {
                        if (b13 == 34) {
                            i10 = i16 + 1;
                            bArr[i16] = 34;
                        } else if (b13 == 39) {
                            i10 = i16 + 1;
                            bArr[i16] = Opcodes.OPC_dload_1;
                        } else if (b13 != 63) {
                            if (b13 == 85) {
                                i11 = i15 + 2;
                                i12 = i15 + 9;
                                if (i12 >= bArr2.length) {
                                    throw new C10492yr0("Invalid escape sequence: '\\U' with too few hex chars");
                                }
                                int i18 = 0;
                                int i19 = i11;
                                while (true) {
                                    i13 = i15 + 10;
                                    if (i19 < i13) {
                                        byte b14 = c7707i82.f48850e[i19];
                                        if (b(b14)) {
                                            i18 = (i18 << 4) | a(b14);
                                            i19++;
                                        } else {
                                            throw new C10492yr0("Invalid escape sequence: '\\U' with too few hex chars");
                                        }
                                    } else if (Character.isValidCodePoint(i18)) {
                                        Character.UnicodeBlock of2 = Character.UnicodeBlock.of(i18);
                                        if (!of2.equals(Character.UnicodeBlock.LOW_SURROGATES) && !of2.equals(Character.UnicodeBlock.HIGH_SURROGATES) && !of2.equals(Character.UnicodeBlock.HIGH_PRIVATE_USE_SURROGATES)) {
                                            byte[] bytes2 = new String(new int[]{i18}, 0, 1).getBytes(StandardCharsets.UTF_8);
                                            System.arraycopy(bytes2, 0, bArr, i16, bytes2.length);
                                            length = bytes2.length;
                                        }
                                    } else {
                                        throw new C10492yr0("Invalid escape sequence: '\\U" + c7707i82.f(i11, i13).c() + "' is not a valid code point value");
                                    }
                                }
                            } else if (b13 == 92) {
                                i10 = i16 + 1;
                                bArr[i16] = 92;
                            } else if (b13 == 102) {
                                i10 = i16 + 1;
                                bArr[i16] = 12;
                            } else if (b13 == 110) {
                                i10 = i16 + 1;
                                bArr[i16] = 10;
                            } else if (b13 == 114) {
                                i10 = i16 + 1;
                                bArr[i16] = 13;
                            } else if (b13 == 120) {
                                int i20 = i15 + 2;
                                if (i20 < bArr2.length && b(bArr2[i20])) {
                                    int a10 = a(c7707i82.f48850e[i20]);
                                    i15 += 3;
                                    byte[] bArr3 = c7707i82.f48850e;
                                    if (i15 >= bArr3.length || !b(bArr3[i15])) {
                                        i15 = i20;
                                    } else {
                                        a10 = (a10 * 16) + a(c7707i82.f48850e[i15]);
                                    }
                                    i14 = i16 + 1;
                                    bArr[i16] = (byte) a10;
                                }
                            } else if (b13 == 97) {
                                i10 = i16 + 1;
                                bArr[i16] = 7;
                            } else if (b13 != 98) {
                                switch (b13) {
                                    case 116:
                                        i10 = i16 + 1;
                                        bArr[i16] = 9;
                                        break;
                                    case 117:
                                        int i21 = i15 + 2;
                                        i12 = i15 + 5;
                                        if (i12 < bArr2.length && b(bArr2[i21])) {
                                            int i22 = i15 + 3;
                                            if (!b(c7707i82.f48850e[i22])) {
                                                break;
                                            } else {
                                                int i23 = i15 + 4;
                                                if (b(c7707i82.f48850e[i23]) && b(c7707i82.f48850e[i12])) {
                                                    char a11 = (char) ((a(c7707i82.f48850e[i23]) << 4) | (a(c7707i82.f48850e[i22]) << 8) | (a(c7707i82.f48850e[i21]) << 12) | a(c7707i82.f48850e[i12]));
                                                    if (!Character.isSurrogate(a11)) {
                                                        byte[] bytes3 = Character.toString(a11).getBytes(StandardCharsets.UTF_8);
                                                        System.arraycopy(bytes3, 0, bArr, i16, bytes3.length);
                                                        length = bytes3.length;
                                                        break;
                                                    } else {
                                                        throw new C10492yr0("Invalid escape sequence: '\\u' refers to a surrogate");
                                                    }
                                                }
                                            }
                                        }
                                        break;
                                    case 118:
                                        i10 = i16 + 1;
                                        bArr[i16] = 11;
                                        break;
                                    default:
                                        throw new C10492yr0("Invalid escape sequence: '\\" + ((char) b13) + JavaElement.JEM_MODULAR_CLASSFILE);
                                }
                            } else {
                                i10 = i16 + 1;
                                bArr[i16] = 8;
                            }
                            i16 += length;
                            i15 = i12;
                        } else {
                            i10 = i16 + 1;
                            bArr[i16] = Opcodes.OPC_lstore_0;
                        }
                        i16 = i10;
                        i15 = i17;
                    } else {
                        int a12 = a(b13);
                        int i24 = i15 + 2;
                        byte[] bArr4 = c7707i82.f48850e;
                        if (i24 < bArr4.length && 48 <= (b11 = bArr4[i24]) && b11 <= 55) {
                            a12 = (a12 * 8) + a(b11);
                            i17 = i24;
                        }
                        i15 = i17 + 1;
                        byte[] bArr5 = c7707i82.f48850e;
                        if (i15 >= bArr5.length || 48 > (b10 = bArr5[i15]) || b10 > 55) {
                            i15 = i17;
                        } else {
                            a12 = (a12 * 8) + a(b10);
                        }
                        i14 = i16 + 1;
                        bArr[i16] = (byte) a12;
                    }
                    i16 = i14;
                } else {
                    throw new C10492yr0("Invalid escape sequence: '\\' at end of string.");
                }
            } else {
                bArr[i16] = b12;
                i16++;
            }
            i15++;
        }
        throw new C10492yr0("Invalid escape sequence: '\\U" + c7707i82.f(i11, i13).c() + "' refers to a surrogate code unit");
    }

    public static long a(String str, boolean z10, boolean z11) {
        int i10;
        int i11 = 0;
        if (str.startsWith("-", 0)) {
            if (!z10) {
                throw new NumberFormatException("Number must be positive: ".concat(str));
            }
            i11 = 1;
        }
        int i12 = i11;
        if (str.startsWith("0x", i11)) {
            i11 += 2;
            i10 = 16;
        } else {
            i10 = str.startsWith("0", i11) ? 8 : 10;
        }
        String substring = str.substring(i11);
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i10);
            if (i12 != 0) {
                parseLong = -parseLong;
            }
            if (!z11) {
                if (z10) {
                    if (parseLong > 2147483647L || parseLong < -2147483648L) {
                        throw new NumberFormatException("Number out of range for 32-bit signed integer: ".concat(str));
                    }
                } else if (parseLong >= 4294967296L || parseLong < 0) {
                    throw new NumberFormatException("Number out of range for 32-bit unsigned integer: ".concat(str));
                }
            }
            return parseLong;
        }
        BigInteger bigInteger = new BigInteger(substring, i10);
        if (i12 != 0) {
            bigInteger = bigInteger.negate();
        }
        if (z11) {
            if (z10) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: ".concat(str));
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: ".concat(str));
            }
        } else if (z10) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: ".concat(str));
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: ".concat(str));
        }
        return bigInteger.longValue();
    }
}
