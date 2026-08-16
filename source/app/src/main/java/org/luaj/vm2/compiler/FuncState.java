package org.luaj.vm2.compiler;

import java.util.Hashtable;
import org.luaj.vm2.LocVars;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaDouble;
import org.luaj.vm2.LuaInteger;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.Upvaldesc;
import org.luaj.vm2.compiler.LexState;
import org.luaj.vm2.compiler.LuaC;

public class FuncState extends Constants {

    LuaC.CompileState f102773L;

    BlockCnt f102774bl;

    Prototype f102775f;
    int firstlocal;
    short freereg;

    Hashtable f102776h;
    IntPtr jpc;
    int lasttarget;
    LexState ls;
    short nactvar;

    int f102777nk;
    short nlocvars;
    int np;
    short nups;

    int f102778pc;
    FuncState prev;

    public static class BlockCnt {
        short firstgoto;
        short firstlabel;
        boolean isloop;
        short nactvar;
        BlockCnt previous;
        boolean upval;
    }

    public static int singlevaraux(FuncState funcState, LuaString luaString, LexState.expdesc expdescVar, int i10) {
        if (funcState == null) {
            return 0;
        }
        int searchvar = funcState.searchvar(luaString);
        if (searchvar >= 0) {
            expdescVar.init(7, searchvar);
            if (i10 == 0) {
                funcState.markupval(searchvar);
            }
            return 7;
        }
        int searchupvalue = funcState.searchupvalue(luaString);
        if (searchupvalue < 0) {
            if (singlevaraux(funcState.prev, luaString, expdescVar, 0) == 0) {
                return 0;
            }
            searchupvalue = funcState.newupvalue(luaString, expdescVar);
        }
        expdescVar.init(8, searchupvalue);
        return 8;
    }

    public static boolean vkisinreg(int i10) {
        return i10 == 6 || i10 == 7;
    }

    public int addk(LuaValue luaValue) {
        Hashtable hashtable = this.f102776h;
        if (hashtable == null) {
            this.f102776h = new Hashtable();
        } else if (hashtable.containsKey(luaValue)) {
            return ((Integer) this.f102776h.get(luaValue)).intValue();
        }
        int i10 = this.f102777nk;
        this.f102776h.put(luaValue, new Integer(i10));
        Prototype prototype = this.f102775f;
        LuaValue[] luaValueArr = prototype.f102764k;
        if (luaValueArr == null || this.f102777nk + 1 >= luaValueArr.length) {
            prototype.f102764k = Constants.realloc(luaValueArr, (this.f102777nk * 2) + 1);
        }
        LuaValue[] luaValueArr2 = prototype.f102764k;
        int i11 = this.f102777nk;
        this.f102777nk = i11 + 1;
        luaValueArr2[i11] = luaValue;
        return i10;
    }

    public int boolK(boolean z10) {
        return addk(z10 ? LuaValue.TRUE : LuaValue.FALSE);
    }

    public void checklimit(int i10, int i11, String str) {
        if (i10 > i11) {
            errorlimit(i11, str);
        }
    }

    public void checkrepeated(LexState.Labeldesc[] labeldescArr, int i10, LuaString luaString) {
        for (int i11 = this.f102774bl.firstlabel; i11 < i10; i11++) {
            if (luaString.eq_b(labeldescArr[i11].name)) {
                LuaC.CompileState compileState = this.ls.f102780L;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("label '");
                stringBuffer.append((Object) luaString);
                stringBuffer.append(" already defined on line ");
                stringBuffer.append(labeldescArr[i11].line);
                this.ls.semerror(compileState.pushfstring(stringBuffer.toString()));
            }
        }
    }

    public void checkstack(int i10) {
        int i11 = this.freereg + i10;
        if (i11 > this.f102775f.maxstacksize) {
            if (i11 >= 250) {
                this.ls.syntaxerror("function or expression too complex");
            }
            this.f102775f.maxstacksize = i11;
        }
    }

    public void closelistfield(LexState.ConsControl consControl) {
        LexState.expdesc expdescVar = consControl.f102786v;
        if (expdescVar.f102791k == 0) {
            return;
        }
        exp2nextreg(expdescVar);
        consControl.f102786v.f102791k = 0;
        int i10 = consControl.tostore;
        if (i10 == 50) {
            setlist(consControl.f102785t.f102793u.info, consControl.f102783na, i10);
            consControl.tostore = 0;
        }
    }

    public int code(int i10, int i11) {
        Prototype prototype = this.f102775f;
        dischargejpc();
        int[] iArr = prototype.code;
        if (iArr == null || this.f102778pc + 1 > iArr.length) {
            prototype.code = Constants.realloc(iArr, (this.f102778pc * 2) + 1);
        }
        int[] iArr2 = prototype.code;
        int i12 = this.f102778pc;
        iArr2[i12] = i10;
        int[] iArr3 = prototype.lineinfo;
        if (iArr3 == null || i12 + 1 > iArr3.length) {
            prototype.lineinfo = Constants.realloc(iArr3, (i12 * 2) + 1);
        }
        int[] iArr4 = prototype.lineinfo;
        int i13 = this.f102778pc;
        iArr4[i13] = i11;
        this.f102778pc = i13 + 1;
        return i13;
    }

    public int codeABC(int i10, int i11, int i12, int i13) {
        Constants._assert(Lua.getOpMode(i10) == 0);
        Constants._assert(Lua.getBMode(i10) != 0 || i12 == 0);
        Constants._assert(Lua.getCMode(i10) != 0 || i13 == 0);
        return code(Constants.CREATE_ABC(i10, i11, i12, i13), this.ls.lastline);
    }

    public int codeABx(int i10, int i11, int i12) {
        boolean z10 = false;
        Constants._assert(Lua.getOpMode(i10) == 1 || Lua.getOpMode(i10) == 2);
        Constants._assert(Lua.getCMode(i10) == 0);
        if (i12 >= 0 && i12 <= 262143) {
            z10 = true;
        }
        Constants._assert(z10);
        return code(Constants.CREATE_ABx(i10, i11, i12), this.ls.lastline);
    }

    public int codeAsBx(int i10, int i11, int i12) {
        return codeABx(i10, i11, i12 + Lua.MAXARG_sBx);
    }

    public int code_label(int i10, int i11, int i12) {
        getlabel();
        return codeABC(3, i10, i11, i12);
    }

    public void codearith(int i10, LexState.expdesc expdescVar, LexState.expdesc expdescVar2, int i11) {
        if (constfolding(i10, expdescVar, expdescVar2)) {
            return;
        }
        int exp2RK = (i10 == 19 || i10 == 21) ? 0 : exp2RK(expdescVar2);
        int exp2RK2 = exp2RK(expdescVar);
        if (exp2RK2 > exp2RK) {
            freeexp(expdescVar);
            freeexp(expdescVar2);
        } else {
            freeexp(expdescVar2);
            freeexp(expdescVar);
        }
        expdescVar.f102793u.info = codeABC(i10, 0, exp2RK2, exp2RK);
        expdescVar.f102791k = 11;
        fixline(i11);
    }

    public void codecomp(int i10, int i11, LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        int exp2RK = exp2RK(expdescVar);
        int exp2RK2 = exp2RK(expdescVar2);
        freeexp(expdescVar2);
        freeexp(expdescVar);
        if (i11 == 0 && i10 != 24) {
            i11 = 1;
            exp2RK2 = exp2RK;
            exp2RK = exp2RK2;
        }
        expdescVar.f102793u.info = condjump(i10, i11, exp2RK, exp2RK2);
        expdescVar.f102791k = 10;
    }

    public void codenot(LexState.expdesc expdescVar) {
        int i10;
        dischargevars(expdescVar);
        int i11 = expdescVar.f102791k;
        if (i11 != 10) {
            if (i11 != 11) {
                switch (i11) {
                    case 1:
                    case 3:
                        i10 = 2;
                        expdescVar.f102791k = i10;
                        break;
                    case 2:
                    case 4:
                    case 5:
                        i10 = 3;
                        expdescVar.f102791k = i10;
                        break;
                    case 6:
                        break;
                    default:
                        Constants._assert(false);
                        break;
                }
            }
            discharge2anyreg(expdescVar);
            freeexp(expdescVar);
            LexState.expdesc.U u10 = expdescVar.f102793u;
            u10.info = codeABC(20, 0, u10.info, 0);
            expdescVar.f102791k = 11;
        } else {
            invertjump(expdescVar);
        }
        IntPtr intPtr = expdescVar.f102790f;
        int i12 = intPtr.f102779i;
        IntPtr intPtr2 = expdescVar.f102792t;
        intPtr.f102779i = intPtr2.f102779i;
        intPtr2.f102779i = i12;
        removevalues(intPtr.f102779i);
        removevalues(expdescVar.f102792t.f102779i);
    }

    public void concat(IntPtr intPtr, int i10) {
        if (i10 == -1) {
            return;
        }
        int i11 = intPtr.f102779i;
        if (i11 == -1) {
            intPtr.f102779i = i10;
            return;
        }
        while (true) {
            int i12 = getjump(i11);
            if (i12 == -1) {
                fixjump(i11, i10);
                return;
            }
            i11 = i12;
        }
    }

    public int condjump(int i10, int i11, int i12, int i13) {
        codeABC(i10, i11, i12, i13);
        return jump();
    }

    public boolean constfolding(int i10, LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        LuaValue add;
        if (!expdescVar.isnumeral() || !expdescVar2.isnumeral()) {
            return false;
        }
        if ((i10 == 16 || i10 == 17) && expdescVar2.f102793u.nval().eq_b(LuaValue.ZERO)) {
            return false;
        }
        LuaValue nval = expdescVar.f102793u.nval();
        LuaValue nval2 = expdescVar2.f102793u.nval();
        switch (i10) {
            case 13:
                add = nval.add(nval2);
                break;
            case 14:
                add = nval.sub(nval2);
                break;
            case 15:
                add = nval.mul(nval2);
                break;
            case 16:
                add = nval.div(nval2);
                break;
            case 17:
                add = nval.mod(nval2);
                break;
            case 18:
                add = nval.pow(nval2);
                break;
            case 19:
                add = nval.neg();
                break;
            case 20:
            default:
                Constants._assert(false);
                add = null;
                break;
            case 21:
                return false;
        }
        if (Double.isNaN(add.todouble())) {
            return false;
        }
        expdescVar.f102793u.setNval(add);
        return true;
    }

    public void discharge2anyreg(LexState.expdesc expdescVar) {
        if (expdescVar.f102791k != 6) {
            reserveregs(1);
            discharge2reg(expdescVar, this.freereg - 1);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000b. Please report as an issue. */
    public void discharge2reg(LexState.expdesc expdescVar, int i10) {
        int i11;
        dischargevars(expdescVar);
        int i12 = expdescVar.f102791k;
        if (i12 != 11) {
            r1 = true;
            boolean z10 = true;
            switch (i12) {
                case 1:
                    nil(i10, 1);
                    break;
                case 2:
                case 3:
                    codeABC(3, i10, i12 != 2 ? 0 : 1, 0);
                    break;
                case 4:
                    i11 = expdescVar.f102793u.info;
                    codeABx(1, i10, i11);
                    break;
                case 5:
                    i11 = numberK(expdescVar.f102793u.nval());
                    codeABx(1, i10, i11);
                    break;
                case 6:
                    int i13 = expdescVar.f102793u.info;
                    if (i10 != i13) {
                        codeABC(0, i10, i13, 0);
                        break;
                    }
                    break;
                default:
                    if (i12 != 0 && i12 != 10) {
                        z10 = false;
                    }
                    Constants._assert(z10);
                    return;
            }
        } else {
            Constants.SETARG_A(getcodePtr(expdescVar), i10);
        }
        expdescVar.f102793u.info = i10;
        expdescVar.f102791k = 6;
    }

    public void dischargejpc() {
        int i10 = this.jpc.f102779i;
        int i11 = this.f102778pc;
        patchlistaux(i10, i11, 255, i11);
        this.jpc.f102779i = -1;
    }

    public void dischargevars(LexState.expdesc expdescVar) {
        LexState.expdesc.U u10;
        int codeABC;
        int i10 = expdescVar.f102791k;
        int i11 = 6;
        if (i10 == 7) {
            expdescVar.f102791k = 6;
            return;
        }
        if (i10 == 8) {
            u10 = expdescVar.f102793u;
            codeABC = codeABC(5, 0, u10.info, 0);
        } else {
            if (i10 != 9) {
                if (i10 == 12 || i10 == 13) {
                    setoneret(expdescVar);
                    return;
                }
                return;
            }
            freereg(expdescVar.f102793u.ind_idx);
            LexState.expdesc.U u11 = expdescVar.f102793u;
            if (u11.ind_vt == 7) {
                freereg(u11.ind_t);
                i11 = 7;
            }
            u10 = expdescVar.f102793u;
            codeABC = codeABC(i11, 0, u10.ind_t, u10.ind_idx);
        }
        u10.info = codeABC;
        expdescVar.f102791k = 11;
    }

    public void enterblock(BlockCnt blockCnt, boolean z10) {
        blockCnt.isloop = z10;
        short s10 = this.nactvar;
        blockCnt.nactvar = s10;
        LexState.Dyndata dyndata = this.ls.dyd;
        blockCnt.firstlabel = (short) dyndata.n_label;
        blockCnt.firstgoto = (short) dyndata.n_gt;
        blockCnt.upval = false;
        blockCnt.previous = this.f102774bl;
        this.f102774bl = blockCnt;
        Constants._assert(this.freereg == s10);
    }

    public void errorlimit(int i10, String str) {
        LuaC.CompileState compileState;
        StringBuffer stringBuffer;
        String str2;
        if (this.f102775f.linedefined == 0) {
            compileState = this.f102773L;
            stringBuffer = new StringBuffer();
            str2 = "main function has more than ";
        } else {
            compileState = this.f102773L;
            stringBuffer = new StringBuffer();
            stringBuffer.append("function at line ");
            stringBuffer.append(this.f102775f.linedefined);
            str2 = " has more than ";
        }
        stringBuffer.append(str2);
        stringBuffer.append(i10);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        this.ls.lexerror(compileState.pushfstring(stringBuffer.toString()), 0);
    }

    public int exp2RK(LexState.expdesc expdescVar) {
        int boolK;
        exp2val(expdescVar);
        int i10 = expdescVar.f102791k;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            if (i10 != 4) {
                if (i10 == 5) {
                    LexState.expdesc.U u10 = expdescVar.f102793u;
                    u10.info = numberK(u10.nval());
                    expdescVar.f102791k = 4;
                }
            }
            int i11 = expdescVar.f102793u.info;
            if (i11 <= 255) {
                return Lua.RKASK(i11);
            }
        } else if (this.f102777nk <= 255) {
            LexState.expdesc.U u11 = expdescVar.f102793u;
            if (i10 == 1) {
                boolK = nilK();
            } else {
                boolK = boolK(i10 == 2);
            }
            u11.info = boolK;
            expdescVar.f102791k = 4;
            return Lua.RKASK(expdescVar.f102793u.info);
        }
        return exp2anyreg(expdescVar);
    }

    public int exp2anyreg(LexState.expdesc expdescVar) {
        dischargevars(expdescVar);
        if (expdescVar.f102791k == 6) {
            if (expdescVar.hasjumps()) {
                int i10 = expdescVar.f102793u.info;
                if (i10 >= this.nactvar) {
                    exp2reg(expdescVar, i10);
                }
            }
            return expdescVar.f102793u.info;
        }
        exp2nextreg(expdescVar);
        return expdescVar.f102793u.info;
    }

    public void exp2anyregup(LexState.expdesc expdescVar) {
        if (expdescVar.f102791k != 8 || expdescVar.hasjumps()) {
            exp2anyreg(expdescVar);
        }
    }

    public void exp2nextreg(LexState.expdesc expdescVar) {
        dischargevars(expdescVar);
        freeexp(expdescVar);
        reserveregs(1);
        exp2reg(expdescVar, this.freereg - 1);
    }

    public void exp2reg(LexState.expdesc expdescVar, int i10) {
        int code_label;
        int code_label2;
        discharge2reg(expdescVar, i10);
        if (expdescVar.f102791k == 10) {
            concat(expdescVar.f102792t, expdescVar.f102793u.info);
        }
        if (expdescVar.hasjumps()) {
            if (need_value(expdescVar.f102792t.f102779i) || need_value(expdescVar.f102790f.f102779i)) {
                int jump = expdescVar.f102791k == 10 ? -1 : jump();
                code_label = code_label(i10, 0, 1);
                code_label2 = code_label(i10, 1, 0);
                patchtohere(jump);
            } else {
                code_label2 = -1;
                code_label = -1;
            }
            int i11 = getlabel();
            patchlistaux(expdescVar.f102790f.f102779i, i11, i10, code_label);
            patchlistaux(expdescVar.f102792t.f102779i, i11, i10, code_label2);
        }
        IntPtr intPtr = expdescVar.f102790f;
        expdescVar.f102792t.f102779i = -1;
        intPtr.f102779i = -1;
        expdescVar.f102793u.info = i10;
        expdescVar.f102791k = 6;
    }

    public void exp2val(LexState.expdesc expdescVar) {
        if (expdescVar.hasjumps()) {
            exp2anyreg(expdescVar);
        } else {
            dischargevars(expdescVar);
        }
    }

    public void fixjump(int i10, int i11) {
        InstructionPtr instructionPtr = new InstructionPtr(this.f102775f.code, i10);
        int i12 = i11 - (i10 + 1);
        Constants._assert(i11 != -1);
        if (Math.abs(i12) > 131071) {
            this.ls.syntaxerror("control structure too long");
        }
        Constants.SETARG_sBx(instructionPtr, i12);
    }

    public void fixline(int i10) {
        this.f102775f.lineinfo[this.f102778pc - 1] = i10;
    }

    public void freeexp(LexState.expdesc expdescVar) {
        if (expdescVar.f102791k == 6) {
            freereg(expdescVar.f102793u.info);
        }
    }

    public void freereg(int i10) {
        if (Lua.ISK(i10) || i10 < this.nactvar) {
            return;
        }
        short s10 = (short) (this.freereg - 1);
        this.freereg = s10;
        Constants._assert(i10 == s10);
    }

    public int getcode(LexState.expdesc expdescVar) {
        return this.f102775f.code[expdescVar.f102793u.info];
    }

    public InstructionPtr getcodePtr(LexState.expdesc expdescVar) {
        return new InstructionPtr(this.f102775f.code, expdescVar.f102793u.info);
    }

    public int getjump(int i10) {
        int GETARG_sBx = Lua.GETARG_sBx(this.f102775f.code[i10]);
        if (GETARG_sBx == -1) {
            return -1;
        }
        return i10 + 1 + GETARG_sBx;
    }

    public InstructionPtr getjumpcontrol(int i10) {
        InstructionPtr instructionPtr = new InstructionPtr(this.f102775f.code, i10);
        return (i10 < 1 || !Lua.testTMode(Lua.GET_OPCODE(instructionPtr.code[instructionPtr.idx - 1]))) ? instructionPtr : new InstructionPtr(instructionPtr.code, instructionPtr.idx - 1);
    }

    public int getlabel() {
        int i10 = this.f102778pc;
        this.lasttarget = i10;
        return i10;
    }

    public LocVars getlocvar(int i10) {
        short s10 = this.ls.dyd.actvar[this.firstlocal + i10].idx;
        Constants._assert(s10 < this.nlocvars);
        return this.f102775f.locvars[s10];
    }

    public void goiffalse(LexState.expdesc expdescVar) {
        dischargevars(expdescVar);
        int i10 = expdescVar.f102791k;
        concat(expdescVar.f102792t, (i10 == 1 || i10 == 3) ? -1 : i10 != 10 ? jumponcond(expdescVar, 1) : expdescVar.f102793u.info);
        patchtohere(expdescVar.f102790f.f102779i);
        expdescVar.f102790f.f102779i = -1;
    }

    public void goiftrue(LexState.expdesc expdescVar) {
        int i10;
        dischargevars(expdescVar);
        int i11 = expdescVar.f102791k;
        if (i11 != 2) {
            if (i11 == 10) {
                invertjump(expdescVar);
                i10 = expdescVar.f102793u.info;
            } else if (i11 != 4 && i11 != 5) {
                i10 = jumponcond(expdescVar, 0);
            }
            concat(expdescVar.f102790f, i10);
            patchtohere(expdescVar.f102792t.f102779i);
            expdescVar.f102792t.f102779i = -1;
        }
        i10 = -1;
        concat(expdescVar.f102790f, i10);
        patchtohere(expdescVar.f102792t.f102779i);
        expdescVar.f102792t.f102779i = -1;
    }

    public boolean hasmultret(int i10) {
        return i10 == 12 || i10 == 13;
    }

    public void indexed(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        LexState.expdesc.U u10 = expdescVar.f102793u;
        u10.ind_t = (short) u10.info;
        u10.ind_idx = (short) exp2RK(expdescVar2);
        int i10 = expdescVar.f102791k;
        Constants._assert(i10 == 8 || vkisinreg(i10));
        expdescVar.f102793u.ind_vt = (short) (expdescVar.f102791k != 8 ? 7 : 8);
        expdescVar.f102791k = 9;
    }

    public void infix(int i10, LexState.expdesc expdescVar) {
        if (i10 == 13) {
            goiftrue(expdescVar);
            return;
        }
        if (i10 == 14) {
            goiffalse(expdescVar);
            return;
        }
        switch (i10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                if (expdescVar.isnumeral()) {
                    return;
                }
                break;
            case 6:
                exp2nextreg(expdescVar);
                return;
        }
        exp2RK(expdescVar);
    }

    public void invertjump(LexState.expdesc expdescVar) {
        InstructionPtr instructionPtr = getjumpcontrol(expdescVar.f102793u.info);
        Constants._assert((!Lua.testTMode(Lua.GET_OPCODE(instructionPtr.get())) || Lua.GET_OPCODE(instructionPtr.get()) == 28 || Lua.GET_OPCODE(instructionPtr.get()) == 27) ? false : true);
        Constants.SETARG_A(instructionPtr, Lua.GETARG_A(instructionPtr.get()) == 0 ? 1 : 0);
    }

    public int jump() {
        IntPtr intPtr = this.jpc;
        int i10 = intPtr.f102779i;
        intPtr.f102779i = -1;
        IntPtr intPtr2 = new IntPtr(codeAsBx(23, 0, -1));
        concat(intPtr2, i10);
        return intPtr2.f102779i;
    }

    public int jumponcond(LexState.expdesc expdescVar, int i10) {
        if (expdescVar.f102791k == 11) {
            int i11 = getcode(expdescVar);
            if (Lua.GET_OPCODE(i11) == 20) {
                this.f102778pc--;
                return condjump(27, Lua.GETARG_B(i11), 0, i10 != 0 ? 0 : 1);
            }
        }
        discharge2anyreg(expdescVar);
        freeexp(expdescVar);
        return condjump(28, 255, expdescVar.f102793u.info, i10);
    }

    public void lastlistfield(LexState.ConsControl consControl) {
        if (consControl.tostore == 0) {
            return;
        }
        if (hasmultret(consControl.f102786v.f102791k)) {
            setmultret(consControl.f102786v);
            setlist(consControl.f102785t.f102793u.info, consControl.f102783na, -1);
            consControl.f102783na--;
        } else {
            LexState.expdesc expdescVar = consControl.f102786v;
            if (expdescVar.f102791k != 0) {
                exp2nextreg(expdescVar);
            }
            setlist(consControl.f102785t.f102793u.info, consControl.f102783na, consControl.tostore);
        }
    }

    public void leaveblock() {
        BlockCnt blockCnt = this.f102774bl;
        if (blockCnt.previous != null && blockCnt.upval) {
            int jump = jump();
            patchclose(jump, blockCnt.nactvar);
            patchtohere(jump);
        }
        if (blockCnt.isloop) {
            this.ls.breaklabel();
        }
        this.f102774bl = blockCnt.previous;
        removevars(blockCnt.nactvar);
        Constants._assert(blockCnt.nactvar == this.nactvar);
        this.freereg = this.nactvar;
        LexState lexState = this.ls;
        LexState.Dyndata dyndata = lexState.dyd;
        dyndata.n_label = blockCnt.firstlabel;
        if (blockCnt.previous != null) {
            movegotosout(blockCnt);
            return;
        }
        short s10 = blockCnt.firstgoto;
        if (s10 < dyndata.n_gt) {
            lexState.undefgoto(dyndata.gt[s10]);
        }
    }

    public void markupval(int i10) {
        BlockCnt blockCnt = this.f102774bl;
        while (blockCnt.nactvar > i10) {
            blockCnt = blockCnt.previous;
        }
        blockCnt.upval = true;
    }

    public void movegotosout(BlockCnt blockCnt) {
        int i10 = blockCnt.firstgoto;
        LexState.Labeldesc[] labeldescArr = this.ls.dyd.gt;
        while (i10 < this.ls.dyd.n_gt) {
            LexState.Labeldesc labeldesc = labeldescArr[i10];
            short s10 = labeldesc.nactvar;
            short s11 = blockCnt.nactvar;
            if (s10 > s11) {
                if (blockCnt.upval) {
                    patchclose(labeldesc.f102788pc, s11);
                }
                labeldesc.nactvar = blockCnt.nactvar;
            }
            if (!this.ls.findlabel(i10)) {
                i10++;
            }
        }
    }

    public boolean need_value(int i10) {
        while (i10 != -1) {
            if (Lua.GET_OPCODE(getjumpcontrol(i10).get()) != 28) {
                return true;
            }
            i10 = getjump(i10);
        }
        return false;
    }

    public int newupvalue(LuaString luaString, LexState.expdesc expdescVar) {
        checklimit(this.nups + 1, 255, "upvalues");
        Prototype prototype = this.f102775f;
        Upvaldesc[] upvaldescArr = prototype.upvalues;
        if (upvaldescArr == null || this.nups + 1 > upvaldescArr.length) {
            short s10 = this.nups;
            prototype.upvalues = Constants.realloc(upvaldescArr, s10 > 0 ? s10 * 2 : 1);
        }
        this.f102775f.upvalues[this.nups] = new Upvaldesc(luaString, expdescVar.f102791k == 7, expdescVar.f102793u.info);
        short s11 = this.nups;
        this.nups = (short) (s11 + 1);
        return s11;
    }

    public void nil(int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = i12 - 1;
        int i14 = this.f102778pc;
        if (i14 > this.lasttarget && i14 > 0) {
            int i15 = this.f102775f.code[i14 - 1];
            if (Lua.GET_OPCODE(i15) == 4) {
                int GETARG_A = Lua.GETARG_A(i15);
                int GETARG_B = Lua.GETARG_B(i15) + GETARG_A;
                if ((GETARG_A <= i10 && i10 <= GETARG_B + 1) || (i10 <= GETARG_A && GETARG_A <= i12)) {
                    if (GETARG_A < i10) {
                        i10 = GETARG_A;
                    }
                    if (GETARG_B > i13) {
                        i13 = GETARG_B;
                    }
                    InstructionPtr instructionPtr = new InstructionPtr(this.f102775f.code, this.f102778pc - 1);
                    Constants.SETARG_A(instructionPtr, i10);
                    Constants.SETARG_B(instructionPtr, i13 - i10);
                    return;
                }
            }
        }
        codeABC(4, i10, i11 - 1, 0);
    }

    public int nilK() {
        return addk(LuaValue.NIL);
    }

    public int numberK(LuaValue luaValue) {
        if (luaValue instanceof LuaDouble) {
            double d10 = luaValue.todouble();
            int i10 = (int) d10;
            if (d10 == i10) {
                luaValue = LuaInteger.valueOf(i10);
            }
        }
        return addk(luaValue);
    }

    public void patchclose(int i10, int i11) {
        int i12 = i11 + 1;
        while (i10 != -1) {
            int i13 = getjump(i10);
            Constants._assert(Lua.GET_OPCODE(this.f102775f.code[i10]) == 23 && (Lua.GETARG_A(this.f102775f.code[i10]) == 0 || Lua.GETARG_A(this.f102775f.code[i10]) >= i12));
            Constants.SETARG_A(this.f102775f.code, i10, i12);
            i10 = i13;
        }
    }

    public void patchlist(int i10, int i11) {
        int i12 = this.f102778pc;
        if (i11 == i12) {
            patchtohere(i10);
        } else {
            Constants._assert(i11 < i12);
            patchlistaux(i10, i11, 255, i11);
        }
    }

    public void patchlistaux(int i10, int i11, int i12, int i13) {
        while (i10 != -1) {
            int i14 = getjump(i10);
            if (patchtestreg(i10, i12)) {
                fixjump(i10, i11);
            } else {
                fixjump(i10, i13);
            }
            i10 = i14;
        }
    }

    public boolean patchtestreg(int i10, int i11) {
        InstructionPtr instructionPtr = getjumpcontrol(i10);
        if (Lua.GET_OPCODE(instructionPtr.get()) != 28) {
            return false;
        }
        if (i11 == 255 || i11 == Lua.GETARG_B(instructionPtr.get())) {
            instructionPtr.set(Constants.CREATE_ABC(27, Lua.GETARG_B(instructionPtr.get()), 0, Lua.GETARG_C(instructionPtr.get())));
            return true;
        }
        Constants.SETARG_A(instructionPtr, i11);
        return true;
    }

    public void patchtohere(int i10) {
        getlabel();
        concat(this.jpc, i10);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    public void posfix(int i10, LexState.expdesc expdescVar, LexState.expdesc expdescVar2, int i11) {
        int i12;
        IntPtr intPtr;
        IntPtr intPtr2;
        switch (i10) {
            case 0:
                i12 = 13;
                codearith(i12, expdescVar, expdescVar2, i11);
                return;
            case 1:
                i12 = 14;
                codearith(i12, expdescVar, expdescVar2, i11);
                return;
            case 2:
                i12 = 15;
                codearith(i12, expdescVar, expdescVar2, i11);
                return;
            case 3:
                i12 = 16;
                codearith(i12, expdescVar, expdescVar2, i11);
                return;
            case 4:
                i12 = 17;
                codearith(i12, expdescVar, expdescVar2, i11);
                return;
            case 5:
                i12 = 18;
                codearith(i12, expdescVar, expdescVar2, i11);
                return;
            case 6:
                exp2val(expdescVar2);
                if (expdescVar2.f102791k != 11 || Lua.GET_OPCODE(getcode(expdescVar2)) != 22) {
                    exp2nextreg(expdescVar2);
                    codearith(22, expdescVar, expdescVar2, i11);
                    return;
                }
                Constants._assert(expdescVar.f102793u.info == Lua.GETARG_B(getcode(expdescVar2)) - 1);
                freeexp(expdescVar);
                Constants.SETARG_B(getcodePtr(expdescVar2), expdescVar.f102793u.info);
                expdescVar.f102791k = 11;
                expdescVar.f102793u.info = expdescVar2.f102793u.info;
                return;
            case 7:
                codecomp(24, 0, expdescVar, expdescVar2);
                return;
            case 8:
                codecomp(24, 1, expdescVar, expdescVar2);
                return;
            case 9:
                codecomp(25, 1, expdescVar, expdescVar2);
                return;
            case 10:
                codecomp(26, 1, expdescVar, expdescVar2);
                return;
            case 11:
                codecomp(25, 0, expdescVar, expdescVar2);
                return;
            case 12:
                codecomp(26, 0, expdescVar, expdescVar2);
                return;
            case 13:
                Constants._assert(expdescVar.f102792t.f102779i == -1);
                dischargevars(expdescVar2);
                intPtr = expdescVar2.f102790f;
                intPtr2 = expdescVar.f102790f;
                concat(intPtr, intPtr2.f102779i);
                expdescVar.setvalue(expdescVar2);
                return;
            case 14:
                Constants._assert(expdescVar.f102790f.f102779i == -1);
                dischargevars(expdescVar2);
                intPtr = expdescVar2.f102792t;
                intPtr2 = expdescVar.f102792t;
                concat(intPtr, intPtr2.f102779i);
                expdescVar.setvalue(expdescVar2);
                return;
            default:
                Constants._assert(false);
                return;
        }
    }

    public void prefix(int i10, LexState.expdesc expdescVar, int i11) {
        int i12;
        LexState.expdesc expdescVar2 = new LexState.expdesc();
        expdescVar2.init(5, 0);
        if (i10 != 0) {
            if (i10 == 1) {
                codenot(expdescVar);
                return;
            } else if (i10 != 2) {
                Constants._assert(false);
                return;
            } else {
                exp2anyreg(expdescVar);
                i12 = 21;
            }
        } else if (expdescVar.isnumeral()) {
            LexState.expdesc.U u10 = expdescVar.f102793u;
            u10.setNval(u10.nval().neg());
            return;
        } else {
            exp2anyreg(expdescVar);
            i12 = 19;
        }
        codearith(i12, expdescVar, expdescVar2, i11);
    }

    public void removevalues(int i10) {
        while (i10 != -1) {
            patchtestreg(i10, 255);
            i10 = getjump(i10);
        }
    }

    public void removevars(int i10) {
        this.ls.dyd.n_actvar -= this.nactvar - i10;
        while (true) {
            short s10 = this.nactvar;
            if (s10 <= i10) {
                return;
            }
            short s11 = (short) (s10 - 1);
            this.nactvar = s11;
            getlocvar(s11).endpc = this.f102778pc;
        }
    }

    public void reserveregs(int i10) {
        checkstack(i10);
        this.freereg = (short) (this.freereg + i10);
    }

    public void ret(int i10, int i11) {
        codeABC(31, i10, i11 + 1, 0);
    }

    public int searchupvalue(LuaString luaString) {
        Upvaldesc[] upvaldescArr = this.f102775f.upvalues;
        for (int i10 = 0; i10 < this.nups; i10++) {
            if (upvaldescArr[i10].name.eq_b(luaString)) {
                return i10;
            }
        }
        return -1;
    }

    public int searchvar(LuaString luaString) {
        for (int i10 = this.nactvar - 1; i10 >= 0; i10--) {
            if (luaString.eq_b(getlocvar(i10).varname)) {
                return i10;
            }
        }
        return -1;
    }

    public void self(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        exp2anyreg(expdescVar);
        freeexp(expdescVar);
        short s10 = this.freereg;
        reserveregs(2);
        codeABC(12, s10, expdescVar.f102793u.info, exp2RK(expdescVar2));
        freeexp(expdescVar2);
        expdescVar.f102793u.info = s10;
        expdescVar.f102791k = 6;
    }

    public void setlist(int i10, int i11, int i12) {
        int i13 = ((i11 - 1) / 50) + 1;
        int i14 = i12 == -1 ? 0 : i12;
        Constants._assert(i12 != 0);
        if (i13 <= 511) {
            codeABC(36, i10, i14, i13);
        } else {
            codeABC(36, i10, i14, 0);
            code(i13, this.ls.lastline);
        }
        this.freereg = (short) (i10 + 1);
    }

    public void setmultret(LexState.expdesc expdescVar) {
        setreturns(expdescVar, -1);
    }

    public void setoneret(LexState.expdesc expdescVar) {
        int i10 = expdescVar.f102791k;
        if (i10 == 12) {
            expdescVar.f102791k = 6;
            expdescVar.f102793u.info = Lua.GETARG_A(getcode(expdescVar));
        } else if (i10 == 13) {
            Constants.SETARG_B(getcodePtr(expdescVar), 2);
            expdescVar.f102791k = 11;
        }
    }

    public void setreturns(LexState.expdesc expdescVar, int i10) {
        int i11 = expdescVar.f102791k;
        if (i11 == 12) {
            Constants.SETARG_C(getcodePtr(expdescVar), i10 + 1);
        } else if (i11 == 13) {
            Constants.SETARG_B(getcodePtr(expdescVar), i10 + 1);
            Constants.SETARG_A(getcodePtr(expdescVar), this.freereg);
            reserveregs(1);
        }
    }

    public void storevar(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        int i10 = expdescVar.f102791k;
        if (i10 == 7) {
            freeexp(expdescVar2);
            exp2reg(expdescVar2, expdescVar.f102793u.info);
            return;
        }
        if (i10 == 8) {
            codeABC(9, exp2anyreg(expdescVar2), expdescVar.f102793u.info, 0);
        } else if (i10 != 9) {
            Constants._assert(false);
        } else {
            int i11 = expdescVar.f102793u.ind_vt == 7 ? 10 : 8;
            int exp2RK = exp2RK(expdescVar2);
            LexState.expdesc.U u10 = expdescVar.f102793u;
            codeABC(i11, u10.ind_t, u10.ind_idx, exp2RK);
        }
        freeexp(expdescVar2);
    }

    public int stringK(LuaString luaString) {
        return addk(luaString);
    }
}
