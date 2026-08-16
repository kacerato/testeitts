package org.luaj.vm2.luajc;

import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Hashtable;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.Print;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.Upvaldesc;

public class ProtoInfo {
    public final BasicBlock[] blocklist;
    public final BasicBlock[] blocks;
    public final String name;
    public final UpvalInfo[][] openups;
    public final VarInfo[] params;
    public final Prototype prototype;
    public final ProtoInfo[] subprotos;
    public final UpvalInfo[] upvals;
    public final VarInfo[][] vars;

    public ProtoInfo(Prototype prototype, String str) {
        this(prototype, str, null);
    }

    private void appendOpenUps(StringBuffer stringBuffer, int i10) {
        for (int i11 = 0; i11 < this.prototype.maxstacksize; i11++) {
            VarInfo varInfo = i10 < 0 ? this.params[i11] : this.vars[i11][i10];
            if (varInfo != null && varInfo.f102807pc == i10 && varInfo.allocupvalue) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("    open: ");
                stringBuffer2.append((Object) varInfo.upvalue);
                stringBuffer2.append("\n");
                stringBuffer.append(stringBuffer2.toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
    
        if (r7 != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        r7 = r7.tojstring();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0055, code lost:
    
        if (r7 != null) goto L13;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0032. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String[] findInnerprotoNames() {
        String str;
        LuaString luaString;
        Prototype[] prototypeArr = this.prototype.f102765p;
        if (prototypeArr.length <= 0) {
            return null;
        }
        String[] strArr = new String[prototypeArr.length];
        Hashtable hashtable = new Hashtable();
        int[] iArr = this.prototype.code;
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (Lua.GET_OPCODE(iArr[i10]) == 37) {
                int GETARG_Bx = Lua.GETARG_Bx(iArr[i10]);
                int i11 = i10 + 1;
                int i12 = iArr[i11];
                int i13 = 1;
                switch (Lua.GET_OPCODE(i12)) {
                    case 8:
                    case 10:
                        int GETARG_B = Lua.GETARG_B(i12);
                        if (Lua.ISK(GETARG_B)) {
                            str = this.prototype.f102764k[GETARG_B & 255].tojstring();
                            break;
                        }
                        str = null;
                        break;
                    case 9:
                        luaString = this.prototype.upvalues[Lua.GETARG_B(i12)].name;
                        break;
                    default:
                        luaString = this.prototype.getlocalname(Lua.GETARG_A(iArr[i10]) + 1, i11);
                        break;
                }
                String javaClassPart = str != null ? toJavaClassPart(str) : String.valueOf(GETARG_Bx);
                if (hashtable.containsKey(javaClassPart)) {
                    while (true) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(javaClassPart);
                        stringBuffer.append('$');
                        int i14 = i13 + 1;
                        stringBuffer.append(i13);
                        String stringBuffer2 = stringBuffer.toString();
                        if (hashtable.containsKey(stringBuffer2)) {
                            i13 = i14;
                        } else {
                            javaClassPart = stringBuffer2;
                        }
                    }
                }
                hashtable.put(javaClassPart, Boolean.TRUE);
                strArr[GETARG_Bx] = javaClassPart;
            }
        }
        return strArr;
    }

    private UpvalInfo findOpenUp(int i10, int i11) {
        UpvalInfo[][] upvalInfoArr = this.openups;
        if (upvalInfoArr[i11] == null) {
            upvalInfoArr[i11] = new UpvalInfo[this.prototype.code.length];
        }
        UpvalInfo upvalInfo = upvalInfoArr[i11][i10];
        if (upvalInfo != null) {
            return upvalInfo;
        }
        UpvalInfo upvalInfo2 = new UpvalInfo(this, i10, i11);
        int length = this.prototype.code.length;
        for (int i12 = 0; i12 < length; i12++) {
            VarInfo varInfo = this.vars[i11][i12];
            if (varInfo != null && varInfo.upvalue == upvalInfo2) {
                this.openups[i11][i12] = upvalInfo2;
            }
        }
        return upvalInfo2;
    }

    private void findUpvalues() {
        int[] iArr = this.prototype.code;
        int length = iArr.length;
        String[] findInnerprotoNames = findInnerprotoNames();
        for (int i10 = 0; i10 < length; i10++) {
            if (Lua.GET_OPCODE(iArr[i10]) == 37) {
                int GETARG_Bx = Lua.GETARG_Bx(iArr[i10]);
                Prototype prototype = this.prototype.f102765p[GETARG_Bx];
                UpvalInfo[] upvalInfoArr = new UpvalInfo[prototype.upvalues.length];
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(this.name);
                stringBuffer.append("$");
                stringBuffer.append(findInnerprotoNames[GETARG_Bx]);
                String stringBuffer2 = stringBuffer.toString();
                int i11 = 0;
                while (true) {
                    Upvaldesc[] upvaldescArr = prototype.upvalues;
                    if (i11 >= upvaldescArr.length) {
                        break;
                    }
                    Upvaldesc upvaldesc = upvaldescArr[i11];
                    upvalInfoArr[i11] = upvaldesc.instack ? findOpenUp(i10, upvaldesc.idx) : this.upvals[upvaldesc.idx];
                    i11++;
                }
                this.subprotos[GETARG_Bx] = new ProtoInfo(prototype, stringBuffer2, upvalInfoArr);
            }
        }
        for (int i12 = 0; i12 < length; i12++) {
            if (Lua.GET_OPCODE(iArr[i12]) == 9) {
                this.upvals[Lua.GETARG_B(iArr[i12])].rw = true;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x007b. Please report as an issue. */
    private VarInfo[][] findVariables() {
        VarInfo varInfo;
        VarInfo varInfo2;
        Prototype prototype = this.prototype;
        int length = prototype.code.length;
        int i10 = prototype.maxstacksize;
        VarInfo[][] varInfoArr = new VarInfo[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            varInfoArr[i11] = new VarInfo[length];
        }
        int i12 = 0;
        while (true) {
            BasicBlock[] basicBlockArr = this.blocklist;
            if (i12 >= basicBlockArr.length) {
                return varInfoArr;
            }
            BasicBlock basicBlock = basicBlockArr[i12];
            BasicBlock[] basicBlockArr2 = basicBlock.prev;
            int length2 = basicBlockArr2 != null ? basicBlockArr2.length : 0;
            for (int i13 = 0; i13 < i10; i13++) {
                if (length2 == 0) {
                    varInfo2 = this.params[i13];
                } else if (length2 == 1) {
                    varInfo2 = varInfoArr[i13][basicBlock.prev[0].pc1];
                } else {
                    varInfo2 = null;
                    for (int i14 = 0; i14 < length2; i14++) {
                        VarInfo varInfo3 = varInfoArr[i13][basicBlock.prev[i14].pc1];
                        VarInfo varInfo4 = VarInfo.INVALID;
                        if (varInfo3 == varInfo4) {
                            varInfo2 = varInfo4;
                        }
                    }
                }
                if (varInfo2 == null) {
                    varInfo2 = VarInfo.PHI(this, i13, basicBlock.pc0);
                }
                varInfoArr[i13][basicBlock.pc0] = varInfo2;
            }
            for (int i15 = basicBlock.pc0; i15 <= basicBlock.pc1; i15++) {
                if (i15 > basicBlock.pc0) {
                    propogateVars(varInfoArr, i15 - 1, i15);
                }
                int i16 = this.prototype.code[i15];
                switch (Lua.GET_OPCODE(i16)) {
                    case 0:
                    case 19:
                    case 20:
                    case 21:
                    case 28:
                        int GETARG_A = Lua.GETARG_A(i16);
                        varInfoArr[Lua.GETARG_B(i16)][i15].isreferenced = true;
                        varInfoArr[GETARG_A][i15] = new VarInfo(GETARG_A, i15);
                    case 1:
                    case 3:
                    case 5:
                    case 11:
                        int GETARG_A2 = Lua.GETARG_A(i16);
                        varInfoArr[GETARG_A2][i15] = new VarInfo(GETARG_A2, i15);
                    case 2:
                    default:
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("unhandled opcode: ");
                        stringBuffer.append(i16);
                        throw new IllegalStateException(stringBuffer.toString());
                    case 4:
                        int GETARG_A3 = Lua.GETARG_A(i16);
                        int GETARG_B = Lua.GETARG_B(i16);
                        while (true) {
                            int i17 = GETARG_B - 1;
                            if (GETARG_B >= 0) {
                                varInfoArr[GETARG_A3][i15] = new VarInfo(GETARG_A3, i15);
                                GETARG_A3++;
                                GETARG_B = i17;
                            }
                        }
                        break;
                    case 6:
                        int GETARG_A4 = Lua.GETARG_A(i16);
                        int GETARG_C = Lua.GETARG_C(i16);
                        if (!Lua.ISK(GETARG_C)) {
                            varInfoArr[GETARG_C][i15].isreferenced = true;
                        }
                        varInfoArr[GETARG_A4][i15] = new VarInfo(GETARG_A4, i15);
                    case 7:
                        int GETARG_A5 = Lua.GETARG_A(i16);
                        int GETARG_B2 = Lua.GETARG_B(i16);
                        int GETARG_C2 = Lua.GETARG_C(i16);
                        varInfoArr[GETARG_B2][i15].isreferenced = true;
                        if (!Lua.ISK(GETARG_C2)) {
                            varInfoArr[GETARG_C2][i15].isreferenced = true;
                        }
                        varInfoArr[GETARG_A5][i15] = new VarInfo(GETARG_A5, i15);
                    case 8:
                        int GETARG_B3 = Lua.GETARG_B(i16);
                        int GETARG_C3 = Lua.GETARG_C(i16);
                        if (!Lua.ISK(GETARG_B3)) {
                            varInfoArr[GETARG_B3][i15].isreferenced = true;
                        }
                        if (!Lua.ISK(GETARG_C3)) {
                            varInfo = varInfoArr[GETARG_C3][i15];
                            varInfo.isreferenced = true;
                        }
                    case 9:
                    case 27:
                        varInfo = varInfoArr[Lua.GETARG_A(i16)][i15];
                        varInfo.isreferenced = true;
                    case 10:
                        int GETARG_A6 = Lua.GETARG_A(i16);
                        int GETARG_B4 = Lua.GETARG_B(i16);
                        int GETARG_C4 = Lua.GETARG_C(i16);
                        varInfoArr[GETARG_A6][i15].isreferenced = true;
                        if (!Lua.ISK(GETARG_B4)) {
                            varInfoArr[GETARG_B4][i15].isreferenced = true;
                        }
                        if (!Lua.ISK(GETARG_C4)) {
                            varInfo = varInfoArr[GETARG_C4][i15];
                            varInfo.isreferenced = true;
                        }
                    case 12:
                        int GETARG_A7 = Lua.GETARG_A(i16);
                        int GETARG_B5 = Lua.GETARG_B(i16);
                        int GETARG_C5 = Lua.GETARG_C(i16);
                        varInfoArr[GETARG_B5][i15].isreferenced = true;
                        if (!Lua.ISK(GETARG_C5)) {
                            varInfoArr[GETARG_C5][i15].isreferenced = true;
                        }
                        varInfoArr[GETARG_A7][i15] = new VarInfo(GETARG_A7, i15);
                        int i18 = GETARG_A7 + 1;
                        varInfoArr[i18][i15] = new VarInfo(i18, i15);
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        int GETARG_A8 = Lua.GETARG_A(i16);
                        int GETARG_B6 = Lua.GETARG_B(i16);
                        int GETARG_C6 = Lua.GETARG_C(i16);
                        if (!Lua.ISK(GETARG_B6)) {
                            varInfoArr[GETARG_B6][i15].isreferenced = true;
                        }
                        if (!Lua.ISK(GETARG_C6)) {
                            varInfoArr[GETARG_C6][i15].isreferenced = true;
                        }
                        varInfoArr[GETARG_A8][i15] = new VarInfo(GETARG_A8, i15);
                    case 22:
                        int GETARG_A9 = Lua.GETARG_A(i16);
                        int GETARG_C7 = Lua.GETARG_C(i16);
                        for (int GETARG_B7 = Lua.GETARG_B(i16); GETARG_B7 <= GETARG_C7; GETARG_B7++) {
                            varInfoArr[GETARG_B7][i15].isreferenced = true;
                        }
                        varInfoArr[GETARG_A9][i15] = new VarInfo(GETARG_A9, i15);
                    case 23:
                        if (Lua.GETARG_A(i16) > 0) {
                            for (int i19 = r6 - 1; i19 < i10; i19++) {
                                varInfoArr[i19][i15] = VarInfo.INVALID;
                            }
                        }
                    case 24:
                    case 25:
                    case 26:
                        int GETARG_B8 = Lua.GETARG_B(i16);
                        int GETARG_C8 = Lua.GETARG_C(i16);
                        if (!Lua.ISK(GETARG_B8)) {
                            varInfoArr[GETARG_B8][i15].isreferenced = true;
                        }
                        if (!Lua.ISK(GETARG_C8)) {
                            varInfo = varInfoArr[GETARG_C8][i15];
                            varInfo.isreferenced = true;
                        }
                    case 29:
                        int GETARG_A10 = Lua.GETARG_A(i16);
                        int GETARG_B9 = Lua.GETARG_B(i16);
                        int GETARG_C9 = Lua.GETARG_C(i16);
                        VarInfo varInfo5 = varInfoArr[GETARG_A10][i15];
                        varInfo5.isreferenced = true;
                        varInfo5.isreferenced = true;
                        for (int i20 = 1; i20 <= GETARG_B9 - 1; i20++) {
                            varInfoArr[GETARG_A10 + i20][i15].isreferenced = true;
                        }
                        int i21 = 0;
                        while (i21 <= GETARG_C9 - 2) {
                            varInfoArr[GETARG_A10][i15] = new VarInfo(GETARG_A10, i15);
                            i21++;
                            GETARG_A10++;
                        }
                        while (GETARG_A10 < i10) {
                            varInfoArr[GETARG_A10][i15] = VarInfo.INVALID;
                            GETARG_A10++;
                        }
                    case 30:
                        int GETARG_A11 = Lua.GETARG_A(i16);
                        int GETARG_B10 = Lua.GETARG_B(i16);
                        varInfoArr[GETARG_A11][i15].isreferenced = true;
                        for (int i22 = 1; i22 <= GETARG_B10 - 1; i22++) {
                            varInfoArr[GETARG_A11 + i22][i15].isreferenced = true;
                        }
                    case 31:
                        int GETARG_A12 = Lua.GETARG_A(i16);
                        int GETARG_B11 = Lua.GETARG_B(i16);
                        for (int i23 = 0; i23 <= GETARG_B11 - 2; i23++) {
                            varInfoArr[GETARG_A12 + i23][i15].isreferenced = true;
                        }
                    case 32:
                        int GETARG_A13 = Lua.GETARG_A(i16);
                        VarInfo[] varInfoArr2 = varInfoArr[GETARG_A13];
                        varInfoArr2[i15].isreferenced = true;
                        varInfoArr[GETARG_A13 + 2][i15].isreferenced = true;
                        varInfoArr2[i15] = new VarInfo(GETARG_A13, i15);
                        varInfoArr[GETARG_A13][i15].isreferenced = true;
                        varInfoArr[GETARG_A13 + 1][i15].isreferenced = true;
                        int i24 = GETARG_A13 + 3;
                        varInfoArr[i24][i15] = new VarInfo(i24, i15);
                    case 33:
                        int GETARG_A14 = Lua.GETARG_A(i16);
                        varInfoArr[GETARG_A14 + 2][i15].isreferenced = true;
                        varInfoArr[GETARG_A14][i15] = new VarInfo(GETARG_A14, i15);
                    case 34:
                        int GETARG_A15 = Lua.GETARG_A(i16);
                        int GETARG_C10 = Lua.GETARG_C(i16);
                        varInfoArr[GETARG_A15][i15].isreferenced = true;
                        int i25 = GETARG_A15 + 2;
                        varInfoArr[GETARG_A15 + 1][i15].isreferenced = true;
                        int i26 = GETARG_A15 + 3;
                        varInfoArr[i25][i15].isreferenced = true;
                        int i27 = 0;
                        while (i27 < GETARG_C10) {
                            varInfoArr[i26][i15] = new VarInfo(i26, i15);
                            i27++;
                            i26++;
                        }
                        while (i26 < i10) {
                            varInfoArr[i26][i15] = VarInfo.INVALID;
                            i26++;
                        }
                    case 35:
                        int GETARG_A16 = Lua.GETARG_A(i16);
                        varInfoArr[GETARG_A16 + 1][i15].isreferenced = true;
                        varInfoArr[GETARG_A16][i15] = new VarInfo(GETARG_A16, i15);
                    case 36:
                        int GETARG_A17 = Lua.GETARG_A(i16);
                        int GETARG_B12 = Lua.GETARG_B(i16);
                        varInfoArr[GETARG_A17][i15].isreferenced = true;
                        for (int i28 = 1; i28 <= GETARG_B12; i28++) {
                            varInfoArr[GETARG_A17 + i28][i15].isreferenced = true;
                        }
                    case 37:
                        int GETARG_A18 = Lua.GETARG_A(i16);
                        for (Upvaldesc upvaldesc : this.prototype.f102765p[Lua.GETARG_Bx(i16)].upvalues) {
                            if (upvaldesc.instack) {
                                varInfoArr[upvaldesc.idx][i15].isreferenced = true;
                            }
                        }
                        varInfoArr[GETARG_A18][i15] = new VarInfo(GETARG_A18, i15);
                    case 38:
                        int GETARG_A19 = Lua.GETARG_A(i16);
                        int GETARG_B13 = Lua.GETARG_B(i16);
                        int i29 = 1;
                        while (i29 < GETARG_B13) {
                            varInfoArr[GETARG_A19][i15] = new VarInfo(GETARG_A19, i15);
                            i29++;
                            GETARG_A19++;
                        }
                        if (GETARG_B13 == 0) {
                            while (GETARG_A19 < i10) {
                                varInfoArr[GETARG_A19][i15] = VarInfo.INVALID;
                                GETARG_A19++;
                            }
                        }
                }
            }
            i12++;
        }
    }

    private static void propogateVars(VarInfo[][] varInfoArr, int i10, int i11) {
        for (VarInfo[] varInfoArr2 : varInfoArr) {
            varInfoArr2[i11] = varInfoArr2[i10];
        }
    }

    private void replaceAll(VarInfo[] varInfoArr, int i10, VarInfo varInfo, VarInfo varInfo2) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (varInfoArr[i11] == varInfo) {
                varInfoArr[i11] = varInfo2;
            }
        }
    }

    private void replaceTrivialPhiVariables() {
        int i10 = 0;
        while (true) {
            BasicBlock[] basicBlockArr = this.blocklist;
            if (i10 >= basicBlockArr.length) {
                return;
            }
            BasicBlock basicBlock = basicBlockArr[i10];
            for (int i11 = 0; i11 < this.prototype.maxstacksize; i11++) {
                VarInfo varInfo = this.vars[i11][basicBlock.pc0];
                VarInfo resolvePhiVariableValues = varInfo.resolvePhiVariableValues();
                if (resolvePhiVariableValues != null) {
                    substituteVariable(i11, varInfo, resolvePhiVariableValues);
                }
            }
            i10++;
        }
    }

    private void substituteVariable(int i10, VarInfo varInfo, VarInfo varInfo2) {
        int length = this.prototype.code.length;
        for (int i11 = 0; i11 < length; i11++) {
            VarInfo[] varInfoArr = this.vars[i10];
            replaceAll(varInfoArr, varInfoArr.length, varInfo, varInfo2);
        }
    }

    private static String toJavaClassPart(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(Character.isJavaIdentifierPart(str.charAt(i10)) ? str.charAt(i10) : '_');
        }
        return stringBuffer.toString();
    }

    public boolean isInitialValueUsed(int i10) {
        return this.params[i10].isreferenced;
    }

    public boolean isReadWriteUpvalue(UpvalInfo upvalInfo) {
        return upvalInfo.rw;
    }

    public boolean isUpvalueAssign(int i10, int i11) {
        UpvalInfo upvalInfo;
        VarInfo varInfo = i10 < 0 ? this.params[i11] : this.vars[i11][i10];
        return (varInfo == null || (upvalInfo = varInfo.upvalue) == null || !upvalInfo.rw) ? false : true;
    }

    public boolean isUpvalueCreate(int i10, int i11) {
        UpvalInfo upvalInfo;
        VarInfo varInfo = i10 < 0 ? this.params[i11] : this.vars[i11][i10];
        return varInfo != null && (upvalInfo = varInfo.upvalue) != null && upvalInfo.rw && varInfo.allocupvalue && i10 == varInfo.f102807pc;
    }

    public boolean isUpvalueRefer(int i10, int i11) {
        UpvalInfo upvalInfo;
        VarInfo[] varInfoArr;
        VarInfo varInfo;
        if (i10 > 0 && (varInfo = (varInfoArr = this.vars[i11])[i10]) != null && varInfo.f102807pc == i10 && varInfoArr[i10 - 1] != null) {
            i10--;
        }
        VarInfo varInfo2 = i10 < 0 ? this.params[i11] : this.vars[i11][i10];
        return (varInfo2 == null || (upvalInfo = varInfo2.upvalue) == null || !upvalInfo.rw) ? false : true;
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("proto '");
        stringBuffer2.append(this.name);
        stringBuffer2.append("'\n");
        stringBuffer.append(stringBuffer2.toString());
        UpvalInfo[] upvalInfoArr = this.upvals;
        int length = upvalInfoArr != null ? upvalInfoArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(" up[");
            stringBuffer3.append(i10);
            stringBuffer3.append("]: ");
            stringBuffer3.append((Object) this.upvals[i10]);
            stringBuffer3.append("\n");
            stringBuffer.append(stringBuffer3.toString());
        }
        int i11 = 0;
        while (true) {
            BasicBlock[] basicBlockArr = this.blocklist;
            if (i11 >= basicBlockArr.length) {
                break;
            }
            BasicBlock basicBlock = basicBlockArr[i11];
            int i12 = basicBlock.pc0;
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("  block ");
            stringBuffer4.append(basicBlock.toString());
            stringBuffer.append(stringBuffer4.toString());
            appendOpenUps(stringBuffer, -1);
            while (i12 <= basicBlock.pc1) {
                appendOpenUps(stringBuffer, i12);
                stringBuffer.append("     ");
                for (int i13 = 0; i13 < this.prototype.maxstacksize; i13++) {
                    VarInfo varInfo = this.vars[i13][i12];
                    if (varInfo == null) {
                        str = "";
                    } else {
                        UpvalInfo upvalInfo = varInfo.upvalue;
                        str = upvalInfo != null ? !upvalInfo.rw ? "[C] " : (varInfo.allocupvalue && varInfo.f102807pc == i12) ? "[*] " : "[]  " : C13155a.f85806a;
                    }
                    String valueOf = varInfo == null ? "null   " : String.valueOf(varInfo);
                    StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append(valueOf);
                    stringBuffer5.append(str);
                    stringBuffer.append(stringBuffer5.toString());
                }
                stringBuffer.append(GlideException.a.f59088e);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = Print.ps;
                Print.ps = new PrintStream(byteArrayOutputStream);
                try {
                    Print.printOpCode(this.prototype, i12);
                    Print.ps.close();
                    Print.ps = printStream;
                    stringBuffer.append(byteArrayOutputStream.toString());
                    stringBuffer.append("\n");
                    i12++;
                } catch (Throwable th2) {
                    Print.ps.close();
                    Print.ps = printStream;
                    throw th2;
                }
            }
            i11++;
        }
        ProtoInfo[] protoInfoArr = this.subprotos;
        int length2 = protoInfoArr != null ? protoInfoArr.length : 0;
        for (int i14 = 0; i14 < length2; i14++) {
            stringBuffer.append(this.subprotos[i14].toString());
        }
        return stringBuffer.toString();
    }

    private ProtoInfo(Prototype prototype, String str, UpvalInfo[] upvalInfoArr) {
        this.name = str;
        this.prototype = prototype;
        this.upvals = upvalInfoArr == null ? new UpvalInfo[]{new UpvalInfo(this)} : upvalInfoArr;
        Prototype[] prototypeArr = prototype.f102765p;
        this.subprotos = (prototypeArr == null || prototypeArr.length <= 0) ? null : new ProtoInfo[prototypeArr.length];
        BasicBlock[] findBasicBlocks = BasicBlock.findBasicBlocks(prototype);
        this.blocks = findBasicBlocks;
        this.blocklist = BasicBlock.findLiveBlocks(findBasicBlocks);
        this.params = new VarInfo[prototype.maxstacksize];
        for (int i10 = 0; i10 < prototype.maxstacksize; i10++) {
            this.params[i10] = VarInfo.PARAM(i10);
        }
        this.vars = findVariables();
        replaceTrivialPhiVariables();
        this.openups = new UpvalInfo[prototype.maxstacksize];
        findUpvalues();
    }
}
