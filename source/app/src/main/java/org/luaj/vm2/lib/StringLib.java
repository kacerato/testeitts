package org.luaj.vm2.lib;

import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.luaj.vm2.Buffer;
import org.luaj.vm2.LuaClosure;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.compiler.DumpState;
import w2.C15883c;

public class StringLib extends TwoArgFunction {
    private static final int CAP_POSITION = -2;
    private static final int CAP_UNFINISHED = -1;
    private static final String FLAGS = "-+ #0";
    private static final int L_ESC = 37;
    private static final byte MASK_ALPHA = 1;
    private static final byte MASK_CONTROL = 64;
    private static final byte MASK_DIGIT = 8;
    private static final byte MASK_HEXDIGIT = Byte.MIN_VALUE;
    private static final byte MASK_LOWERCASE = 2;
    private static final byte MASK_PUNCT = 16;
    private static final byte MASK_SPACE = 32;
    private static final byte MASK_UPPERCASE = 4;
    private static final int MAX_CAPTURES = 32;
    private static final LuaString SPECIALS = LuaValue.valueOf("^$*+?.([%-");
    private static final byte[] CHAR_TABLE = new byte[256];

    public static class FormatDesc {
        private static final int MAX_FLAGS = 5;
        private boolean alternateForm;
        public final int conversion;
        private boolean explicitPlus;
        private boolean leftAdjust;
        public final int length;
        private int precision;
        private boolean space;
        private int width;
        private boolean zeroPad;

        public FormatDesc(Varargs varargs, LuaString luaString, int i10) {
            int length = luaString.length();
            int i11 = 0;
            int i12 = i10;
            int i13 = 0;
            boolean z10 = true;
            while (z10) {
                if (i12 < length) {
                    i13 = luaString.luaByte(i12);
                    i12++;
                } else {
                    i13 = 0;
                }
                if (i13 == 32) {
                    this.space = true;
                } else if (i13 == 35) {
                    this.alternateForm = true;
                } else if (i13 == 43) {
                    this.explicitPlus = true;
                } else if (i13 == 45) {
                    this.leftAdjust = true;
                } else if (i13 != 48) {
                    z10 = false;
                } else {
                    this.zeroPad = true;
                }
            }
            if (i12 - i10 > 5) {
                LuaValue.error("invalid format (repeated flags)");
            }
            this.width = -1;
            if (Character.isDigit((char) i13)) {
                this.width = i13 - 48;
                if (i12 < length) {
                    i13 = luaString.luaByte(i12);
                    i12++;
                } else {
                    i13 = 0;
                }
                if (Character.isDigit((char) i13)) {
                    this.width = (this.width * 10) + (i13 - 48);
                    if (i12 < length) {
                        i13 = luaString.luaByte(i12);
                        i12++;
                    } else {
                        i13 = 0;
                    }
                }
            }
            this.precision = -1;
            if (i13 == 46) {
                if (i12 < length) {
                    i13 = luaString.luaByte(i12);
                    i12++;
                } else {
                    i13 = 0;
                }
                if (Character.isDigit((char) i13)) {
                    this.precision = i13 - 48;
                    if (i12 < length) {
                        i13 = luaString.luaByte(i12);
                        i12++;
                    } else {
                        i13 = 0;
                    }
                    if (Character.isDigit((char) i13)) {
                        this.precision = (this.precision * 10) + (i13 - 48);
                        if (i12 < length) {
                            i11 = luaString.luaByte(i12);
                            i12++;
                        }
                        i13 = i11;
                    }
                }
            }
            if (Character.isDigit((char) i13)) {
                LuaValue.error("invalid format (width or precision too long)");
            }
            this.zeroPad &= !this.leftAdjust;
            this.conversion = i13;
            this.length = i12 - i10;
        }

        public static final void pad(Buffer buffer, char c10, int i10) {
            byte b10 = (byte) c10;
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                buffer.append(b10);
                i10 = i11;
            }
        }

        public void format(Buffer buffer, byte b10) {
            buffer.append(b10);
        }

        public void format(Buffer buffer, double d10) {
            buffer.append(String.valueOf(d10));
        }

        /* JADX WARN: Removed duplicated region for block: B:58:0x002b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void format(Buffer buffer, long j10) {
            int i10;
            String l10;
            int i11;
            int i12;
            if (j10 == 0 && this.precision == 0) {
                l10 = "";
            } else {
                int i13 = this.conversion;
                if (i13 != 88) {
                    if (i13 == 111) {
                        i10 = 8;
                    } else if (i13 != 120) {
                        i10 = 10;
                    }
                    l10 = Long.toString(j10, i10);
                    if (this.conversion == 88) {
                        l10 = l10.toUpperCase();
                    }
                }
                i10 = 16;
                l10 = Long.toString(j10, i10);
                if (this.conversion == 88) {
                }
            }
            int length = l10.length();
            if (j10 < 0) {
                i11 = length;
                length--;
            } else {
                i11 = (this.explicitPlus || this.space) ? length + 1 : length;
            }
            int i14 = this.precision;
            int i15 = i14 > length ? i14 - length : (i14 == -1 && this.zeroPad && (i12 = this.width) > i11) ? i12 - i11 : 0;
            int i16 = i11 + i15;
            int i17 = this.width;
            int i18 = i17 > i16 ? i17 - i16 : 0;
            if (!this.leftAdjust) {
                pad(buffer, C15883c.f126249O, i18);
            }
            if (j10 < 0) {
                if (i15 > 0) {
                    buffer.append(Opcodes.OPC_aload_3);
                    l10 = l10.substring(1);
                }
            } else if (this.explicitPlus) {
                buffer.append(Opcodes.OPC_aload_1);
            } else if (this.space) {
                buffer.append((byte) 32);
            }
            if (i15 > 0) {
                pad(buffer, '0', i15);
            }
            buffer.append(l10);
            if (this.leftAdjust) {
                pad(buffer, C15883c.f126249O, i18);
            }
        }

        public void format(Buffer buffer, LuaString luaString) {
            int indexOf = luaString.indexOf((byte) 0, 0);
            if (indexOf != -1) {
                luaString = luaString.substring(0, indexOf);
            }
            buffer.append(luaString);
        }
    }

    public static class GMatchAux extends VarArgFunction {
        private final MatchState ms;
        private int soffset = 0;
        private final int srclen;

        public GMatchAux(Varargs varargs, LuaString luaString, LuaString luaString2) {
            this.srclen = luaString.length();
            this.ms = new MatchState(varargs, luaString, luaString2);
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            while (this.soffset < this.srclen) {
                this.ms.reset();
                int match = this.ms.match(this.soffset, 0);
                if (match >= 0) {
                    int i10 = this.soffset;
                    this.soffset = match;
                    return this.ms.push_captures(true, i10, match);
                }
                this.soffset++;
            }
            return LuaValue.NIL;
        }
    }

    public static class MatchState {
        final Varargs args;

        final LuaString f102800p;

        final LuaString f102801s;
        int level = 0;
        int[] cinit = new int[32];
        int[] clen = new int[32];

        public MatchState(Varargs varargs, LuaString luaString, LuaString luaString2) {
            this.f102801s = luaString;
            this.f102800p = luaString2;
            this.args = varargs;
        }

        private void add_s(Buffer buffer, LuaString luaString, int i10, int i11) {
            int length = luaString.length();
            int i12 = 0;
            while (i12 < length) {
                byte luaByte = (byte) luaString.luaByte(i12);
                if (luaByte == 37) {
                    i12++;
                    luaByte = (byte) luaString.luaByte(i12);
                    if (Character.isDigit((char) luaByte)) {
                        buffer.append(luaByte == 48 ? this.f102801s.substring(i10, i11) : push_onecapture(luaByte - 49, i10, i11).strvalue());
                        i12++;
                    }
                }
                buffer.append(luaByte);
                i12++;
            }
        }

        private int capture_to_close() {
            for (int i10 = this.level - 1; i10 >= 0; i10--) {
                if (this.clen[i10] == -1) {
                    return i10;
                }
            }
            LuaValue.error("invalid pattern capture");
            return 0;
        }

        private int check_capture(int i10) {
            int i11 = i10 - 49;
            if (i11 < 0 || i11 >= this.level || this.clen[i11] == -1) {
                LuaValue.error("invalid capture index");
            }
            return i11;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
        
            if ((r1 & Byte.MIN_VALUE) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x003d, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x003f, code lost:
        
            r5 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0043, code lost:
        
            if ((r1 & 9) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0048, code lost:
        
            if ((r1 & 8) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x004d, code lost:
        
            if ((r1 & 64) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0050, code lost:
        
            if (r5 == 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0055, code lost:
        
            if ((r1 & 4) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x005a, code lost:
        
            if ((r1 & 32) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x005f, code lost:
        
            if ((r1 & 16) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0064, code lost:
        
            if ((r1 & 2) != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0069, code lost:
        
            if ((r1 & 1) != 0) goto L27;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static boolean match_class(int i10, int i11) {
            boolean z10;
            char lowerCase = Character.toLowerCase((char) i11);
            byte b10 = StringLib.CHAR_TABLE[i10];
            if (lowerCase != 'a') {
                if (lowerCase != 'l') {
                    if (lowerCase != 'p') {
                        if (lowerCase != 's') {
                            if (lowerCase != 'u') {
                                if (lowerCase != 'z') {
                                    if (lowerCase != 'c') {
                                        if (lowerCase != 'd') {
                                            if (lowerCase != 'w') {
                                                if (lowerCase != 'x') {
                                                    return i11 == i10;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return lowerCase == i11 ? z10 : !z10;
        }

        private LuaValue push_onecapture(int i10, int i11, int i12) {
            if (i10 >= this.level) {
                return i10 == 0 ? this.f102801s.substring(i11, i12) : LuaValue.error("invalid capture index");
            }
            int i13 = this.clen[i10];
            if (i13 == -1) {
                return LuaValue.error("unfinished capture");
            }
            if (i13 == -2) {
                return LuaValue.valueOf(this.cinit[i10] + 1);
            }
            int i14 = this.cinit[i10];
            return this.f102801s.substring(i14, i13 + i14);
        }

        public void add_value(Buffer buffer, int i10, int i11, LuaValue luaValue) {
            LuaValue luaValue2;
            int type = luaValue.type();
            if (type == 3 || type == 4) {
                add_s(buffer, luaValue.strvalue(), i10, i11);
                return;
            }
            if (type == 5) {
                luaValue2 = luaValue.get(push_onecapture(0, i10, i11));
            } else {
                if (type != 6) {
                    LuaValue.error("bad argument: string/function/table expected");
                    return;
                }
                luaValue2 = luaValue.invoke(push_captures(true, i10, i11)).arg1();
            }
            if (!luaValue2.toboolean()) {
                luaValue2 = this.f102801s.substring(i10, i11);
            } else if (!luaValue2.isstring()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("invalid replacement value (a ");
                stringBuffer.append(luaValue2.typename());
                stringBuffer.append(")");
                LuaValue.error(stringBuffer.toString());
            }
            buffer.append(luaValue2.strvalue());
        }

        public int classend(int i10) {
            int i11 = i10 + 1;
            int luaByte = this.f102800p.luaByte(i10);
            if (luaByte == 37) {
                if (i11 == this.f102800p.length()) {
                    LuaValue.error("malformed pattern (ends with %)");
                }
                return i10 + 2;
            }
            if (luaByte != 91) {
                return i11;
            }
            if (this.f102800p.luaByte(i11) == 94) {
                i11 = i10 + 2;
            }
            do {
                if (i11 == this.f102800p.length()) {
                    LuaValue.error("malformed pattern (missing ])");
                }
                int i12 = i11 + 1;
                i11 = (this.f102800p.luaByte(i11) != 37 || i12 == this.f102800p.length()) ? i12 : i11 + 2;
            } while (this.f102800p.luaByte(i11) != 93);
            return i11 + 1;
        }

        public int end_capture(int i10, int i11) {
            int capture_to_close = capture_to_close();
            this.clen[capture_to_close] = i10 - this.cinit[capture_to_close];
            int match = match(i10, i11);
            if (match == -1) {
                this.clen[capture_to_close] = -1;
            }
            return match;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x010a  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x013a A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int match(int i10, int i11) {
            int i12;
            int luaByte;
            int match;
            while (i11 != this.f102800p.length()) {
                int luaByte2 = this.f102800p.luaByte(i11);
                if (luaByte2 != 36) {
                    if (luaByte2 == 37) {
                        int i13 = i11 + 1;
                        if (i13 == this.f102800p.length()) {
                            LuaValue.error("malformed pattern (ends with '%')");
                        }
                        int luaByte3 = this.f102800p.luaByte(i13);
                        if (luaByte3 == 98) {
                            i10 = matchbalance(i10, i11 + 2);
                            if (i10 == -1) {
                                return -1;
                            }
                            i11 += 4;
                        } else if (luaByte3 != 102) {
                            int luaByte4 = this.f102800p.luaByte(i13);
                            if (Character.isDigit((char) luaByte4)) {
                                int match_capture = match_capture(i10, luaByte4);
                                if (match_capture == -1) {
                                    return -1;
                                }
                                return match(match_capture, i11 + 2);
                            }
                        } else {
                            int i14 = i11 + 2;
                            if (this.f102800p.luaByte(i14) != 91) {
                                LuaValue.error("Missing [ after %f in pattern");
                            }
                            i12 = classend(i14);
                            int i15 = i12 - 1;
                            if (matchbracketclass(i10 == 0 ? -1 : this.f102801s.luaByte(i10 - 1), i14, i15) || matchbracketclass(this.f102801s.luaByte(i10), i14, i15)) {
                                return -1;
                            }
                            i11 = i12;
                        }
                    } else {
                        if (luaByte2 == 40) {
                            int i16 = i11 + 1;
                            return (i16 >= this.f102800p.length() || this.f102800p.luaByte(i16) != 41) ? start_capture(i10, i16, -1) : start_capture(i10, i11 + 2, -2);
                        }
                        if (luaByte2 == 41) {
                            return end_capture(i10, i11 + 1);
                        }
                        i12 = classend(i11);
                        boolean z10 = i10 >= this.f102801s.length() && singlematch(this.f102801s.luaByte(i10), i11, i12);
                        luaByte = i12 < this.f102800p.length() ? this.f102800p.luaByte(i12) : 0;
                        if (luaByte != 42) {
                            return max_expand(i10, i11, i12);
                        }
                        if (luaByte == 43) {
                            if (z10) {
                                return max_expand(i10 + 1, i11, i12);
                            }
                            return -1;
                        }
                        if (luaByte == 45) {
                            return min_expand(i10, i11, i12);
                        }
                        if (luaByte != 63) {
                            if (!z10) {
                                return -1;
                            }
                            i10++;
                            i11 = i12;
                        } else {
                            if (z10 && (match = match(i10 + 1, i12 + 1)) != -1) {
                                return match;
                            }
                            i11 = i12 + 1;
                        }
                    }
                }
                if (i11 + 1 == this.f102800p.length()) {
                    if (i10 == this.f102801s.length()) {
                        return i10;
                    }
                    return -1;
                }
                i12 = classend(i11);
                if (i10 >= this.f102801s.length()) {
                }
                if (i12 < this.f102800p.length()) {
                }
                if (luaByte != 42) {
                }
            }
            return i10;
        }

        public int match_capture(int i10, int i11) {
            int check_capture = check_capture(i11);
            int i12 = this.clen[check_capture];
            if (this.f102801s.length() - i10 < i12) {
                return -1;
            }
            LuaString luaString = this.f102801s;
            if (LuaString.equals(luaString, this.cinit[check_capture], luaString, i10, i12)) {
                return i10 + i12;
            }
            return -1;
        }

        public int matchbalance(int i10, int i11) {
            int luaByte;
            int length = this.f102800p.length();
            if (i11 == length || i11 + 1 == length) {
                LuaValue.error("unbalanced pattern");
            }
            int length2 = this.f102801s.length();
            if (i10 >= length2 || this.f102801s.luaByte(i10) != (luaByte = this.f102800p.luaByte(i11))) {
                return -1;
            }
            int i12 = 1;
            int luaByte2 = this.f102800p.luaByte(i11 + 1);
            while (true) {
                int i13 = i10 + 1;
                if (i13 >= length2) {
                    return -1;
                }
                if (this.f102801s.luaByte(i13) == luaByte2) {
                    i12--;
                    if (i12 == 0) {
                        return i10 + 2;
                    }
                } else if (this.f102801s.luaByte(i13) == luaByte) {
                    i12++;
                }
                i10 = i13;
            }
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:28:0x005c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x005d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005a -> B:4:0x000f). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean matchbracketclass(int r6, int r7, int r8) {
            /*
                r5 = this;
                org.luaj.vm2.LuaString r0 = r5.f102800p
                int r1 = r7 + 1
                int r0 = r0.luaByte(r1)
                r2 = 94
                r3 = 1
                if (r0 != r2) goto L11
                r7 = 0
                r0 = r7
            Lf:
                r7 = r1
                goto L12
            L11:
                r0 = r3
            L12:
                int r1 = r7 + 1
                if (r1 >= r8) goto L5d
                org.luaj.vm2.LuaString r2 = r5.f102800p
                int r2 = r2.luaByte(r1)
                r4 = 37
                if (r2 != r4) goto L2f
                int r7 = r7 + 2
                org.luaj.vm2.LuaString r1 = r5.f102800p
                int r1 = r1.luaByte(r7)
                boolean r1 = match_class(r6, r1)
                if (r1 == 0) goto L12
                return r0
            L2f:
                org.luaj.vm2.LuaString r2 = r5.f102800p
                int r4 = r7 + 2
                int r2 = r2.luaByte(r4)
                r4 = 45
                if (r2 != r4) goto L54
                int r2 = r7 + 3
                if (r2 >= r8) goto L54
                org.luaj.vm2.LuaString r1 = r5.f102800p
                int r7 = r7 + 1
                int r7 = r1.luaByte(r7)
                if (r7 > r6) goto L52
                org.luaj.vm2.LuaString r7 = r5.f102800p
                int r7 = r7.luaByte(r2)
                if (r6 > r7) goto L52
                return r0
            L52:
                r7 = r2
                goto L12
            L54:
                org.luaj.vm2.LuaString r7 = r5.f102800p
                int r7 = r7.luaByte(r1)
                if (r7 != r6) goto Lf
                return r0
            L5d:
                r6 = r0 ^ 1
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.luaj.vm2.lib.StringLib.MatchState.matchbracketclass(int, int, int):boolean");
        }

        public int max_expand(int i10, int i11, int i12) {
            int i13 = 0;
            while (true) {
                int i14 = i10 + i13;
                if (i14 >= this.f102801s.length() || !singlematch(this.f102801s.luaByte(i14), i11, i12)) {
                    break;
                }
                i13++;
            }
            while (i13 >= 0) {
                int match = match(i10 + i13, i12 + 1);
                if (match != -1) {
                    return match;
                }
                i13--;
            }
            return -1;
        }

        public int min_expand(int i10, int i11, int i12) {
            while (true) {
                int match = match(i10, i12 + 1);
                if (match != -1) {
                    return match;
                }
                if (i10 >= this.f102801s.length() || !singlematch(this.f102801s.luaByte(i10), i11, i12)) {
                    break;
                }
                i10++;
            }
            return -1;
        }

        public Varargs push_captures(boolean z10, int i10, int i11) {
            int i12 = this.level;
            if (i12 == 0 && z10) {
                i12 = 1;
            }
            if (i12 == 0) {
                return LuaValue.NONE;
            }
            if (i12 == 1) {
                return push_onecapture(0, i10, i11);
            }
            LuaValue[] luaValueArr = new LuaValue[i12];
            for (int i13 = 0; i13 < i12; i13++) {
                luaValueArr[i13] = push_onecapture(i13, i10, i11);
            }
            return LuaValue.varargsOf(luaValueArr);
        }

        public void reset() {
            this.level = 0;
        }

        public boolean singlematch(int i10, int i11, int i12) {
            int luaByte = this.f102800p.luaByte(i11);
            if (luaByte == 37) {
                return match_class(i10, this.f102800p.luaByte(i11 + 1));
            }
            if (luaByte != 46) {
                return luaByte != 91 ? this.f102800p.luaByte(i11) == i10 : matchbracketclass(i10, i11, i12 - 1);
            }
            return true;
        }

        public int start_capture(int i10, int i11, int i12) {
            int i13 = this.level;
            if (i13 >= 32) {
                LuaValue.error("too many captures");
            }
            this.cinit[i13] = i10;
            this.clen[i13] = i12;
            this.level = i13 + 1;
            int match = match(i10, i11);
            if (match == -1) {
                this.level--;
            }
            return match;
        }
    }

    public static final class byte_ extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int i10 = checkstring.m_length;
            int posrelat = StringLib.posrelat(varargs.optint(2, 1), i10);
            int posrelat2 = StringLib.posrelat(varargs.optint(3, posrelat), i10);
            if (posrelat <= 0) {
                posrelat = 1;
            }
            if (posrelat2 <= i10) {
                i10 = posrelat2;
            }
            if (posrelat > i10) {
                return LuaValue.NONE;
            }
            int i11 = (i10 - posrelat) + 1;
            if (posrelat + i11 <= i10) {
                LuaValue.error("string slice too long");
            }
            LuaValue[] luaValueArr = new LuaValue[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                luaValueArr[i12] = LuaValue.valueOf(checkstring.luaByte((posrelat + i12) - 1));
            }
            return LuaValue.varargsOf(luaValueArr);
        }
    }

    public static final class char_ extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            int narg = varargs.narg();
            byte[] bArr = new byte[narg];
            int i10 = 0;
            int i11 = 1;
            while (i10 < narg) {
                int checkint = varargs.checkint(i11);
                if (checkint < 0 || checkint >= 256) {
                    LuaValue.argerror(i11, "invalid value");
                }
                bArr[i10] = (byte) checkint;
                i10++;
                i11++;
            }
            return LuaString.valueUsing(bArr);
        }
    }

    public static final class dump extends OneArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            LuaFunction checkfunction = luaValue.checkfunction();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                DumpState.dump(((LuaClosure) checkfunction).f102760p, byteArrayOutputStream, true);
                return LuaString.valueUsing(byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                return LuaValue.error(e10.getMessage());
            }
        }
    }

    public static final class find extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            return StringLib.str_find_aux(varargs, true);
        }
    }

    public static final class format extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            long checklong;
            int i10 = 1;
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length();
            Buffer buffer = new Buffer(length);
            int i11 = 0;
            while (i11 < length) {
                int i12 = i11 + 1;
                int luaByte = checkstring.luaByte(i11);
                if (luaByte == 10) {
                    buffer.append("\n");
                } else if (luaByte != 37) {
                    buffer.append((byte) luaByte);
                } else if (i12 < length) {
                    if (checkstring.luaByte(i12) == 37) {
                        i11 += 2;
                        buffer.append(Opcodes.OPC_fload_3);
                    } else {
                        i10++;
                        FormatDesc formatDesc = new FormatDesc(varargs, checkstring, i12);
                        i12 += formatDesc.length;
                        int i13 = formatDesc.conversion;
                        if (i13 != 69 && i13 != 71) {
                            if (i13 != 88) {
                                if (i13 != 105) {
                                    if (i13 != 111) {
                                        if (i13 == 113) {
                                            StringLib.addquoted(buffer, varargs.checkstring(i10));
                                        } else if (i13 == 115) {
                                            LuaString checkstring2 = varargs.checkstring(i10);
                                            if (formatDesc.precision != -1 || checkstring2.length() < 100) {
                                                formatDesc.format(buffer, checkstring2);
                                            } else {
                                                buffer.append(checkstring2);
                                            }
                                        } else if (i13 != 117 && i13 != 120) {
                                            switch (i13) {
                                                case 99:
                                                    formatDesc.format(buffer, (byte) varargs.checkint(i10));
                                                    break;
                                                case 100:
                                                    break;
                                                case 101:
                                                case 102:
                                                case 103:
                                                    break;
                                                default:
                                                    StringBuffer stringBuffer = new StringBuffer();
                                                    stringBuffer.append("invalid option '%");
                                                    stringBuffer.append((char) formatDesc.conversion);
                                                    stringBuffer.append("' to 'format'");
                                                    LuaValue.error(stringBuffer.toString());
                                                    break;
                                            }
                                            formatDesc.format(buffer, checklong);
                                        }
                                    }
                                }
                                checklong = varargs.checkint(i10);
                                formatDesc.format(buffer, checklong);
                            }
                            checklong = varargs.checklong(i10);
                            formatDesc.format(buffer, checklong);
                        }
                        formatDesc.format(buffer, varargs.checkdouble(i10));
                    }
                }
                i11 = i12;
            }
            return buffer.tostring();
        }
    }

    public static final class gmatch extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            return new GMatchAux(varargs, varargs.checkstring(1), varargs.checkstring(2));
        }
    }

    public static final class gsub extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length();
            LuaString checkstring2 = varargs.checkstring(2);
            LuaValue arg = varargs.arg(3);
            int optint = varargs.optint(4, length + 1);
            int i10 = 0;
            int i11 = (checkstring2.length() <= 0 || checkstring2.charAt(0) != 94) ? 0 : 1;
            Buffer buffer = new Buffer(length);
            MatchState matchState = new MatchState(varargs, checkstring, checkstring2);
            int i12 = 0;
            while (i10 < optint) {
                matchState.reset();
                int match = matchState.match(i12, i11);
                if (match != -1) {
                    i10++;
                    matchState.add_value(buffer, i12, match, arg);
                }
                if (match == -1 || match <= i12) {
                    if (i12 >= length) {
                        break;
                    }
                    match = i12 + 1;
                    buffer.append((byte) checkstring.luaByte(i12));
                }
                i12 = match;
                if (i11 != 0) {
                    break;
                }
            }
            buffer.append(checkstring.substring(i12, length));
            return LuaValue.varargsOf(buffer.tostring(), LuaValue.valueOf(i10));
        }
    }

    public static final class len extends OneArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return luaValue.checkstring().len();
        }
    }

    public static final class lower extends OneArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkjstring().toLowerCase());
        }
    }

    public static final class match extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            return StringLib.str_find_aux(varargs, false);
        }
    }

    public static final class rep extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length() * varargs.checkint(2);
            byte[] bArr = new byte[length];
            int length2 = checkstring.length();
            for (int i10 = 0; i10 < length; i10 += length2) {
                checkstring.copyInto(0, bArr, i10, length2);
            }
            return LuaString.valueUsing(bArr);
        }
    }

    public static final class reverse extends OneArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            LuaString checkstring = luaValue.checkstring();
            int length = checkstring.length();
            byte[] bArr = new byte[length];
            int i10 = length - 1;
            int i11 = 0;
            while (i11 < length) {
                bArr[i10] = (byte) checkstring.luaByte(i11);
                i11++;
                i10--;
            }
            return LuaString.valueUsing(bArr);
        }
    }

    public static final class sub extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length();
            int posrelat = StringLib.posrelat(varargs.checkint(2), length);
            int posrelat2 = StringLib.posrelat(varargs.optint(3, -1), length);
            if (posrelat < 1) {
                posrelat = 1;
            }
            if (posrelat2 <= length) {
                length = posrelat2;
            }
            return posrelat <= length ? checkstring.substring(posrelat - 1, length) : LuaValue.EMPTYSTRING;
        }
    }

    public static final class upper extends OneArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkjstring().toUpperCase());
        }
    }

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            char c10 = (char) i10;
            byte[] bArr = CHAR_TABLE;
            byte b10 = (byte) (((c10 < ' ' || c10 == '\u007f') ? 64 : 0) | (Character.isDigit(c10) ? 8 : 0) | (Character.isLowerCase(c10) ? 2 : 0) | (Character.isUpperCase(c10) ? 4 : 0));
            bArr[i10] = b10;
            if ((c10 >= 'a' && c10 <= 'f') || ((c10 >= 'A' && c10 <= 'F') || (c10 >= '0' && c10 <= '9'))) {
                bArr[i10] = (byte) (b10 | Byte.MIN_VALUE);
            }
            if ((c10 >= '!' && c10 <= '/') || (c10 >= ':' && c10 <= '@')) {
                bArr[i10] = (byte) (bArr[i10] | 16);
            }
            byte b11 = bArr[i10];
            if ((b11 & 6) != 0) {
                bArr[i10] = (byte) (b11 | 1);
            }
        }
        byte[] bArr2 = CHAR_TABLE;
        bArr2[32] = 32;
        bArr2[13] = (byte) (bArr2[13] | 32);
        bArr2[10] = (byte) (bArr2[10] | 32);
        bArr2[9] = (byte) (bArr2[9] | 32);
        byte b12 = (byte) (bArr2[12] | 32);
        bArr2[12] = b12;
        bArr2[12] = (byte) (b12 | 32);
    }

    public static void addquoted(Buffer buffer, LuaString luaString) {
        buffer.append((byte) 34);
        int length = luaString.length();
        for (int i10 = 0; i10 < length; i10++) {
            int luaByte = luaString.luaByte(i10);
            if (luaByte == 10 || luaByte == 34 || luaByte == 92) {
                buffer.append((byte) 92);
            } else if (luaByte <= 31 || luaByte == 127) {
                buffer.append((byte) 92);
                int i11 = i10 + 1;
                if (i11 == length || luaString.luaByte(i11) < 48 || luaString.luaByte(i11) > 57) {
                    buffer.append(Integer.toString(luaByte));
                } else {
                    buffer.append((byte) 48);
                    buffer.append((byte) ((char) ((luaByte / 10) + 48)));
                    luaByte = (char) ((luaByte % 10) + 48);
                }
            }
            buffer.append((byte) luaByte);
        }
        buffer.append((byte) 34);
    }

    public static int posrelat(int i10, int i11) {
        return i10 >= 0 ? i10 : i11 + i10 + 1;
    }

    public static Varargs str_find_aux(Varargs varargs, boolean z10) {
        LuaString checkstring = varargs.checkstring(1);
        LuaString checkstring2 = varargs.checkstring(2);
        int optint = varargs.optint(3, 1);
        if (optint > 0) {
            optint = Math.min(optint - 1, checkstring.length());
        } else if (optint < 0) {
            optint = Math.max(0, checkstring.length() + optint);
        }
        if (!z10 || (!varargs.arg(4).toboolean() && checkstring2.indexOfAny(SPECIALS) != -1)) {
            MatchState matchState = new MatchState(varargs, checkstring, checkstring2);
            int i10 = checkstring2.luaByte(0) == 94 ? 1 : 0;
            int i11 = i10;
            while (true) {
                matchState.reset();
                int match2 = matchState.match(optint, i11);
                if (match2 == -1) {
                    int i12 = optint + 1;
                    if (optint >= checkstring.length() || i10 != 0) {
                        break;
                    }
                    optint = i12;
                } else {
                    return z10 ? LuaValue.varargsOf(LuaValue.valueOf(optint + 1), LuaValue.valueOf(match2), matchState.push_captures(false, optint, match2)) : matchState.push_captures(true, optint, match2);
                }
            }
        } else {
            int indexOf = checkstring.indexOf(checkstring2, optint);
            if (indexOf != -1) {
                return LuaValue.varargsOf(LuaValue.valueOf(indexOf + 1), LuaValue.valueOf(indexOf + checkstring2.length()));
            }
        }
        return LuaValue.NIL;
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.set("byte", new byte_());
        luaTable.set("char", new char_());
        luaTable.set("dump", new dump());
        luaTable.set("find", new find());
        luaTable.set("format", new format());
        luaTable.set("gmatch", new gmatch());
        luaTable.set("gsub", new gsub());
        luaTable.set("len", new len());
        luaTable.set("lower", new lower());
        luaTable.set("match", new match());
        luaTable.set("rep", new rep());
        luaTable.set("reverse", new reverse());
        luaTable.set(Telephony.BaseMmsColumns.SUBJECT, new sub());
        luaTable.set("upper", new upper());
        LuaTable tableOf = LuaValue.tableOf(new LuaValue[]{LuaValue.INDEX, luaTable});
        luaValue2.set(TypedValues.Custom.S_STRING, luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set(TypedValues.Custom.S_STRING, luaTable);
        if (LuaString.s_metatable == null) {
            LuaString.s_metatable = tableOf;
        }
        return luaTable;
    }
}
