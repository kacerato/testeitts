package org.luaj.vm2.compiler;

import org.luaj.vm2.LocVars;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.Upvaldesc;
import org.luaj.vm2.compiler.LexState;

public class Constants extends Lua {
    static final int LUAI_MAXUPVAL = 255;
    static final int LUAI_MAXVARS = 200;
    public static final int MAXSTACK = 250;
    static final int NO_REG = 255;
    static final int OpArgK = 3;
    static final int OpArgN = 0;
    static final int OpArgR = 2;
    static final int OpArgU = 1;
    static final int iABC = 0;
    static final int iABx = 1;
    static final int iAsBx = 2;

    public static int CREATE_ABC(int i10, int i11, int i12, int i13) {
        return (i10 & 63) | ((i11 << 6) & Lua.MASK_A) | ((i12 << 23) & Lua.MASK_B) | ((i13 << 14) & Lua.MASK_C);
    }

    public static int CREATE_ABx(int i10, int i11, int i12) {
        return (i10 & 63) | ((i11 << 6) & Lua.MASK_A) | ((i12 << 14) & Lua.MASK_Bx);
    }

    public static void SETARG_A(InstructionPtr instructionPtr, int i10) {
        instructionPtr.set(((i10 << 6) & Lua.MASK_A) | (instructionPtr.get() & Lua.MASK_NOT_A));
    }

    public static void SETARG_B(InstructionPtr instructionPtr, int i10) {
        instructionPtr.set(((i10 << 23) & Lua.MASK_B) | (instructionPtr.get() & 8388607));
    }

    public static void SETARG_Bx(InstructionPtr instructionPtr, int i10) {
        instructionPtr.set(((i10 << 14) & Lua.MASK_Bx) | (instructionPtr.get() & 16383));
    }

    public static void SETARG_C(InstructionPtr instructionPtr, int i10) {
        instructionPtr.set(((i10 << 14) & Lua.MASK_C) | (instructionPtr.get() & Lua.MASK_NOT_C));
    }

    public static void SETARG_sBx(InstructionPtr instructionPtr, int i10) {
        SETARG_Bx(instructionPtr, i10 + Lua.MAXARG_sBx);
    }

    public static void SET_OPCODE(InstructionPtr instructionPtr, int i10) {
        instructionPtr.set((i10 & 63) | (instructionPtr.get() & (-64)));
    }

    public static void _assert(boolean z10) {
        if (!z10) {
            throw new LuaError("compiler assert failed");
        }
    }

    public static LexState.Labeldesc[] grow(LexState.Labeldesc[] labeldescArr, int i10) {
        return labeldescArr == null ? new LexState.Labeldesc[2] : labeldescArr.length < i10 ? realloc(labeldescArr, labeldescArr.length * 2) : labeldescArr;
    }

    public static byte[] realloc(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        if (bArr != null) {
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i10));
        }
        return bArr2;
    }

    public static void SETARG_A(int[] iArr, int i10, int i11) {
        iArr[i10] = ((i11 << 6) & Lua.MASK_A) | (iArr[i10] & Lua.MASK_NOT_A);
    }

    public static char[] realloc(char[] cArr, int i10) {
        char[] cArr2 = new char[i10];
        if (cArr != null) {
            System.arraycopy(cArr, 0, cArr2, 0, Math.min(cArr.length, i10));
        }
        return cArr2;
    }

    public static int[] realloc(int[] iArr, int i10) {
        int[] iArr2 = new int[i10];
        if (iArr != null) {
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, i10));
        }
        return iArr2;
    }

    public static LocVars[] realloc(LocVars[] locVarsArr, int i10) {
        LocVars[] locVarsArr2 = new LocVars[i10];
        if (locVarsArr != null) {
            System.arraycopy(locVarsArr, 0, locVarsArr2, 0, Math.min(locVarsArr.length, i10));
        }
        return locVarsArr2;
    }

    public static LuaString[] realloc(LuaString[] luaStringArr, int i10) {
        LuaString[] luaStringArr2 = new LuaString[i10];
        if (luaStringArr != null) {
            System.arraycopy(luaStringArr, 0, luaStringArr2, 0, Math.min(luaStringArr.length, i10));
        }
        return luaStringArr2;
    }

    public static LuaValue[] realloc(LuaValue[] luaValueArr, int i10) {
        LuaValue[] luaValueArr2 = new LuaValue[i10];
        if (luaValueArr != null) {
            System.arraycopy(luaValueArr, 0, luaValueArr2, 0, Math.min(luaValueArr.length, i10));
        }
        return luaValueArr2;
    }

    public static Prototype[] realloc(Prototype[] prototypeArr, int i10) {
        Prototype[] prototypeArr2 = new Prototype[i10];
        if (prototypeArr != null) {
            System.arraycopy(prototypeArr, 0, prototypeArr2, 0, Math.min(prototypeArr.length, i10));
        }
        return prototypeArr2;
    }

    public static Upvaldesc[] realloc(Upvaldesc[] upvaldescArr, int i10) {
        Upvaldesc[] upvaldescArr2 = new Upvaldesc[i10];
        if (upvaldescArr != null) {
            System.arraycopy(upvaldescArr, 0, upvaldescArr2, 0, Math.min(upvaldescArr.length, i10));
        }
        return upvaldescArr2;
    }

    public static LexState.Labeldesc[] realloc(LexState.Labeldesc[] labeldescArr, int i10) {
        LexState.Labeldesc[] labeldescArr2 = new LexState.Labeldesc[i10];
        if (labeldescArr != null) {
            System.arraycopy(labeldescArr, 0, labeldescArr2, 0, Math.min(labeldescArr.length, i10));
        }
        return labeldescArr2;
    }

    public static LexState.Vardesc[] realloc(LexState.Vardesc[] vardescArr, int i10) {
        LexState.Vardesc[] vardescArr2 = new LexState.Vardesc[i10];
        if (vardescArr != null) {
            System.arraycopy(vardescArr, 0, vardescArr2, 0, Math.min(vardescArr.length, i10));
        }
        return vardescArr2;
    }
}
