package org.luaj.vm2;

import T5.b;
import b3.s;
import com.bumptech.glide.load.engine.GlideException;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.doclint.DocLint;
import u8.C15580b;
import w2.C15883c;

public class Print extends Lua {
    private static final String STRING_FOR_NULL = "null";
    public static PrintStream ps = System.out;
    public static final String[] OPNAMES = {"MOVE", "LOADK", "LOADKX", "LOADBOOL", "LOADNIL", "GETUPVAL", "GETTABUP", "GETTABLE", "SETTABUP", "SETUPVAL", "SETTABLE", "NEWTABLE", "SELF", "ADD", "SUB", "MUL", "DIV", "MOD", "POW", "UNM", "NOT", "LEN", "CONCAT", "JMP", "EQ", "LT", "LE", "TEST", "TESTSET", "CALL", "TAILCALL", "RETURN", "FORLOOP", "FORPREP", "TFORCALL", "TFORLOOP", "SETLIST", "CLOSURE", "VARARG", "EXTRAARG", null};

    private void _assert(boolean z10) {
        if (!z10) {
            throw new NullPointerException("_assert failed");
        }
    }

    private static void format(String str, int i10) {
        int length = str.length();
        if (length > i10) {
            ps.print(str.substring(0, i10));
            return;
        }
        ps.print(str);
        int i11 = i10 - length;
        while (true) {
            i11--;
            if (i11 < 0) {
                return;
            } else {
                ps.print(C15883c.f126249O);
            }
        }
    }

    private static int getline(Prototype prototype, int i10) {
        int[] iArr;
        if (i10 <= 0 || (iArr = prototype.lineinfo) == null || i10 >= iArr.length) {
            return -1;
        }
        return iArr[i10];
    }

    private static String id(Prototype prototype) {
        return "Proto";
    }

    public static void print(Prototype prototype) {
        printFunction(prototype, true);
    }

    public static void printCode(Prototype prototype) {
        int length = prototype.code.length;
        for (int i10 = 0; i10 < length; i10++) {
            printOpCode(prototype, i10);
            ps.println();
        }
    }

    public static void printConstant(PrintStream printStream, Prototype prototype, int i10) {
        printValue(printStream, prototype.f102764k[i10]);
    }

    public static void printConstants(Prototype prototype) {
        int length = prototype.f102764k.length;
        PrintStream printStream = ps;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("constants (");
        stringBuffer.append(length);
        stringBuffer.append(") for ");
        stringBuffer.append(id(prototype));
        stringBuffer.append(":\n");
        printStream.print(stringBuffer.toString());
        int i10 = 0;
        while (i10 < length) {
            PrintStream printStream2 = ps;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(GlideException.a.f59088e);
            int i11 = i10 + 1;
            stringBuffer2.append(i11);
            stringBuffer2.append(GlideException.a.f59088e);
            printStream2.print(stringBuffer2.toString());
            printValue(ps, prototype.f102764k[i10]);
            ps.print("\n");
            i10 = i11;
        }
    }

    public static void printFunction(Prototype prototype, boolean z10) {
        int length = prototype.f102765p.length;
        printHeader(prototype);
        printCode(prototype);
        if (z10) {
            printConstants(prototype);
            printLocals(prototype);
            printUpValues(prototype);
        }
        for (int i10 = 0; i10 < length; i10++) {
            printFunction(prototype.f102765p[i10], z10);
        }
    }

    public static void printHeader(Prototype prototype) {
        String valueOf = String.valueOf(prototype.source);
        String substring = (valueOf.startsWith("@") || valueOf.startsWith("=")) ? valueOf.substring(1) : "\u001bLua".equals(valueOf) ? "(bstring)" : "(string)";
        String str = prototype.linedefined == 0 ? b.f24045b : "function";
        PrintStream printStream = ps;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\n%");
        stringBuffer.append(str);
        stringBuffer.append(" <");
        stringBuffer.append(substring);
        stringBuffer.append(s.f32937c);
        stringBuffer.append(prototype.linedefined);
        stringBuffer.append(DocLint.SEPARATOR);
        stringBuffer.append(prototype.lastlinedefined);
        stringBuffer.append("> (");
        stringBuffer.append(prototype.code.length);
        stringBuffer.append(" instructions, ");
        stringBuffer.append(prototype.code.length * 4);
        stringBuffer.append(" bytes at ");
        stringBuffer.append(id(prototype));
        stringBuffer.append(")\n");
        printStream.print(stringBuffer.toString());
        PrintStream printStream2 = ps;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(prototype.numparams);
        stringBuffer2.append(" param, ");
        stringBuffer2.append(prototype.maxstacksize);
        stringBuffer2.append(" slot, ");
        stringBuffer2.append(prototype.upvalues.length);
        stringBuffer2.append(" upvalue, ");
        printStream2.print(stringBuffer2.toString());
        PrintStream printStream3 = ps;
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(prototype.locvars.length);
        stringBuffer3.append(" local, ");
        stringBuffer3.append(prototype.f102764k.length);
        stringBuffer3.append(" constant, ");
        stringBuffer3.append(prototype.f102765p.length);
        stringBuffer3.append(" function\n");
        printStream3.print(stringBuffer3.toString());
    }

    public static void printLocals(Prototype prototype) {
        int length = prototype.locvars.length;
        PrintStream printStream = ps;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("locals (");
        stringBuffer.append(length);
        stringBuffer.append(") for ");
        stringBuffer.append(id(prototype));
        stringBuffer.append(":\n");
        printStream.print(stringBuffer.toString());
        for (int i10 = 0; i10 < length; i10++) {
            PrintStream printStream2 = ps;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(GlideException.a.f59088e);
            stringBuffer2.append(i10);
            stringBuffer2.append(GlideException.a.f59088e);
            stringBuffer2.append((Object) prototype.locvars[i10].varname);
            stringBuffer2.append(" ");
            stringBuffer2.append(prototype.locvars[i10].startpc + 1);
            stringBuffer2.append(" ");
            stringBuffer2.append(prototype.locvars[i10].endpc + 1);
            printStream2.println(stringBuffer2.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x019e, code lost:
    
        if (org.luaj.vm2.Lua.ISK(r5) != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01a9, code lost:
    
        r13.print("-");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01c8, code lost:
    
        if (org.luaj.vm2.Lua.ISK(r5) != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x020d, code lost:
    
        if (org.luaj.vm2.Lua.ISK(r5) == false) goto L64;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x011d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0120. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0123. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0126. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0210  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void printOpCode(PrintStream printStream, Prototype prototype, int i10) {
        String str;
        StringBuffer stringBuffer;
        int INDEXK;
        StringBuffer stringBuffer2;
        String stringBuffer3;
        StringBuffer stringBuffer4;
        int[] iArr = prototype.code;
        int i11 = iArr[i10];
        int GET_OPCODE = Lua.GET_OPCODE(i11);
        int GETARG_A = Lua.GETARG_A(i11);
        int GETARG_B = Lua.GETARG_B(i11);
        int GETARG_C = Lua.GETARG_C(i11);
        int GETARG_Bx = Lua.GETARG_Bx(i11);
        int GETARG_sBx = Lua.GETARG_sBx(i11);
        int i12 = getline(prototype, i10);
        StringBuffer stringBuffer5 = new StringBuffer();
        stringBuffer5.append(GlideException.a.f59088e);
        int i13 = i10 + 1;
        stringBuffer5.append(i13);
        stringBuffer5.append(GlideException.a.f59088e);
        printStream.print(stringBuffer5.toString());
        if (i12 > 0) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("[");
            stringBuffer6.append(i12);
            stringBuffer6.append("]  ");
            str = stringBuffer6.toString();
        } else {
            str = "[-]  ";
        }
        printStream.print(str);
        StringBuffer stringBuffer7 = new StringBuffer();
        stringBuffer7.append(OPNAMES[GET_OPCODE]);
        stringBuffer7.append(GlideException.a.f59088e);
        printStream.print(stringBuffer7.toString());
        int opMode = Lua.getOpMode(GET_OPCODE);
        if (opMode == 0) {
            printStream.print(GETARG_A);
            if (Lua.getBMode(GET_OPCODE) != 0) {
                StringBuffer stringBuffer8 = new StringBuffer();
                stringBuffer8.append(" ");
                stringBuffer8.append(Lua.ISK(GETARG_B) ? (-1) - Lua.INDEXK(GETARG_B) : GETARG_B);
                printStream.print(stringBuffer8.toString());
            }
            if (Lua.getCMode(GET_OPCODE) != 0) {
                stringBuffer = new StringBuffer();
                stringBuffer.append(" ");
                INDEXK = Lua.ISK(GETARG_C) ? (-1) - Lua.INDEXK(GETARG_C) : GETARG_C;
                stringBuffer.append(INDEXK);
            }
            if (GET_OPCODE == 1) {
            }
        } else if (opMode != 1) {
            if (opMode == 2) {
                if (GET_OPCODE == 23) {
                    printStream.print(GETARG_sBx);
                } else {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(GETARG_A);
                    stringBuffer.append(" ");
                    stringBuffer.append(GETARG_sBx);
                }
            }
            if (GET_OPCODE == 1) {
                printStream.print("  ; ");
                printConstant(printStream, prototype, GETARG_Bx);
                return;
            }
            if (GET_OPCODE != 18) {
                if (GET_OPCODE != 32 && GET_OPCODE != 33) {
                    switch (GET_OPCODE) {
                        case 5:
                        case 9:
                            printStream.print("  ; ");
                            printUpvalue(printStream, prototype.upvalues[GETARG_B]);
                            return;
                        case 6:
                            printStream.print("  ; ");
                            printUpvalue(printStream, prototype.upvalues[GETARG_B]);
                            printStream.print(" ");
                            break;
                        case 7:
                            if (Lua.ISK(GETARG_C)) {
                                printStream.print("  ; ");
                                printConstant(printStream, prototype, Lua.INDEXK(GETARG_C));
                                return;
                            }
                            return;
                        case 8:
                            printStream.print("  ; ");
                            printUpvalue(printStream, prototype.upvalues[GETARG_A]);
                            printStream.print(" ");
                            if (Lua.ISK(GETARG_B)) {
                                printConstant(printStream, prototype, Lua.INDEXK(GETARG_B));
                            } else {
                                printStream.print("-");
                            }
                            printStream.print(" ");
                            break;
                        case 10:
                            break;
                        default:
                            switch (GET_OPCODE) {
                                case 12:
                                    break;
                                default:
                                    switch (GET_OPCODE) {
                                        case 23:
                                            break;
                                        case 24:
                                        case 25:
                                        case 26:
                                            break;
                                        default:
                                            switch (GET_OPCODE) {
                                                case 36:
                                                    if (GETARG_C == 0) {
                                                        stringBuffer2 = new StringBuffer();
                                                        stringBuffer2.append("  ; ");
                                                        stringBuffer2.append(iArr[i13]);
                                                    } else {
                                                        stringBuffer2 = new StringBuffer();
                                                        stringBuffer2.append("  ; ");
                                                        stringBuffer2.append(GETARG_C);
                                                    }
                                                    stringBuffer3 = stringBuffer2.toString();
                                                    printStream.print(stringBuffer3);
                                                    return;
                                                case 37:
                                                    stringBuffer4 = new StringBuffer();
                                                    stringBuffer4.append("  ; ");
                                                    stringBuffer4.append(prototype.f102765p[GETARG_Bx].getClass().getName());
                                                    stringBuffer3 = stringBuffer4.toString();
                                                    printStream.print(stringBuffer3);
                                                    return;
                                                case 38:
                                                    stringBuffer4 = new StringBuffer();
                                                    stringBuffer4.append("  ; is_vararg=");
                                                    stringBuffer4.append(prototype.is_vararg);
                                                    stringBuffer3 = stringBuffer4.toString();
                                                    printStream.print(stringBuffer3);
                                                    return;
                                                default:
                                                    return;
                                            }
                                    }
                                case 13:
                                case 14:
                                case 15:
                                case 16:
                                    if (!Lua.ISK(GETARG_B) || Lua.ISK(GETARG_C)) {
                                        printStream.print("  ; ");
                                        if (Lua.ISK(GETARG_B)) {
                                            printStream.print("-");
                                        } else {
                                            printConstant(printStream, prototype, Lua.INDEXK(GETARG_B));
                                        }
                                        printStream.print(" ");
                                        break;
                                    } else {
                                        return;
                                    }
                            }
                    }
                }
                stringBuffer2 = new StringBuffer();
                stringBuffer2.append("  ; to ");
                stringBuffer2.append(GETARG_sBx + i10 + 2);
                stringBuffer3 = stringBuffer2.toString();
                printStream.print(stringBuffer3);
                return;
            }
            if (Lua.ISK(GETARG_B)) {
            }
            printStream.print("  ; ");
            if (Lua.ISK(GETARG_B)) {
            }
            printStream.print(" ");
        } else if (Lua.getBMode(GET_OPCODE) == 3) {
            stringBuffer = new StringBuffer();
            stringBuffer.append(GETARG_A);
            stringBuffer.append(" ");
            INDEXK = (-1) - GETARG_Bx;
            stringBuffer.append(INDEXK);
        } else {
            stringBuffer = new StringBuffer();
            stringBuffer.append(GETARG_A);
            stringBuffer.append(" ");
            stringBuffer.append(GETARG_Bx);
        }
        printStream.print(stringBuffer.toString());
        if (GET_OPCODE == 1) {
        }
    }

    public static void printStack(LuaValue[] luaValueArr, int i10, Varargs varargs) {
        PrintStream printStream;
        String stringBuffer;
        ps.print('[');
        int i11 = 0;
        while (i11 < luaValueArr.length) {
            LuaValue luaValue = luaValueArr[i11];
            if (luaValue == null) {
                ps.print(STRING_FOR_NULL);
            } else {
                int type = luaValue.type();
                if (type == 4) {
                    LuaString checkstring = luaValue.checkstring();
                    printStream = ps;
                    if (checkstring.length() < 48) {
                        stringBuffer = checkstring.tojstring();
                    } else {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(checkstring.substring(0, 32).tojstring());
                        stringBuffer2.append("...+");
                        stringBuffer2.append(checkstring.length() - 32);
                        stringBuffer2.append(C15580b.f118629u);
                        stringBuffer = stringBuffer2.toString();
                    }
                } else if (type == 6 || type != 7) {
                    printStream = ps;
                    stringBuffer = luaValue.tojstring();
                } else {
                    Object obj = luaValue.touserdata();
                    if (obj != null) {
                        String name = obj.getClass().getName();
                        String substring = name.substring(name.lastIndexOf(46) + 1);
                        PrintStream printStream2 = ps;
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(substring);
                        stringBuffer3.append(": ");
                        stringBuffer3.append(Integer.toHexString(obj.hashCode()));
                        printStream2.print(stringBuffer3.toString());
                    } else {
                        printStream = ps;
                        stringBuffer = luaValue.toString();
                    }
                }
                printStream.print(stringBuffer);
            }
            i11++;
            if (i11 == i10) {
                ps.print(JavaElement.JEM_TYPE_PARAMETER);
            }
            ps.print(" | ");
        }
        ps.print(varargs);
    }

    public static void printState(LuaClosure luaClosure, int i10, LuaValue[] luaValueArr, int i11, Varargs varargs) {
        PrintStream printStream = ps;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ps = new PrintStream(byteArrayOutputStream);
        printOpCode(luaClosure.f102760p, i10);
        ps.flush();
        ps.close();
        ps = printStream;
        format(byteArrayOutputStream.toString(), 50);
        printStack(luaValueArr, i11, varargs);
        ps.println();
    }

    public static void printString(PrintStream printStream, LuaString luaString) {
        String str;
        printStream.print('\"');
        int i10 = luaString.m_length;
        for (int i11 = 0; i11 < i10; i11++) {
            byte b10 = luaString.m_bytes[luaString.m_offset + i11];
            if (b10 < 32 || b10 > 126 || b10 == 34 || b10 == 92) {
                if (b10 == 34) {
                    str = "\\\"";
                } else if (b10 != 92) {
                    switch (b10) {
                        case 7:
                            str = "\\a";
                            break;
                        case 8:
                            str = "\\b";
                            break;
                        case 9:
                            str = "\\t";
                            break;
                        case 10:
                            str = "\\n";
                            break;
                        case 11:
                            str = "\\v";
                            break;
                        case 12:
                            str = "\\f";
                            break;
                        case 13:
                            str = "\\r";
                            break;
                        default:
                            printStream.print(JavaElement.JEM_ESCAPE);
                            str = Integer.toString(b10 & 1255).substring(1);
                            break;
                    }
                } else {
                    str = "\\\\";
                }
                printStream.print(str);
            } else {
                printStream.print((char) b10);
            }
        }
        printStream.print('\"');
    }

    public static void printUpValues(Prototype prototype) {
        int length = prototype.upvalues.length;
        PrintStream printStream = ps;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("upvalues (");
        stringBuffer.append(length);
        stringBuffer.append(") for ");
        stringBuffer.append(id(prototype));
        stringBuffer.append(":\n");
        printStream.print(stringBuffer.toString());
        for (int i10 = 0; i10 < length; i10++) {
            PrintStream printStream2 = ps;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(GlideException.a.f59088e);
            stringBuffer2.append(i10);
            stringBuffer2.append(GlideException.a.f59088e);
            stringBuffer2.append((Object) prototype.upvalues[i10]);
            stringBuffer2.append("\n");
            printStream2.print(stringBuffer2.toString());
        }
    }

    public static void printUpvalue(PrintStream printStream, Upvaldesc upvaldesc) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((int) upvaldesc.idx);
        stringBuffer.append(" ");
        printStream.print(stringBuffer.toString());
        printValue(printStream, upvaldesc.name);
    }

    public static void printValue(PrintStream printStream, LuaValue luaValue) {
        if (luaValue.type() != 4) {
            printStream.print(luaValue.tojstring());
        } else {
            printString(printStream, (LuaString) luaValue);
        }
    }

    public static void printOpCode(Prototype prototype, int i10) {
        printOpCode(ps, prototype, i10);
    }
}
