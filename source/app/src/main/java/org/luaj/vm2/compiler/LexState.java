package org.luaj.vm2.compiler;

import G0.C2595v;
import b3.s;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.luaj.vm2.LocVars;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaInteger;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.compiler.FuncState;
import org.luaj.vm2.compiler.LuaC;
import org.luaj.vm2.lib.MathLib;

public class LexState extends Constants {
    private static final int EOZ = -1;
    static final int FIRST_RESERVED = 257;
    private static final int LUAI_MAXCCALLS = 200;
    private static final int LUA_COMPAT_LSTR = 1;
    private static final boolean LUA_COMPAT_VARARG = true;
    private static final int MAX_INT = 2147483645;
    static final int NO_JUMP = -1;
    static final int NUM_RESERVED = 22;
    static final int OPR_ADD = 0;
    static final int OPR_AND = 13;
    static final int OPR_CONCAT = 6;
    static final int OPR_DIV = 3;
    static final int OPR_EQ = 8;
    static final int OPR_GE = 12;
    static final int OPR_GT = 11;
    static final int OPR_LE = 10;
    static final int OPR_LEN = 2;
    static final int OPR_LT = 9;
    static final int OPR_MINUS = 0;
    static final int OPR_MOD = 4;
    static final int OPR_MUL = 2;
    static final int OPR_NE = 7;
    static final int OPR_NOBINOPR = 15;
    static final int OPR_NOT = 1;
    static final int OPR_NOUNOPR = 3;
    static final int OPR_OR = 14;
    static final int OPR_POW = 5;
    static final int OPR_SUB = 1;
    static final Hashtable RESERVED;
    protected static final String RESERVED_LOCAL_VAR_FOR_CONTROL = "(for control)";
    protected static final String RESERVED_LOCAL_VAR_FOR_GENERATOR = "(for generator)";
    protected static final String RESERVED_LOCAL_VAR_FOR_INDEX = "(for index)";
    protected static final String RESERVED_LOCAL_VAR_FOR_LIMIT = "(for limit)";
    protected static final String RESERVED_LOCAL_VAR_FOR_STATE = "(for state)";
    protected static final String RESERVED_LOCAL_VAR_FOR_STEP = "(for step)";
    protected static final String[] RESERVED_LOCAL_VAR_KEYWORDS = {RESERVED_LOCAL_VAR_FOR_CONTROL, RESERVED_LOCAL_VAR_FOR_GENERATOR, RESERVED_LOCAL_VAR_FOR_INDEX, RESERVED_LOCAL_VAR_FOR_LIMIT, RESERVED_LOCAL_VAR_FOR_STATE, RESERVED_LOCAL_VAR_FOR_STEP};
    private static final Hashtable RESERVED_LOCAL_VAR_KEYWORDS_TABLE = new Hashtable();
    static final int TK_AND = 257;
    static final int TK_BREAK = 258;
    static final int TK_CONCAT = 279;
    static final int TK_DBCOLON = 285;
    static final int TK_DO = 259;
    static final int TK_DOTS = 280;
    static final int TK_ELSE = 260;
    static final int TK_ELSEIF = 261;
    static final int TK_END = 262;
    static final int TK_EOS = 286;
    static final int TK_EQ = 281;
    static final int TK_FALSE = 263;
    static final int TK_FOR = 264;
    static final int TK_FUNCTION = 265;
    static final int TK_GE = 282;
    static final int TK_GOTO = 266;
    static final int TK_IF = 267;
    static final int TK_IN = 268;
    static final int TK_LE = 283;
    static final int TK_LOCAL = 269;
    static final int TK_NAME = 288;
    static final int TK_NE = 284;
    static final int TK_NIL = 270;
    static final int TK_NOT = 271;
    static final int TK_NUMBER = 287;
    static final int TK_OR = 272;
    static final int TK_REPEAT = 273;
    static final int TK_RETURN = 274;
    static final int TK_STRING = 289;
    static final int TK_THEN = 275;
    static final int TK_TRUE = 276;
    static final int TK_UNTIL = 277;
    static final int TK_WHILE = 278;
    private static final int UCHAR_MAX = 255;
    static final int UNARY_PRIORITY = 8;
    static final int VCALL = 12;
    static final int VFALSE = 3;
    static final int VINDEXED = 9;
    static final int VJMP = 10;
    static final int VK = 4;
    static final int VKNUM = 5;
    static final int VLOCAL = 7;
    static final int VNIL = 1;
    static final int VNONRELOC = 6;
    static final int VRELOCABLE = 11;
    static final int VTRUE = 2;
    static final int VUPVAL = 8;
    static final int VVARARG = 13;
    static final int VVOID = 0;
    static final String[] luaX_tokens;
    static Priority[] priority;

    LuaC.CompileState f102780L;
    int current;
    byte decpoint;
    LuaString envn;
    FuncState fs;
    int lastline;
    int linenumber;
    final Token lookahead;
    int nbuff;
    LuaString source;

    final Token f102781t;

    InputStream f102782z;
    Dyndata dyd = new Dyndata();
    char[] buff = new char[32];

    public static class ConsControl {

        int f102783na;

        int f102784nh;

        expdesc f102785t;
        int tostore;

        expdesc f102786v = new expdesc();
    }

    public static class Dyndata {
        Vardesc[] actvar;
        Labeldesc[] gt;
        Labeldesc[] label;
        int n_actvar = 0;
        int n_gt = 0;
        int n_label = 0;
    }

    public static class LHS_assign {
        LHS_assign prev;

        expdesc f102787v = new expdesc();
    }

    public static class Labeldesc {
        int line;
        short nactvar;
        LuaString name;

        int f102788pc;

        public Labeldesc(LuaString luaString, int i10, int i11, short s10) {
            this.name = luaString;
            this.f102788pc = i10;
            this.line = i11;
            this.nactvar = s10;
        }
    }

    public static class Priority {
        final byte left;
        final byte right;

        public Priority(int i10, int i11) {
            this.left = (byte) i10;
            this.right = (byte) i11;
        }
    }

    public static class SemInfo {

        LuaValue f102789r;
        LuaString ts;

        private SemInfo() {
        }
    }

    public static class Token {
        final SemInfo seminfo;
        int token;

        private Token() {
            this.seminfo = new SemInfo();
        }

        public void set(Token token) {
            this.token = token.token;
            SemInfo semInfo = this.seminfo;
            SemInfo semInfo2 = token.seminfo;
            semInfo.f102789r = semInfo2.f102789r;
            semInfo.ts = semInfo2.ts;
        }
    }

    public static class Vardesc {
        final short idx;

        public Vardesc(int i10) {
            this.idx = (short) i10;
        }
    }

    public static class expdesc {

        int f102791k;

        final U f102793u = new U();

        final IntPtr f102792t = new IntPtr();

        final IntPtr f102790f = new IntPtr();

        public static class U {
            private LuaValue _nval;
            short ind_idx;
            short ind_t;
            short ind_vt;
            int info;

            public LuaValue nval() {
                LuaValue luaValue = this._nval;
                return luaValue == null ? LuaInteger.valueOf(this.info) : luaValue;
            }

            public void setNval(LuaValue luaValue) {
                this._nval = luaValue;
            }
        }

        public boolean hasjumps() {
            return this.f102792t.f102779i != this.f102790f.f102779i;
        }

        public void init(int i10, int i11) {
            this.f102790f.f102779i = -1;
            this.f102792t.f102779i = -1;
            this.f102791k = i10;
            this.f102793u.info = i11;
        }

        public boolean isnumeral() {
            return this.f102791k == 5 && this.f102792t.f102779i == -1 && this.f102790f.f102779i == -1;
        }

        public void setvalue(expdesc expdescVar) {
            this.f102790f.f102779i = expdescVar.f102790f.f102779i;
            this.f102791k = expdescVar.f102791k;
            this.f102792t.f102779i = expdescVar.f102792t.f102779i;
            this.f102793u._nval = expdescVar.f102793u._nval;
            U u10 = this.f102793u;
            U u11 = expdescVar.f102793u;
            u10.ind_idx = u11.ind_idx;
            u10.ind_t = u11.ind_t;
            u10.ind_vt = u11.ind_vt;
            u10.info = u11.info;
        }
    }

    static {
        int i10 = 0;
        while (true) {
            String[] strArr = RESERVED_LOCAL_VAR_KEYWORDS;
            if (i10 >= strArr.length) {
                break;
            }
            RESERVED_LOCAL_VAR_KEYWORDS_TABLE.put(strArr[i10], Boolean.TRUE);
            i10++;
        }
        luaX_tokens = new String[]{"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", C2595v.f7483b, "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", ClasspathEntry.DOT_DOT, "...", "==", ">=", "<=", "~=", "::", "<eos>", "<number>", "<name>", "<string>", "<eof>"};
        RESERVED = new Hashtable();
        for (int i11 = 0; i11 < 22; i11++) {
            RESERVED.put(LuaValue.valueOf(luaX_tokens[i11]), new Integer(i11 + 257));
        }
        priority = new Priority[]{new Priority(6, 6), new Priority(6, 6), new Priority(7, 7), new Priority(7, 7), new Priority(7, 7), new Priority(10, 9), new Priority(5, 4), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(2, 2), new Priority(1, 1)};
    }

    public LexState(LuaC.CompileState compileState, InputStream inputStream) {
        this.f102781t = new Token();
        this.lookahead = new Token();
        this.f102782z = inputStream;
        this.f102780L = compileState;
    }

    private static final String LUA_QL(Object obj) {
        return LUA_QS(String.valueOf(obj));
    }

    private static final String LUA_QS(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("'");
        stringBuffer.append(str);
        stringBuffer.append("'");
        return stringBuffer.toString();
    }

    public static boolean isReservedKeyword(String str) {
        return RESERVED_LOCAL_VAR_KEYWORDS_TABLE.containsKey(str);
    }

    private boolean isalnum(int i10) {
        return (i10 >= 48 && i10 <= 57) || (i10 >= 97 && i10 <= 122) || ((i10 >= 65 && i10 <= 90) || i10 == 95);
    }

    private boolean isalpha(int i10) {
        return (i10 >= 97 && i10 <= 122) || (i10 >= 65 && i10 <= 90);
    }

    private static boolean iscntrl(int i10) {
        return i10 < 32;
    }

    private boolean isdigit(int i10) {
        return i10 >= 48 && i10 <= 57;
    }

    private boolean isspace(int i10) {
        return i10 <= 32;
    }

    private boolean isxdigit(int i10) {
        return (i10 >= 48 && i10 <= 57) || (i10 >= 97 && i10 <= 102) || (i10 >= 65 && i10 <= 70);
    }

    public static int luaO_int2fb(int i10) {
        int i11 = 0;
        while (i10 >= 16) {
            i10 = (i10 + 1) >> 1;
            i11++;
        }
        if (i10 < 8) {
            return i10;
        }
        return (i10 - 8) | ((i11 + 1) << 3);
    }

    private void skipShebang() {
        if (this.current == 35) {
            while (!currIsNewline() && this.current != -1) {
                nextChar();
            }
        }
    }

    public static final boolean vkisinreg(int i10) {
        return i10 == 6 || i10 == 7;
    }

    public static final boolean vkisvar(int i10) {
        return 7 <= i10 && i10 <= 9;
    }

    public Prototype addprototype() {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f102775f;
        Prototype[] prototypeArr = prototype.f102765p;
        if (prototypeArr == null || funcState.np >= prototypeArr.length) {
            prototype.f102765p = Constants.realloc(prototypeArr, Math.max(1, funcState.np * 2));
        }
        Prototype[] prototypeArr2 = prototype.f102765p;
        FuncState funcState2 = this.fs;
        int i10 = funcState2.np;
        funcState2.np = i10 + 1;
        Prototype prototype2 = new Prototype();
        prototypeArr2[i10] = prototype2;
        return prototype2;
    }

    public void adjust_assign(int i10, int i11, expdesc expdescVar) {
        FuncState funcState = this.fs;
        int i12 = i10 - i11;
        if (hasmultret(expdescVar.f102791k)) {
            int i13 = i12 + 1;
            if (i13 < 0) {
                i13 = 0;
            }
            funcState.setreturns(expdescVar, i13);
            if (i13 > 1) {
                funcState.reserveregs(i13 - 1);
                return;
            }
            return;
        }
        if (expdescVar.f102791k != 0) {
            funcState.exp2nextreg(expdescVar);
        }
        if (i12 > 0) {
            short s10 = funcState.freereg;
            funcState.reserveregs(i12);
            funcState.nil(s10, i12);
        }
    }

    public void adjustlocalvars(int i10) {
        FuncState funcState = this.fs;
        funcState.nactvar = (short) (funcState.nactvar + i10);
        while (i10 > 0) {
            funcState.getlocvar(funcState.nactvar - i10).startpc = funcState.f102778pc;
            i10--;
        }
    }

    public void anchor_token() {
        Constants._assert(this.fs != null || this.f102781t.token == TK_EOS);
        Token token = this.f102781t;
        int i10 = token.token;
        if (i10 == TK_NAME || i10 == TK_STRING) {
            this.f102780L.cachedLuaString(token.seminfo.ts);
        }
    }

    public void assignment(LHS_assign lHS_assign, int i10) {
        expdesc expdescVar = new expdesc();
        int i11 = lHS_assign.f102787v.f102791k;
        check_condition(7 <= i11 && i11 <= 9, "syntax error");
        if (testnext(44)) {
            LHS_assign lHS_assign2 = new LHS_assign();
            lHS_assign2.prev = lHS_assign;
            suffixedexp(lHS_assign2.f102787v);
            expdesc expdescVar2 = lHS_assign2.f102787v;
            if (expdescVar2.f102791k != 9) {
                check_conflict(lHS_assign, expdescVar2);
            }
            assignment(lHS_assign2, i10 + 1);
        } else {
            checknext(61);
            int explist = explist(expdescVar);
            if (explist == i10) {
                this.fs.setoneret(expdescVar);
                this.fs.storevar(lHS_assign.f102787v, expdescVar);
            } else {
                adjust_assign(i10, explist, expdescVar);
                if (explist > i10) {
                    FuncState funcState = this.fs;
                    funcState.freereg = (short) (funcState.freereg - (explist - i10));
                }
            }
        }
        expdescVar.init(6, this.fs.freereg - 1);
        this.fs.storevar(lHS_assign.f102787v, expdescVar);
    }

    public void block() {
        FuncState funcState = this.fs;
        funcState.enterblock(new FuncState.BlockCnt(), false);
        statlist();
        funcState.leaveblock();
    }

    public boolean block_follow(boolean z10) {
        int i10 = this.f102781t.token;
        if (i10 == 277) {
            return z10;
        }
        if (i10 != TK_EOS) {
            switch (i10) {
                case 260:
                case 261:
                case 262:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public void body(expdesc expdescVar, boolean z10, int i10) {
        FuncState funcState = new FuncState();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        Prototype addprototype = addprototype();
        funcState.f102775f = addprototype;
        addprototype.linedefined = i10;
        open_func(funcState, blockCnt);
        checknext(40);
        if (z10) {
            new_localvarliteral("self");
            adjustlocalvars(1);
        }
        parlist();
        checknext(41);
        statlist();
        funcState.f102775f.lastlinedefined = this.linenumber;
        check_match(262, 265, i10);
        codeclosure(expdescVar);
        close_func();
    }

    public void breaklabel() {
        LuaString valueOf = LuaString.valueOf("break");
        Dyndata dyndata = this.dyd;
        Labeldesc[] grow = Constants.grow(dyndata.label, dyndata.n_label + 1);
        dyndata.label = grow;
        Dyndata dyndata2 = this.dyd;
        int i10 = dyndata2.n_label;
        dyndata2.n_label = i10 + 1;
        findgotos(this.dyd.label[newlabelentry(grow, i10, valueOf, 0, this.fs.f102778pc)]);
    }

    public void buffreplace(char c10, char c11) {
        int i10 = this.nbuff;
        char[] cArr = this.buff;
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            }
            if (cArr[i10] == c10) {
                cArr[i10] = c11;
            }
        }
    }

    public void check(int i10) {
        if (this.f102781t.token != i10) {
            error_expected(i10);
        }
    }

    public void check_condition(boolean z10, String str) {
        if (z10) {
            return;
        }
        syntaxerror(str);
    }

    public void check_conflict(LHS_assign lHS_assign, expdesc expdescVar) {
        FuncState funcState = this.fs;
        short s10 = funcState.freereg;
        boolean z10 = false;
        while (lHS_assign != null) {
            expdesc expdescVar2 = lHS_assign.f102787v;
            if (expdescVar2.f102791k == 9) {
                expdesc.U u10 = expdescVar2.f102793u;
                short s11 = u10.ind_vt;
                int i10 = expdescVar.f102791k;
                if (s11 == i10 && u10.ind_t == expdescVar.f102793u.info) {
                    u10.ind_vt = (short) 7;
                    u10.ind_t = s10;
                    z10 = true;
                }
                if (i10 == 7 && u10.ind_idx == expdescVar.f102793u.info) {
                    u10.ind_idx = s10;
                    z10 = true;
                }
            }
            lHS_assign = lHS_assign.prev;
        }
        if (z10) {
            funcState.codeABC(expdescVar.f102791k == 7 ? 0 : 5, s10, expdescVar.f102793u.info, 0);
            funcState.reserveregs(1);
        }
    }

    public void check_match(int i10, int i11, int i12) {
        if (testnext(i10)) {
            return;
        }
        if (i12 == this.linenumber) {
            error_expected(i10);
            return;
        }
        LuaC.CompileState compileState = this.f102780L;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(LUA_QS(token2str(i10)));
        stringBuffer.append(" expected ");
        stringBuffer.append("(to close ");
        stringBuffer.append(LUA_QS(token2str(i11)));
        stringBuffer.append(" at line ");
        stringBuffer.append(i12);
        stringBuffer.append(")");
        syntaxerror(compileState.pushfstring(stringBuffer.toString()));
    }

    public boolean check_next(String str) {
        if (str.indexOf(this.current) < 0) {
            return false;
        }
        save_and_next();
        return true;
    }

    public void checkname(expdesc expdescVar) {
        codestring(expdescVar, str_checkname());
    }

    public void checknext(int i10) {
        check(i10);
        next();
    }

    public void close_func() {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f102775f;
        funcState.ret(0, 0);
        funcState.leaveblock();
        prototype.code = Constants.realloc(prototype.code, funcState.f102778pc);
        prototype.lineinfo = Constants.realloc(prototype.lineinfo, funcState.f102778pc);
        prototype.f102764k = Constants.realloc(prototype.f102764k, funcState.f102777nk);
        prototype.f102765p = Constants.realloc(prototype.f102765p, funcState.np);
        prototype.locvars = Constants.realloc(prototype.locvars, funcState.nlocvars);
        prototype.upvalues = Constants.realloc(prototype.upvalues, funcState.nups);
        Constants._assert(funcState.f102774bl == null);
        this.fs = funcState.prev;
    }

    public void closegoto(int i10, Labeldesc labeldesc) {
        FuncState funcState = this.fs;
        Labeldesc[] labeldescArr = this.dyd.gt;
        Labeldesc labeldesc2 = labeldescArr[i10];
        Constants._assert(labeldesc2.name.eq_b(labeldesc.name));
        short s10 = labeldesc2.nactvar;
        if (s10 < labeldesc.nactvar) {
            LuaString luaString = funcState.getlocvar(s10).varname;
            LuaC.CompileState compileState = this.f102780L;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<goto ");
            stringBuffer.append((Object) labeldesc2.name);
            stringBuffer.append("> at line ");
            stringBuffer.append(labeldesc2.line);
            stringBuffer.append(" jumps into the scope of local '");
            stringBuffer.append(luaString.tojstring());
            stringBuffer.append("'");
            semerror(compileState.pushfstring(stringBuffer.toString()));
        }
        funcState.patchlist(labeldesc2.f102788pc, labeldesc.f102788pc);
        System.arraycopy(labeldescArr, i10 + 1, labeldescArr, i10, (this.dyd.n_gt - i10) - 1);
        Dyndata dyndata = this.dyd;
        int i11 = dyndata.n_gt - 1;
        dyndata.n_gt = i11;
        labeldescArr[i11] = null;
    }

    public void codeclosure(expdesc expdescVar) {
        FuncState funcState = this.fs.prev;
        expdescVar.init(11, funcState.codeABx(37, 0, funcState.np - 1));
        funcState.exp2nextreg(expdescVar);
    }

    public void codestring(expdesc expdescVar, LuaString luaString) {
        expdescVar.init(4, this.fs.stringK(luaString));
    }

    public int cond() {
        expdesc expdescVar = new expdesc();
        expr(expdescVar);
        if (expdescVar.f102791k == 1) {
            expdescVar.f102791k = 3;
        }
        this.fs.goiftrue(expdescVar);
        return expdescVar.f102790f.f102779i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005e, code lost:
    
        if (r8.lookahead.token != 61) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void constructor(expdesc expdescVar) {
        FuncState funcState = this.fs;
        int i10 = this.linenumber;
        int codeABC = funcState.codeABC(11, 0, 0, 0);
        ConsControl consControl = new ConsControl();
        consControl.tostore = 0;
        consControl.f102784nh = 0;
        consControl.f102783na = 0;
        consControl.f102785t = expdescVar;
        expdescVar.init(11, codeABC);
        consControl.f102786v.init(0, 0);
        funcState.exp2nextreg(expdescVar);
        checknext(123);
        while (true) {
            Constants._assert(consControl.f102786v.f102791k == 0 || consControl.tostore > 0);
            if (this.f102781t.token == 125) {
                break;
            }
            funcState.closelistfield(consControl);
            int i11 = this.f102781t.token;
            if (i11 != 91) {
                if (i11 == TK_NAME) {
                    lookahead();
                }
                listfield(consControl);
                if (testnext(44) && !testnext(59)) {
                    break;
                }
            }
            recfield(consControl);
            if (testnext(44)) {
            }
        }
        check_match(125, 123, i10);
        funcState.lastlistfield(consControl);
        InstructionPtr instructionPtr = new InstructionPtr(funcState.f102775f.code, codeABC);
        Constants.SETARG_B(instructionPtr, luaO_int2fb(consControl.f102783na));
        Constants.SETARG_C(instructionPtr, luaO_int2fb(consControl.f102784nh));
    }

    public boolean currIsNewline() {
        int i10 = this.current;
        return i10 == 10 || i10 == 13;
    }

    public void enterlevel() {
        LuaC.CompileState compileState = this.f102780L;
        int i10 = compileState.nCcalls + 1;
        compileState.nCcalls = i10;
        if (i10 > 200) {
            lexerror("chunk has too many syntax levels", 0);
        }
    }

    public void error_expected(int i10) {
        LuaC.CompileState compileState = this.f102780L;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(LUA_QS(token2str(i10)));
        stringBuffer.append(" expected");
        syntaxerror(compileState.pushfstring(stringBuffer.toString()));
    }

    public int exp1() {
        expdesc expdescVar = new expdesc();
        expr(expdescVar);
        int i10 = expdescVar.f102791k;
        this.fs.exp2nextreg(expdescVar);
        return i10;
    }

    public int explist(expdesc expdescVar) {
        expr(expdescVar);
        int i10 = 1;
        while (testnext(44)) {
            this.fs.exp2nextreg(expdescVar);
            expr(expdescVar);
            i10++;
        }
        return i10;
    }

    public void expr(expdesc expdescVar) {
        subexpr(expdescVar, 0);
    }

    public void exprstat() {
        FuncState funcState = this.fs;
        LHS_assign lHS_assign = new LHS_assign();
        suffixedexp(lHS_assign.f102787v);
        int i10 = this.f102781t.token;
        if (i10 == 61 || i10 == 44) {
            lHS_assign.prev = null;
            assignment(lHS_assign, 1);
        } else {
            check_condition(lHS_assign.f102787v.f102791k == 12, "syntax error");
            Constants.SETARG_C(funcState.getcodePtr(lHS_assign.f102787v), 1);
        }
    }

    public void fieldsel(expdesc expdescVar) {
        FuncState funcState = this.fs;
        expdesc expdescVar2 = new expdesc();
        funcState.exp2anyregup(expdescVar);
        next();
        checkname(expdescVar2);
        funcState.indexed(expdescVar, expdescVar2);
    }

    public void findgotos(Labeldesc labeldesc) {
        Labeldesc[] labeldescArr = this.dyd.gt;
        int i10 = this.fs.f102774bl.firstgoto;
        while (i10 < this.dyd.n_gt) {
            if (labeldescArr[i10].name.eq_b(labeldesc.name)) {
                closegoto(i10, labeldesc);
            } else {
                i10++;
            }
        }
    }

    public boolean findlabel(int i10) {
        FuncState.BlockCnt blockCnt = this.fs.f102774bl;
        Dyndata dyndata = this.dyd;
        Labeldesc labeldesc = dyndata.gt[i10];
        for (int i11 = blockCnt.firstlabel; i11 < dyndata.n_label; i11++) {
            Labeldesc labeldesc2 = dyndata.label[i11];
            if (labeldesc2.name.eq_b(labeldesc.name)) {
                short s10 = labeldesc.nactvar;
                short s11 = labeldesc2.nactvar;
                if (s10 > s11 && (blockCnt.upval || dyndata.n_label > blockCnt.firstlabel)) {
                    this.fs.patchclose(labeldesc.f102788pc, s11);
                }
                closegoto(i10, labeldesc2);
                return true;
            }
        }
        return false;
    }

    public void forbody(int i10, int i11, int i12, boolean z10) {
        int i13;
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        FuncState funcState = this.fs;
        adjustlocalvars(3);
        checknext(259);
        int codeAsBx = z10 ? funcState.codeAsBx(33, i10, -1) : funcState.jump();
        funcState.enterblock(blockCnt, false);
        adjustlocalvars(i12);
        funcState.reserveregs(i12);
        block();
        funcState.leaveblock();
        funcState.patchtohere(codeAsBx);
        if (z10) {
            i13 = 32;
        } else {
            funcState.codeABC(34, i10, 0, i12);
            funcState.fixline(i11);
            i10 += 2;
            i13 = 35;
        }
        funcState.patchlist(funcState.codeAsBx(i13, i10, -1), codeAsBx + 1);
        funcState.fixline(i11);
    }

    public void forlist(LuaString luaString) {
        FuncState funcState = this.fs;
        expdesc expdescVar = new expdesc();
        short s10 = funcState.freereg;
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_GENERATOR);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_STATE);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_CONTROL);
        new_localvar(luaString);
        int i10 = 4;
        while (testnext(44)) {
            new_localvar(str_checkname());
            i10++;
        }
        checknext(268);
        int i11 = this.linenumber;
        adjust_assign(3, explist(expdescVar), expdescVar);
        funcState.checkstack(3);
        forbody(s10, i11, i10 - 3, false);
    }

    public void fornum(LuaString luaString, int i10) {
        FuncState funcState = this.fs;
        short s10 = funcState.freereg;
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_INDEX);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_LIMIT);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_STEP);
        new_localvar(luaString);
        checknext(61);
        exp1();
        checknext(44);
        exp1();
        if (testnext(44)) {
            exp1();
        } else {
            funcState.codeABx(1, funcState.freereg, funcState.numberK(LuaInteger.valueOf(1)));
            funcState.reserveregs(1);
        }
        forbody(s10, i10, 1, true);
    }

    public void forstat(int i10) {
        FuncState funcState = this.fs;
        funcState.enterblock(new FuncState.BlockCnt(), true);
        next();
        LuaString str_checkname = str_checkname();
        int i11 = this.f102781t.token;
        if (i11 != 44) {
            if (i11 == 61) {
                fornum(str_checkname, i10);
            } else if (i11 != 268) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(LUA_QL("="));
                stringBuffer.append(" or ");
                stringBuffer.append(LUA_QL("in"));
                stringBuffer.append(" expected");
                syntaxerror(stringBuffer.toString());
            }
            check_match(262, 264, i10);
            funcState.leaveblock();
        }
        forlist(str_checkname);
        check_match(262, 264, i10);
        funcState.leaveblock();
    }

    public void funcargs(expdesc expdescVar, int i10) {
        int i11;
        FuncState funcState = this.fs;
        expdesc expdescVar2 = new expdesc();
        Token token = this.f102781t;
        int i12 = token.token;
        if (i12 == 40) {
            next();
            if (this.f102781t.token == 41) {
                expdescVar2.f102791k = 0;
            } else {
                explist(expdescVar2);
                funcState.setmultret(expdescVar2);
            }
            check_match(41, 40, i10);
        } else if (i12 == 123) {
            constructor(expdescVar2);
        } else if (i12 != TK_STRING) {
            syntaxerror("function arguments expected");
            return;
        } else {
            codestring(expdescVar2, token.seminfo.ts);
            next();
        }
        Constants._assert(expdescVar.f102791k == 6);
        int i13 = expdescVar.f102793u.info;
        if (hasmultret(expdescVar2.f102791k)) {
            i11 = -1;
        } else {
            if (expdescVar2.f102791k != 0) {
                funcState.exp2nextreg(expdescVar2);
            }
            i11 = funcState.freereg - (i13 + 1);
        }
        expdescVar.init(12, funcState.codeABC(29, i13, i11 + 1, 2));
        funcState.fixline(i10);
        funcState.freereg = (short) (i13 + 1);
    }

    public boolean funcname(expdesc expdescVar) {
        int i10;
        singlevar(expdescVar);
        while (true) {
            i10 = this.f102781t.token;
            if (i10 != 46) {
                break;
            }
            fieldsel(expdescVar);
        }
        if (i10 != 58) {
            return false;
        }
        fieldsel(expdescVar);
        return true;
    }

    public void funcstat(int i10) {
        expdesc expdescVar = new expdesc();
        expdesc expdescVar2 = new expdesc();
        next();
        body(expdescVar2, funcname(expdescVar), i10);
        this.fs.storevar(expdescVar, expdescVar2);
        this.fs.fixline(i10);
    }

    public int getbinopr(int i10) {
        if (i10 == 37) {
            return 4;
        }
        if (i10 == 45) {
            return 1;
        }
        if (i10 == 47) {
            return 3;
        }
        if (i10 == 60) {
            return 9;
        }
        if (i10 == 62) {
            return 11;
        }
        if (i10 == 94) {
            return 5;
        }
        if (i10 == 257) {
            return 13;
        }
        if (i10 == 272) {
            return 14;
        }
        if (i10 == 279) {
            return 6;
        }
        if (i10 == 42) {
            return 2;
        }
        if (i10 == 43) {
            return 0;
        }
        switch (i10) {
            case 281:
                return 8;
            case 282:
                return 12;
            case 283:
                return 10;
            case TK_NE:
                return 7;
            default:
                return 15;
        }
    }

    public int getunopr(int i10) {
        if (i10 == 35) {
            return 2;
        }
        if (i10 != 45) {
            return i10 != 271 ? 3 : 1;
        }
        return 0;
    }

    public void gotostat(int i10) {
        LuaString valueOf;
        int i11 = this.linenumber;
        if (testnext(266)) {
            valueOf = str_checkname();
        } else {
            next();
            valueOf = LuaString.valueOf("break");
        }
        LuaString luaString = valueOf;
        Dyndata dyndata = this.dyd;
        Labeldesc[] grow = Constants.grow(dyndata.gt, dyndata.n_gt + 1);
        dyndata.gt = grow;
        Dyndata dyndata2 = this.dyd;
        int i12 = dyndata2.n_gt;
        dyndata2.n_gt = i12 + 1;
        findlabel(newlabelentry(grow, i12, luaString, i11, i10));
    }

    public boolean hasmultret(int i10) {
        return i10 == 12 || i10 == 13;
    }

    public int hexvalue(int i10) {
        return i10 <= 57 ? i10 - 48 : i10 <= 70 ? i10 - 55 : i10 - 87;
    }

    public void ifstat(int i10) {
        IntPtr intPtr = new IntPtr(-1);
        do {
            test_then_block(intPtr);
        } while (this.f102781t.token == 261);
        if (testnext(260)) {
            block();
        }
        check_match(262, 267, i10);
        this.fs.patchtohere(intPtr.f102779i);
    }

    public void inclinenumber() {
        int i10 = this.current;
        Constants._assert(currIsNewline());
        nextChar();
        if (currIsNewline() && this.current != i10) {
            nextChar();
        }
        int i11 = this.linenumber + 1;
        this.linenumber = i11;
        if (i11 >= 2147483645) {
            syntaxerror("chunk has too many lines");
        }
    }

    public void labelstat(LuaString luaString, int i10) {
        FuncState funcState = this.fs;
        Dyndata dyndata = this.dyd;
        funcState.checkrepeated(dyndata.label, dyndata.n_label, luaString);
        checknext(285);
        Dyndata dyndata2 = this.dyd;
        Labeldesc[] grow = Constants.grow(dyndata2.label, dyndata2.n_label + 1);
        dyndata2.label = grow;
        Dyndata dyndata3 = this.dyd;
        int i11 = dyndata3.n_label;
        dyndata3.n_label = i11 + 1;
        int newlabelentry = newlabelentry(grow, i11, luaString, i10, this.fs.f102778pc);
        skipnoopstat();
        if (block_follow(false)) {
            this.dyd.label[newlabelentry].nactvar = this.fs.f102774bl.nactvar;
        }
        findgotos(this.dyd.label[newlabelentry]);
    }

    public void leavelevel() {
        LuaC.CompileState compileState = this.f102780L;
        compileState.nCcalls--;
    }

    public void lexerror(String str, int i10) {
        String chunkid = Lua.chunkid(this.source.tojstring());
        LuaC.CompileState compileState = this.f102780L;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(chunkid);
        stringBuffer.append(s.f32937c);
        stringBuffer.append(this.linenumber);
        stringBuffer.append(": ");
        stringBuffer.append(str);
        compileState.pushfstring(stringBuffer.toString());
        if (i10 != 0) {
            LuaC.CompileState compileState2 = this.f102780L;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("syntax error: ");
            stringBuffer2.append(str);
            stringBuffer2.append(" near ");
            stringBuffer2.append(txtToken(i10));
            compileState2.pushfstring(stringBuffer2.toString());
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(chunkid);
        stringBuffer3.append(s.f32937c);
        stringBuffer3.append(this.linenumber);
        stringBuffer3.append(": ");
        stringBuffer3.append(str);
        throw new LuaError(stringBuffer3.toString());
    }

    public void listfield(ConsControl consControl) {
        expr(consControl.f102786v);
        this.fs.checklimit(consControl.f102783na, 2147483645, "items in a constructor");
        consControl.f102783na++;
        consControl.tostore++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x0146, code lost:
    
        read_string(r1, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0149, code lost:
    
        return org.luaj.vm2.compiler.LexState.TK_STRING;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0138, code lost:
    
        nextChar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x013d, code lost:
    
        if (r6.current == 61) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x013f, code lost:
    
        return 61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0140, code lost:
    
        nextChar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0145, code lost:
    
        return 281;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x002e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x0031. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int llex(SemInfo semInfo) {
        int i10;
        int skip_sep;
        while (true) {
            this.nbuff = 0;
            while (true) {
                int i11 = this.current;
                if (i11 == -1) {
                    return TK_EOS;
                }
                if (i11 == 10 || i11 == 13) {
                    inclinenumber();
                } else if (i11 != 34 && i11 != 39) {
                    if (i11 == 91) {
                        int skip_sep2 = skip_sep();
                        if (skip_sep2 >= 0) {
                            read_long_string(semInfo, skip_sep2);
                            return TK_STRING;
                        }
                        if (skip_sep2 == -1) {
                            return 91;
                        }
                        lexerror("invalid long string delimiter", TK_STRING);
                    } else {
                        if (i11 == 126) {
                            nextChar();
                            if (this.current != 61) {
                                return 126;
                            }
                            nextChar();
                            return TK_NE;
                        }
                        if (i11 == 45) {
                            nextChar();
                            if (this.current != 45) {
                                return 45;
                            }
                            nextChar();
                            if (this.current == 91) {
                                skip_sep = skip_sep();
                                this.nbuff = 0;
                                if (skip_sep >= 0) {
                                    break;
                                }
                            }
                            while (!currIsNewline() && this.current != -1) {
                                nextChar();
                            }
                        } else {
                            if (i11 == 46) {
                                save_and_next();
                                if (check_next(".")) {
                                    return check_next(".") ? 280 : 279;
                                }
                                if (!isdigit(this.current)) {
                                    return 46;
                                }
                                read_numeral(semInfo);
                                return TK_NUMBER;
                            }
                            switch (i11) {
                                case 48:
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                case 56:
                                case 57:
                                    read_numeral(semInfo);
                                    return TK_NUMBER;
                                case 58:
                                    nextChar();
                                    if (this.current != 58) {
                                        return 58;
                                    }
                                    nextChar();
                                    return 285;
                                default:
                                    switch (i11) {
                                        case 60:
                                            nextChar();
                                            if (this.current != 61) {
                                                return 60;
                                            }
                                            nextChar();
                                            return 283;
                                        case 61:
                                            break;
                                        case 62:
                                            nextChar();
                                            if (this.current != 61) {
                                                return 62;
                                            }
                                            nextChar();
                                            return 282;
                                        default:
                                            if (isspace(i11)) {
                                                Constants._assert(!currIsNewline());
                                                nextChar();
                                                break;
                                            } else {
                                                if (isdigit(this.current)) {
                                                    read_numeral(semInfo);
                                                    return TK_NUMBER;
                                                }
                                                if (!isalpha(this.current) && (i10 = this.current) != 95) {
                                                    nextChar();
                                                    return i10;
                                                }
                                                while (true) {
                                                    save_and_next();
                                                    if (!isalnum(this.current) && this.current != 95) {
                                                        LuaString newstring = newstring(this.buff, 0, this.nbuff);
                                                        Hashtable hashtable = RESERVED;
                                                        if (hashtable.containsKey(newstring)) {
                                                            return ((Integer) hashtable.get(newstring)).intValue();
                                                        }
                                                        semInfo.ts = newstring;
                                                        return TK_NAME;
                                                    }
                                                }
                                            }
                                            break;
                                    }
                            }
                        }
                    }
                }
            }
            read_long_string(null, skip_sep);
        }
    }

    public void localfunc() {
        expdesc expdescVar = new expdesc();
        FuncState funcState = this.fs;
        new_localvar(str_checkname());
        adjustlocalvars(1);
        body(expdescVar, false, this.linenumber);
        funcState.getlocvar(funcState.nactvar - 1).startpc = funcState.f102778pc;
    }

    public void localstat() {
        expdesc expdescVar = new expdesc();
        int i10 = 0;
        int i11 = 0;
        do {
            new_localvar(str_checkname());
            i11++;
        } while (testnext(44));
        if (testnext(61)) {
            i10 = explist(expdescVar);
        } else {
            expdescVar.f102791k = 0;
        }
        adjust_assign(i11, i10, expdescVar);
        adjustlocalvars(i11);
    }

    public void lookahead() {
        Constants._assert(this.lookahead.token == TK_EOS);
        Token token = this.lookahead;
        token.token = llex(token.seminfo);
    }

    public void mainfunc(FuncState funcState) {
        open_func(funcState, new FuncState.BlockCnt());
        this.fs.f102775f.is_vararg = 1;
        expdesc expdescVar = new expdesc();
        expdescVar.init(7, 0);
        this.fs.newupvalue(this.envn, expdescVar);
        next();
        statlist();
        check(TK_EOS);
        close_func();
    }

    public void new_localvar(LuaString luaString) {
        int registerlocalvar = registerlocalvar(luaString);
        this.fs.checklimit(this.dyd.n_actvar + 1, 200, "local variables");
        Dyndata dyndata = this.dyd;
        Vardesc[] vardescArr = dyndata.actvar;
        if (vardescArr == null || dyndata.n_actvar + 1 > vardescArr.length) {
            dyndata.actvar = Constants.realloc(vardescArr, Math.max(1, dyndata.n_actvar * 2));
        }
        Dyndata dyndata2 = this.dyd;
        Vardesc[] vardescArr2 = dyndata2.actvar;
        int i10 = dyndata2.n_actvar;
        dyndata2.n_actvar = i10 + 1;
        vardescArr2[i10] = new Vardesc(registerlocalvar);
    }

    public void new_localvarliteral(String str) {
        new_localvar(newstring(str));
    }

    public int newlabelentry(Labeldesc[] labeldescArr, int i10, LuaString luaString, int i11, int i12) {
        labeldescArr[i10] = new Labeldesc(luaString, i12, i11, this.fs.nactvar);
        return i10;
    }

    public LuaString newstring(String str) {
        return this.f102780L.newTString(str);
    }

    public void next() {
        this.lastline = this.linenumber;
        Token token = this.lookahead;
        if (token.token != TK_EOS) {
            this.f102781t.set(token);
            this.lookahead.token = TK_EOS;
        } else {
            Token token2 = this.f102781t;
            token2.token = llex(token2.seminfo);
        }
    }

    public void nextChar() {
        try {
            this.current = this.f102782z.read();
        } catch (IOException e10) {
            e10.printStackTrace();
            this.current = -1;
        }
    }

    public void open_func(FuncState funcState, FuncState.BlockCnt blockCnt) {
        funcState.prev = this.fs;
        funcState.ls = this;
        this.fs = funcState;
        funcState.f102778pc = 0;
        funcState.lasttarget = -1;
        funcState.jpc = new IntPtr(-1);
        funcState.freereg = (short) 0;
        funcState.f102777nk = 0;
        funcState.np = 0;
        funcState.nups = (short) 0;
        funcState.nlocvars = (short) 0;
        funcState.nactvar = (short) 0;
        funcState.firstlocal = this.dyd.n_actvar;
        funcState.f102774bl = null;
        Prototype prototype = funcState.f102775f;
        prototype.source = this.source;
        prototype.maxstacksize = 2;
        funcState.enterblock(blockCnt, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0055, code lost:
    
        if (testnext(44) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        new_localvar(str_checkname());
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
    
        next();
        r1.is_vararg = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        adjustlocalvars(r2);
        r2 = r0.nactvar;
        r1.numparams = r2;
        r0.reserveregs(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000d, code lost:
    
        if (r5.f102781t.token != 41) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000f, code lost:
    
        r3 = r5.f102781t.token;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
    
        if (r3 == 280) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
    
        if (r3 == org.luaj.vm2.compiler.LexState.TK_NAME) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        r3 = new java.lang.StringBuffer();
        r3.append("<name> or ");
        r3.append(LUA_QL("..."));
        r3.append(" expected");
        syntaxerror(r3.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004d, code lost:
    
        if (r1.is_vararg != 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parlist() {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f102775f;
        int i10 = 0;
        prototype.is_vararg = 0;
    }

    public void primaryexp(expdesc expdescVar) {
        int i10 = this.f102781t.token;
        if (i10 == 40) {
            int i11 = this.linenumber;
            next();
            expr(expdescVar);
            check_match(41, 40, i11);
            this.fs.dischargevars(expdescVar);
            return;
        }
        if (i10 == TK_NAME) {
            singlevar(expdescVar);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("unexpected symbol ");
        stringBuffer.append(this.f102781t.token);
        stringBuffer.append(" (");
        stringBuffer.append((char) this.f102781t.token);
        stringBuffer.append(")");
        syntaxerror(stringBuffer.toString());
    }

    public void read_long_string(SemInfo semInfo, int i10) {
        String str;
        int i11;
        save_and_next();
        if (currIsNewline()) {
            inclinenumber();
        }
        boolean z10 = false;
        while (!z10) {
            int i12 = this.current;
            if (i12 == -1) {
                str = semInfo != null ? "unfinished long string" : "unfinished long comment";
                i11 = TK_EOS;
            } else if (i12 == 10 || i12 == 13) {
                save(10);
                inclinenumber();
                if (semInfo == null) {
                    this.nbuff = 0;
                }
            } else {
                i11 = 91;
                if (i12 != 91) {
                    if (i12 != 93) {
                        if (semInfo != null) {
                            save_and_next();
                        } else {
                            nextChar();
                        }
                    } else if (skip_sep() == i10) {
                        save_and_next();
                        z10 = true;
                    }
                } else if (skip_sep() == i10) {
                    save_and_next();
                    if (i10 == 0) {
                        str = "nesting of [[...]] is deprecated";
                    }
                }
            }
            lexerror(str, i11);
        }
        if (semInfo != null) {
            int i13 = i10 + 2;
            semInfo.ts = this.f102780L.newTString(LuaString.valueOf(this.buff, i13, this.nbuff - (i13 * 2)));
        }
    }

    public void read_numeral(SemInfo semInfo) {
        int i10 = this.current;
        Constants._assert(isdigit(i10));
        save_and_next();
        String str = (i10 == 48 && check_next("Xx")) ? "Pp" : "Ee";
        while (true) {
            if (check_next(str)) {
                check_next("+-");
            }
            if (!isxdigit(this.current) && this.current != 46) {
                save(0);
                str2d(new String(this.buff, 0, this.nbuff), semInfo);
                return;
            }
            save_and_next();
        }
    }

    public void read_string(int i10, SemInfo semInfo) {
        while (true) {
            save_and_next();
            while (true) {
                int i11 = this.current;
                if (i11 == i10) {
                    save_and_next();
                    semInfo.ts = this.f102780L.newTString(LuaString.valueOf(this.buff, 1, this.nbuff - 2));
                    return;
                }
                if (i11 != -1) {
                    int i12 = 10;
                    if (i11 == 10 || i11 == 13) {
                        lexerror("unfinished string", TK_STRING);
                    } else {
                        if (i11 != 92) {
                            break;
                        }
                        nextChar();
                        int i13 = this.current;
                        if (i13 == -1) {
                            continue;
                        } else if (i13 == 10 || i13 == 13) {
                            save(10);
                            inclinenumber();
                        } else {
                            if (i13 == 102) {
                                i12 = 12;
                            } else if (i13 != 110) {
                                if (i13 == 114) {
                                    i12 = 13;
                                } else if (i13 == 116) {
                                    i12 = 9;
                                } else if (i13 == 118) {
                                    i12 = 11;
                                } else if (i13 == 120) {
                                    i12 = readhexaesc();
                                } else if (i13 == 122) {
                                    while (true) {
                                        nextChar();
                                        while (isspace(this.current)) {
                                            if (currIsNewline()) {
                                                inclinenumber();
                                            }
                                        }
                                    }
                                } else if (i13 == 97) {
                                    i12 = 7;
                                } else if (i13 == 98) {
                                    i12 = 8;
                                } else {
                                    if (!isdigit(i13)) {
                                        break;
                                    }
                                    int i14 = 0;
                                    int i15 = 0;
                                    do {
                                        i14 = (i14 * 10) + (this.current - 48);
                                        nextChar();
                                        i15++;
                                        if (i15 >= 3) {
                                            break;
                                        }
                                    } while (isdigit(this.current));
                                    if (i14 > 255) {
                                        lexerror("escape sequence too large", TK_STRING);
                                    }
                                    save(i14);
                                }
                            }
                            save(i12);
                            nextChar();
                        }
                    }
                } else {
                    lexerror("unfinished string", TK_EOS);
                }
            }
        }
    }

    public int readhexaesc() {
        nextChar();
        int i10 = this.current;
        nextChar();
        int i11 = this.current;
        if (!isxdigit(i10) || !isxdigit(i11)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("hexadecimal digit expected 'x");
            stringBuffer.append((char) i10);
            stringBuffer.append((char) i11);
            lexerror(stringBuffer.toString(), TK_STRING);
        }
        return (hexvalue(i10) << 4) + hexvalue(i11);
    }

    public void recfield(ConsControl consControl) {
        FuncState funcState = this.fs;
        short s10 = funcState.freereg;
        expdesc expdescVar = new expdesc();
        expdesc expdescVar2 = new expdesc();
        if (this.f102781t.token == TK_NAME) {
            funcState.checklimit(consControl.f102784nh, 2147483645, "items in a constructor");
            checkname(expdescVar);
        } else {
            yindex(expdescVar);
        }
        consControl.f102784nh++;
        checknext(61);
        int exp2RK = funcState.exp2RK(expdescVar);
        expr(expdescVar2);
        funcState.codeABC(10, consControl.f102785t.f102793u.info, exp2RK, funcState.exp2RK(expdescVar2));
        funcState.freereg = s10;
    }

    public int registerlocalvar(LuaString luaString) {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f102775f;
        LocVars[] locVarsArr = prototype.locvars;
        if (locVarsArr == null || funcState.nlocvars + 1 > locVarsArr.length) {
            prototype.locvars = Constants.realloc(locVarsArr, (funcState.nlocvars * 2) + 1);
        }
        prototype.locvars[funcState.nlocvars] = new LocVars(luaString, 0, 0);
        short s10 = funcState.nlocvars;
        funcState.nlocvars = (short) (s10 + 1);
        return s10;
    }

    public void removevars(int i10) {
        FuncState funcState = this.fs;
        while (true) {
            short s10 = funcState.nactvar;
            if (s10 <= i10) {
                return;
            }
            short s11 = (short) (s10 - 1);
            funcState.nactvar = s11;
            funcState.getlocvar(s11).endpc = funcState.f102778pc;
        }
    }

    public void repeatstat(int i10) {
        FuncState funcState = this.fs;
        int i11 = funcState.getlabel();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        FuncState.BlockCnt blockCnt2 = new FuncState.BlockCnt();
        funcState.enterblock(blockCnt, true);
        funcState.enterblock(blockCnt2, false);
        next();
        statlist();
        check_match(277, 273, i10);
        int cond = cond();
        if (blockCnt2.upval) {
            funcState.patchclose(cond, blockCnt2.nactvar);
        }
        funcState.leaveblock();
        funcState.patchlist(cond, i11);
        funcState.leaveblock();
    }

    public void retstat() {
        int i10;
        FuncState funcState = this.fs;
        expdesc expdescVar = new expdesc();
        int i11 = 0;
        if (block_follow(true) || this.f102781t.token == 59) {
            i10 = 0;
        } else {
            i10 = explist(expdescVar);
            if (hasmultret(expdescVar.f102791k)) {
                funcState.setmultret(expdescVar);
                if (expdescVar.f102791k == 12 && i10 == 1) {
                    Constants.SET_OPCODE(funcState.getcodePtr(expdescVar), 30);
                    Constants._assert(Lua.GETARG_A(funcState.getcode(expdescVar)) == funcState.nactvar);
                }
                i11 = funcState.nactvar;
                i10 = -1;
            } else if (i10 == 1) {
                i11 = funcState.exp2anyreg(expdescVar);
            } else {
                funcState.exp2nextreg(expdescVar);
                short s10 = funcState.nactvar;
                Constants._assert(i10 == funcState.freereg - s10);
                i11 = s10;
            }
        }
        funcState.ret(i11, i10);
        testnext(59);
    }

    public void save(int i10) {
        char[] cArr = this.buff;
        if (cArr == null || this.nbuff + 1 > cArr.length) {
            this.buff = Constants.realloc(cArr, (this.nbuff * 2) + 1);
        }
        char[] cArr2 = this.buff;
        int i11 = this.nbuff;
        this.nbuff = i11 + 1;
        cArr2[i11] = (char) i10;
    }

    public void save_and_next() {
        save(this.current);
        nextChar();
    }

    public void semerror(String str) {
        this.f102781t.token = 0;
        syntaxerror(str);
    }

    public void setinput(LuaC.CompileState compileState, int i10, InputStream inputStream, LuaString luaString) {
        this.decpoint = Opcodes.OPC_iaload;
        this.f102780L = compileState;
        this.lookahead.token = TK_EOS;
        this.f102782z = inputStream;
        this.fs = null;
        this.linenumber = 1;
        this.lastline = 1;
        this.source = luaString;
        this.envn = LuaValue.ENV;
        this.nbuff = 0;
        this.current = i10;
        skipShebang();
    }

    public void simpleexp(expdesc expdescVar) {
        int i10;
        Token token = this.f102781t;
        int i11 = token.token;
        if (i11 == 123) {
            constructor(expdescVar);
            return;
        }
        if (i11 != 263) {
            if (i11 == 265) {
                next();
                body(expdescVar, false, this.linenumber);
                return;
            }
            if (i11 == 270) {
                expdescVar.init(1, 0);
            } else if (i11 == 276) {
                i10 = 2;
            } else if (i11 == 280) {
                FuncState funcState = this.fs;
                boolean z10 = funcState.f102775f.is_vararg != 0;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("cannot use ");
                stringBuffer.append(LUA_QL("..."));
                stringBuffer.append(" outside a vararg function");
                check_condition(z10, stringBuffer.toString());
                expdescVar.init(13, funcState.codeABC(38, 0, 1, 0));
            } else if (i11 == TK_NUMBER) {
                expdescVar.init(5, 0);
                expdescVar.f102793u.setNval(this.f102781t.seminfo.f102789r);
            } else {
                if (i11 != TK_STRING) {
                    suffixedexp(expdescVar);
                    return;
                }
                codestring(expdescVar, token.seminfo.ts);
            }
            next();
        }
        i10 = 3;
        expdescVar.init(i10, 0);
        next();
    }

    public void singlevar(expdesc expdescVar) {
        LuaString str_checkname = str_checkname();
        FuncState funcState = this.fs;
        boolean z10 = true;
        if (FuncState.singlevaraux(funcState, str_checkname, expdescVar, 1) == 0) {
            expdesc expdescVar2 = new expdesc();
            FuncState.singlevaraux(funcState, this.envn, expdescVar, 1);
            int i10 = expdescVar.f102791k;
            if (i10 != 7 && i10 != 8) {
                z10 = false;
            }
            Constants._assert(z10);
            codestring(expdescVar2, str_checkname);
            funcState.indexed(expdescVar, expdescVar2);
        }
    }

    public int skip_sep() {
        int i10;
        int i11 = this.current;
        int i12 = 0;
        Constants._assert(i11 == 91 || i11 == 93);
        save_and_next();
        while (true) {
            i10 = this.current;
            if (i10 != 61) {
                break;
            }
            save_and_next();
            i12++;
        }
        return i10 == i11 ? i12 : (-i12) - 1;
    }

    public void skipnoopstat() {
        while (true) {
            int i10 = this.f102781t.token;
            if (i10 != 59 && i10 != 285) {
                return;
            } else {
                statement();
            }
        }
    }

    public void statement() {
        int i10 = this.linenumber;
        enterlevel();
        int i11 = this.f102781t.token;
        if (i11 == 59) {
            next();
        } else if (i11 == 269) {
            next();
            if (testnext(265)) {
                localfunc();
            } else {
                localstat();
            }
        } else if (i11 == 278) {
            whilestat(i10);
        } else if (i11 != 285) {
            if (i11 != 258) {
                if (i11 == 259) {
                    next();
                    block();
                    check_match(262, 259, i10);
                } else if (i11 == 273) {
                    repeatstat(i10);
                } else if (i11 != 274) {
                    switch (i11) {
                        case 264:
                            forstat(i10);
                            break;
                        case 265:
                            funcstat(i10);
                            break;
                        case 266:
                            break;
                        case 267:
                            ifstat(i10);
                            break;
                        default:
                            exprstat();
                            break;
                    }
                } else {
                    next();
                    retstat();
                }
            }
            gotostat(this.fs.jump());
        } else {
            next();
            labelstat(str_checkname(), i10);
        }
        FuncState funcState = this.fs;
        int i12 = funcState.f102775f.maxstacksize;
        short s10 = funcState.freereg;
        Constants._assert(i12 >= s10 && s10 >= funcState.nactvar);
        FuncState funcState2 = this.fs;
        funcState2.freereg = funcState2.nactvar;
        leavelevel();
    }

    public void statlist() {
        while (!block_follow(true)) {
            int i10 = this.f102781t.token;
            statement();
            if (i10 == 274) {
                return;
            }
        }
    }

    public boolean str2d(String str, SemInfo semInfo) {
        semInfo.f102789r = (str.indexOf(110) >= 0 || str.indexOf(78) >= 0) ? LuaValue.ZERO : (str.indexOf(120) >= 0 || str.indexOf(88) >= 0) ? strx2number(str, semInfo) : LuaValue.valueOf(Double.parseDouble(str.trim()));
        return true;
    }

    public LuaString str_checkname() {
        check(TK_NAME);
        LuaString luaString = this.f102781t.seminfo.ts;
        next();
        return luaString;
    }

    public LuaValue strx2number(String str, SemInfo semInfo) {
        double d10;
        int i10;
        char c10;
        boolean z10;
        char[] charArray = str.toCharArray();
        int i11 = 0;
        int i12 = 0;
        while (i12 < charArray.length && isspace(charArray[i12])) {
            i12++;
        }
        if (i12 >= charArray.length || charArray[i12] != '-') {
            d10 = 1.0d;
        } else {
            i12++;
            d10 = -1.0d;
        }
        if (i12 + 2 >= charArray.length) {
            return LuaValue.ZERO;
        }
        int i13 = i12 + 1;
        if (charArray[i12] != '0') {
            return LuaValue.ZERO;
        }
        char c11 = charArray[i13];
        if (c11 != 'x' && c11 != 'X') {
            return LuaValue.ZERO;
        }
        int i14 = i12 + 2;
        double d11 = 0.0d;
        while (i14 < charArray.length && isxdigit(charArray[i14])) {
            d11 = (d11 * 16.0d) + hexvalue(charArray[i14]);
            i14++;
        }
        if (i14 >= charArray.length || charArray[i14] != '.') {
            i10 = 0;
        } else {
            i14++;
            i10 = 0;
            while (i14 < charArray.length && isxdigit(charArray[i14])) {
                d11 = (d11 * 16.0d) + hexvalue(charArray[i14]);
                i10 -= 4;
                i14++;
            }
        }
        if (i14 < charArray.length && ((c10 = charArray[i14]) == 'p' || c10 == 'P')) {
            int i15 = i14 + 1;
            if (i15 >= charArray.length || charArray[i15] != '-') {
                z10 = false;
            } else {
                i15 = i14 + 2;
                z10 = true;
            }
            while (i15 < charArray.length && isdigit(charArray[i15])) {
                i11 = ((i11 * 10) + charArray[i15]) - 48;
                i15++;
            }
            if (z10) {
                i11 = -i11;
            }
            i10 += i11;
        }
        return LuaValue.valueOf(d10 * d11 * MathLib.dpow_d(2.0d, i10));
    }

    public int subexpr(expdesc expdescVar, int i10) {
        enterlevel();
        int i11 = getunopr(this.f102781t.token);
        if (i11 != 3) {
            int i12 = this.linenumber;
            next();
            subexpr(expdescVar, 8);
            this.fs.prefix(i11, expdescVar, i12);
        } else {
            simpleexp(expdescVar);
        }
        int i13 = getbinopr(this.f102781t.token);
        while (i13 != 15 && priority[i13].left > i10) {
            expdesc expdescVar2 = new expdesc();
            int i14 = this.linenumber;
            next();
            this.fs.infix(i13, expdescVar);
            int subexpr = subexpr(expdescVar2, priority[i13].right);
            this.fs.posfix(i13, expdescVar, expdescVar2, i14);
            i13 = subexpr;
        }
        leavelevel();
        return i13;
    }

    public void suffixedexp(expdesc expdescVar) {
        int i10 = this.linenumber;
        primaryexp(expdescVar);
        while (true) {
            int i11 = this.f102781t.token;
            if (i11 != 40) {
                if (i11 == 46) {
                    fieldsel(expdescVar);
                } else if (i11 == 58) {
                    expdesc expdescVar2 = new expdesc();
                    next();
                    checkname(expdescVar2);
                    this.fs.self(expdescVar, expdescVar2);
                    funcargs(expdescVar, i10);
                } else if (i11 == 91) {
                    expdesc expdescVar3 = new expdesc();
                    this.fs.exp2anyregup(expdescVar);
                    yindex(expdescVar3);
                    this.fs.indexed(expdescVar, expdescVar3);
                } else if (i11 != 123 && i11 != TK_STRING) {
                    return;
                }
            }
            this.fs.exp2nextreg(expdescVar);
            funcargs(expdescVar, i10);
        }
    }

    public void syntaxerror(String str) {
        lexerror(str, this.f102781t.token);
    }

    public void test_then_block(IntPtr intPtr) {
        int jump;
        expdesc expdescVar = new expdesc();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        next();
        expr(expdescVar);
        checknext(275);
        int i10 = this.f102781t.token;
        if (i10 == 266 || i10 == 258) {
            this.fs.goiffalse(expdescVar);
            this.fs.enterblock(blockCnt, false);
            gotostat(expdescVar.f102792t.f102779i);
            skipnoopstat();
            if (block_follow(false)) {
                this.fs.leaveblock();
                return;
            }
            jump = this.fs.jump();
        } else {
            this.fs.goiftrue(expdescVar);
            this.fs.enterblock(blockCnt, false);
            jump = expdescVar.f102790f.f102779i;
        }
        statlist();
        this.fs.leaveblock();
        int i11 = this.f102781t.token;
        if (i11 == 260 || i11 == 261) {
            FuncState funcState = this.fs;
            funcState.concat(intPtr, funcState.jump());
        }
        this.fs.patchtohere(jump);
    }

    public boolean testnext(int i10) {
        if (this.f102781t.token != i10) {
            return false;
        }
        next();
        return true;
    }

    public String token2str(int i10) {
        LuaC.CompileState compileState;
        String valueOf;
        if (i10 >= 257) {
            return luaX_tokens[i10 - 257];
        }
        if (iscntrl(i10)) {
            compileState = this.f102780L;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("char(");
            stringBuffer.append(i10);
            stringBuffer.append(")");
            valueOf = stringBuffer.toString();
        } else {
            compileState = this.f102780L;
            valueOf = String.valueOf((char) i10);
        }
        return compileState.pushfstring(valueOf);
    }

    public String txtToken(int i10) {
        switch (i10) {
            case TK_NUMBER:
            case TK_NAME:
            case TK_STRING:
                return new String(this.buff, 0, this.nbuff);
            default:
                return token2str(i10);
        }
    }

    public void undefgoto(Labeldesc labeldesc) {
        StringBuffer stringBuffer;
        LuaC.CompileState compileState = this.f102780L;
        if (isReservedKeyword(labeldesc.name.tojstring())) {
            stringBuffer = new StringBuffer();
            stringBuffer.append("<");
            stringBuffer.append((Object) labeldesc.name);
            stringBuffer.append("> at line ");
            stringBuffer.append(labeldesc.line);
            stringBuffer.append(" not inside a loop");
        } else {
            stringBuffer = new StringBuffer();
            stringBuffer.append("no visible label '");
            stringBuffer.append((Object) labeldesc.name);
            stringBuffer.append("' for <goto> at line ");
            stringBuffer.append(labeldesc.line);
        }
        semerror(compileState.pushfstring(stringBuffer.toString()));
    }

    public void whilestat(int i10) {
        FuncState funcState = this.fs;
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        next();
        int i11 = funcState.getlabel();
        int cond = cond();
        funcState.enterblock(blockCnt, true);
        checknext(259);
        block();
        funcState.patchlist(funcState.jump(), i11);
        check_match(262, 278, i10);
        funcState.leaveblock();
        funcState.patchtohere(cond);
    }

    public void yindex(expdesc expdescVar) {
        next();
        expr(expdescVar);
        this.fs.exp2val(expdescVar);
        checknext(93);
    }

    public LuaString newstring(char[] cArr, int i10, int i11) {
        return this.f102780L.newTString(new String(cArr, i10, i11));
    }
}
