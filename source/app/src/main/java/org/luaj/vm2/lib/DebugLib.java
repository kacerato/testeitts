package org.luaj.vm2.lib;

import B0.C2324i;
import G0.C2595v;
import T5.b;
import android.provider.Telephony;
import b2.AbstractC3834c;
import b3.s;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.util.logging.Logger;
import oc.c;
import org.eclipse.jdt.internal.core.JavaElement;
import org.luaj.vm2.Globals;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaBoolean;
import org.luaj.vm2.LuaClosure;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaNil;
import org.luaj.vm2.LuaNumber;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaThread;
import org.luaj.vm2.LuaUserdata;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Print;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.UpValue;
import org.luaj.vm2.Upvaldesc;
import org.luaj.vm2.Varargs;

public class DebugLib extends TwoArgFunction {
    private static final LuaString ACTIVELINES;
    private static final LuaString CALL;
    public static boolean CALLS;
    private static final LuaString COUNT;
    private static final LuaString CURRENTLINE;
    private static final LuaString FUNC;
    private static final LuaString ISTAILCALL;
    private static final LuaString ISVARARG;
    private static final LuaString LASTLINEDEFINED;
    private static final LuaString LINE;
    private static final LuaString LINEDEFINED;
    private static final LuaString LUA;
    private static final LuaString NAME;
    private static final LuaString NAMEWHAT;
    private static final LuaString NPARAMS;
    private static final LuaString NUPS;
    private static final LuaString QMARK;
    private static final LuaString RETURN;
    private static final LuaString SHORT_SRC;
    private static final LuaString SOURCE;
    public static boolean TRACE;
    private static final LuaString WHAT;
    Globals globals;

    public static class CallFrame {

        LuaFunction f102794f;

        int f102795pc;
        CallFrame previous;
        LuaValue[] stack;
        int top;

        Varargs f102796v;

        public int linedefined() {
            if (this.f102794f.isclosure()) {
                return this.f102794f.checkclosure().f102760p.linedefined;
            }
            return -1;
        }

        public int currentline() {
            int[] iArr;
            int i10;
            if (this.f102794f.isclosure() && (iArr = this.f102794f.checkclosure().f102760p.lineinfo) != null && (i10 = this.f102795pc) >= 0 && i10 < iArr.length) {
                return iArr[i10];
            }
            return -1;
        }

        public Varargs getLocal(int i10) {
            LuaString luaString = getlocalname(i10);
            return luaString != null ? LuaValue.varargsOf(luaString, this.stack[i10 - 1]) : LuaValue.NIL;
        }

        public LuaString getlocalname(int i10) {
            if (this.f102794f.isclosure()) {
                return this.f102794f.checkclosure().f102760p.getlocalname(i10, this.f102795pc);
            }
            return null;
        }

        public void instr(int i10, Varargs varargs, int i11) {
            this.f102795pc = i10;
            this.f102796v = varargs;
            this.top = i11;
            if (DebugLib.TRACE) {
                Print.printState(this.f102794f.checkclosure(), i10, this.stack, i11, varargs);
            }
        }

        public void reset() {
            this.f102794f = null;
            this.f102796v = null;
            this.stack = null;
        }

        public void set(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
            this.f102794f = luaClosure;
            this.f102796v = varargs;
            this.stack = luaValueArr;
        }

        public Varargs setLocal(int i10, LuaValue luaValue) {
            LuaString luaString = getlocalname(i10);
            if (luaString == null) {
                return LuaValue.NIL;
            }
            this.stack[i10 - 1] = luaValue;
            return luaString;
        }

        public String shortsource() {
            return this.f102794f.isclosure() ? this.f102794f.checkclosure().f102760p.shortsource() : "[Java]";
        }

        public String sourceline() {
            if (!this.f102794f.isclosure()) {
                return this.f102794f.tojstring();
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f102794f.checkclosure().f102760p.shortsource());
            stringBuffer.append(s.f32937c);
            stringBuffer.append(currentline());
            return stringBuffer.toString();
        }

        public void set(LuaFunction luaFunction) {
            this.f102794f = luaFunction;
        }
    }

    public static class CallStack {
        static final CallFrame[] EMPTY = new CallFrame[0];
        CallFrame[] frame = EMPTY;
        int calls = 0;

        private synchronized CallFrame pushcall() {
            CallFrame[] callFrameArr;
            int i10;
            try {
                int i11 = this.calls;
                CallFrame[] callFrameArr2 = this.frame;
                if (i11 >= callFrameArr2.length) {
                    int max = Math.max(4, (callFrameArr2.length * 3) / 2);
                    CallFrame[] callFrameArr3 = new CallFrame[max];
                    CallFrame[] callFrameArr4 = this.frame;
                    System.arraycopy(callFrameArr4, 0, callFrameArr3, 0, callFrameArr4.length);
                    for (int length = this.frame.length; length < max; length++) {
                        callFrameArr3[length] = new CallFrame();
                    }
                    this.frame = callFrameArr3;
                    for (int i12 = 1; i12 < max; i12++) {
                        callFrameArr3[i12].previous = callFrameArr3[i12 - 1];
                    }
                }
                callFrameArr = this.frame;
                i10 = this.calls;
                this.calls = i10 + 1;
            } catch (Throwable th2) {
                throw th2;
            }
            return callFrameArr[i10];
        }

        public synchronized DebugInfo auxgetinfo(String str, LuaFunction luaFunction, CallFrame callFrame) {
            DebugInfo debugInfo;
            CallFrame callFrame2;
            NameWhat nameWhat;
            try {
                debugInfo = new DebugInfo();
                int length = str.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char charAt = str.charAt(i10);
                    if (charAt == 'S') {
                        debugInfo.funcinfo(luaFunction);
                    } else if (charAt == 'l') {
                        debugInfo.currentline = (callFrame == null || !callFrame.f102794f.isclosure()) ? -1 : callFrame.currentline();
                    } else if (charAt == 'n') {
                        if (callFrame != null && (callFrame2 = callFrame.previous) != null && callFrame2.f102794f.isclosure() && (nameWhat = DebugLib.getfuncname(callFrame.previous)) != null) {
                            debugInfo.name = nameWhat.name;
                            debugInfo.namewhat = nameWhat.namewhat;
                        }
                        if (debugInfo.namewhat == null) {
                            debugInfo.namewhat = "";
                            debugInfo.name = null;
                        }
                    } else if (charAt == 't') {
                        debugInfo.istailcall = false;
                    } else if (charAt == 'u') {
                        boolean z10 = true;
                        if (luaFunction == null || !luaFunction.isclosure()) {
                            debugInfo.nups = (short) 0;
                            debugInfo.isvararg = true;
                            debugInfo.nparams = (short) 0;
                        } else {
                            Prototype prototype = luaFunction.checkclosure().f102760p;
                            debugInfo.nups = (short) prototype.upvalues.length;
                            debugInfo.nparams = (short) prototype.numparams;
                            if (prototype.is_vararg == 0) {
                                z10 = false;
                            }
                            debugInfo.isvararg = z10;
                        }
                    }
                }
            } finally {
            }
            return debugInfo;
        }

        public synchronized int currentline() {
            int i10;
            i10 = this.calls;
            return i10 > 0 ? this.frame[i10 - 1].currentline() : -1;
        }

        public synchronized CallFrame findCallFrame(LuaValue luaValue) {
            int i10 = 1;
            while (true) {
                int i11 = this.calls;
                if (i10 > i11) {
                    return null;
                }
                CallFrame[] callFrameArr = this.frame;
                if (callFrameArr[i11 - i10].f102794f == luaValue) {
                    return callFrameArr[i10];
                }
                i10++;
            }
        }

        public synchronized CallFrame getCallFrame(int i10) {
            if (i10 >= 1) {
                int i11 = this.calls;
                if (i10 <= i11) {
                    return this.frame[i11 - i10];
                }
            }
            return null;
        }

        public final synchronized void onCall(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
            pushcall().set(luaClosure, varargs, luaValueArr);
        }

        public final synchronized void onInstruction(int i10, Varargs varargs, int i11) {
            int i12 = this.calls;
            if (i12 > 0) {
                this.frame[i12 - 1].instr(i10, varargs, i11);
            }
        }

        public final synchronized void onReturn() {
            int i10 = this.calls;
            if (i10 > 0) {
                CallFrame[] callFrameArr = this.frame;
                int i11 = i10 - 1;
                this.calls = i11;
                callFrameArr[i11].reset();
            }
        }

        public synchronized String traceback(int i10) {
            StringBuffer stringBuffer;
            String stringBuffer2;
            try {
                stringBuffer = new StringBuffer();
                stringBuffer.append("stack traceback:");
                while (true) {
                    int i11 = i10 + 1;
                    CallFrame callFrame = getCallFrame(i10);
                    if (callFrame != null) {
                        stringBuffer.append("\n\t");
                        stringBuffer.append(callFrame.shortsource());
                        stringBuffer.append(':');
                        if (callFrame.currentline() > 0) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append(callFrame.currentline());
                            stringBuffer3.append(s.f32937c);
                            stringBuffer.append(stringBuffer3.toString());
                        }
                        stringBuffer.append(" in ");
                        DebugInfo auxgetinfo = auxgetinfo(C2324i.f1246e, callFrame.f102794f, callFrame);
                        if (callFrame.linedefined() == 0) {
                            stringBuffer2 = "main chunk";
                        } else if (auxgetinfo.name != null) {
                            stringBuffer.append("function '");
                            stringBuffer.append(auxgetinfo.name);
                            stringBuffer.append(JavaElement.JEM_MODULAR_CLASSFILE);
                            i10 = i11;
                        } else {
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append("function <");
                            stringBuffer4.append(callFrame.shortsource());
                            stringBuffer4.append(s.f32937c);
                            stringBuffer4.append(callFrame.linedefined());
                            stringBuffer4.append(">");
                            stringBuffer2 = stringBuffer4.toString();
                        }
                        stringBuffer.append(stringBuffer2);
                        i10 = i11;
                    } else {
                        stringBuffer.append("\n\t[Java]: in ?");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return stringBuffer.toString();
        }

        public final synchronized void onCall(LuaFunction luaFunction) {
            pushcall().set(luaFunction);
        }
    }

    public static class DebugInfo {

        CallFrame f102797cf;
        int currentline;
        boolean istailcall;
        boolean isvararg;
        int lastlinedefined;
        int linedefined;
        String name;
        String namewhat;
        short nparams;
        short nups;
        String short_src;
        String source;
        String what;

        public void funcinfo(LuaFunction luaFunction) {
            String name;
            if (luaFunction.isclosure()) {
                Prototype prototype = luaFunction.checkclosure().f102760p;
                LuaString luaString = prototype.source;
                this.source = luaString != null ? luaString.tojstring() : "=?";
                int i10 = prototype.linedefined;
                this.linedefined = i10;
                this.lastlinedefined = prototype.lastlinedefined;
                this.what = i10 == 0 ? b.f24045b : "Lua";
                name = prototype.shortsource();
            } else {
                this.source = "=[Java]";
                this.linedefined = -1;
                this.lastlinedefined = -1;
                this.what = "Java";
                name = luaFunction.name();
            }
            this.short_src = name;
        }
    }

    public static class NameWhat {
        final String name;
        final String namewhat;

        public NameWhat(String str, String str2) {
            this.name = str;
            this.namewhat = str2;
        }
    }

    public static final class debug extends ZeroArgFunction {
        @Override
        public LuaValue call() {
            return LuaValue.NONE;
        }
    }

    public final class gethook extends VarArgFunction {
        public gethook() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaThread.State state = (varargs.narg() > 0 ? varargs.checkthread(1) : DebugLib.this.globals.running).state;
            LuaValue luaValue = state.hookfunc;
            if (luaValue == null) {
                luaValue = LuaValue.NIL;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(state.hookcall ? AbstractC3834c.f32824b1 : "");
            stringBuffer.append(state.hookline ? "l" : "");
            stringBuffer.append(state.hookrtrn ? a.f72595c : "");
            return LuaValue.varargsOf(luaValue, LuaValue.valueOf(stringBuffer.toString()), LuaValue.valueOf(state.hookcount));
        }
    }

    public final class getinfo extends VarArgFunction {
        public getinfo() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i10;
            CallFrame findCallFrame;
            int i11 = 1;
            if (varargs.isthread(1)) {
                luaThread = varargs.checkthread(1);
                i10 = 2;
            } else {
                luaThread = DebugLib.this.globals.running;
                i10 = 1;
            }
            LuaValue arg = varargs.arg(i10);
            String optjstring = varargs.optjstring(i10 + 1, "flnStu");
            CallStack callstack = DebugLib.this.callstack(luaThread);
            if (arg.isnumber()) {
                findCallFrame = callstack.getCallFrame(arg.toint());
                if (findCallFrame == null) {
                    return LuaValue.NONE;
                }
                arg = findCallFrame.f102794f;
            } else {
                if (!arg.isfunction()) {
                    return LuaValue.argerror(i10, "function or level");
                }
                findCallFrame = callstack.findCallFrame(arg);
            }
            DebugInfo auxgetinfo = callstack.auxgetinfo(optjstring, (LuaFunction) arg, findCallFrame);
            LuaTable luaTable = new LuaTable();
            if (optjstring.indexOf(83) >= 0) {
                luaTable.set(DebugLib.WHAT, DebugLib.LUA);
                luaTable.set(DebugLib.SOURCE, LuaValue.valueOf(auxgetinfo.source));
                luaTable.set(DebugLib.SHORT_SRC, LuaValue.valueOf(auxgetinfo.short_src));
                luaTable.set(DebugLib.LINEDEFINED, LuaValue.valueOf(auxgetinfo.linedefined));
                luaTable.set(DebugLib.LASTLINEDEFINED, LuaValue.valueOf(auxgetinfo.lastlinedefined));
            }
            if (optjstring.indexOf(108) >= 0) {
                luaTable.set(DebugLib.CURRENTLINE, LuaValue.valueOf(auxgetinfo.currentline));
            }
            if (optjstring.indexOf(117) >= 0) {
                luaTable.set(DebugLib.NUPS, LuaValue.valueOf((int) auxgetinfo.nups));
                luaTable.set(DebugLib.NPARAMS, LuaValue.valueOf((int) auxgetinfo.nparams));
                luaTable.set(DebugLib.ISVARARG, auxgetinfo.isvararg ? LuaValue.ONE : LuaValue.ZERO);
            }
            if (optjstring.indexOf(110) >= 0) {
                LuaString luaString = DebugLib.NAME;
                String str = auxgetinfo.name;
                if (str == null) {
                    str = "?";
                }
                luaTable.set(luaString, LuaValue.valueOf(str));
                luaTable.set(DebugLib.NAMEWHAT, LuaValue.valueOf(auxgetinfo.namewhat));
            }
            if (optjstring.indexOf(116) >= 0) {
                luaTable.set(DebugLib.ISTAILCALL, LuaValue.ZERO);
            }
            if (optjstring.indexOf(76) >= 0) {
                LuaTable luaTable2 = new LuaTable();
                luaTable.set(DebugLib.ACTIVELINES, luaTable2);
                while (true) {
                    CallFrame callFrame = callstack.getCallFrame(i11);
                    if (callFrame == null) {
                        break;
                    }
                    if (callFrame.f102794f == arg) {
                        luaTable2.insert(-1, LuaValue.valueOf(callFrame.currentline()));
                    }
                    i11++;
                }
            }
            if (optjstring.indexOf(102) >= 0 && arg != null) {
                luaTable.set(DebugLib.FUNC, arg);
            }
            return luaTable;
        }
    }

    public final class getlocal extends VarArgFunction {
        public getlocal() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            int i10;
            LuaThread luaThread;
            if (varargs.isthread(1)) {
                luaThread = varargs.checkthread(1);
                i10 = 2;
            } else {
                i10 = 1;
                luaThread = DebugLib.this.globals.running;
            }
            int i11 = i10 + 1;
            int checkint = varargs.checkint(i10);
            int checkint2 = varargs.checkint(i11);
            CallFrame callFrame = DebugLib.this.callstack(luaThread).getCallFrame(checkint);
            return callFrame != null ? callFrame.getLocal(checkint2) : LuaValue.NONE;
        }
    }

    public final class getmetatable extends LibFunction {
        public getmetatable() {
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.getmetatable();
            return luaValue2 != null ? luaValue2 : LuaValue.NIL;
        }
    }

    public final class getregistry extends ZeroArgFunction {
        public getregistry() {
        }

        @Override
        public LuaValue call() {
            return DebugLib.this.globals;
        }
    }

    public static final class getupvalue extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosure;
            LuaString findupvalue;
            LuaFunction checkfunction = varargs.checkfunction(1);
            int checkint = varargs.checkint(2);
            return (!(checkfunction instanceof LuaClosure) || (findupvalue = DebugLib.findupvalue((luaClosure = (LuaClosure) checkfunction), checkint)) == null) ? LuaValue.NIL : LuaValue.varargsOf(findupvalue, luaClosure.upValues[checkint - 1].getValue());
        }
    }

    public static final class getuservalue extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return luaValue.isuserdata() ? luaValue : LuaValue.NIL;
        }
    }

    public final class sethook extends VarArgFunction {
        public sethook() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i10;
            if (varargs.isthread(1)) {
                luaThread = varargs.checkthread(1);
                i10 = 2;
            } else {
                luaThread = DebugLib.this.globals.running;
                i10 = 1;
            }
            LuaFunction optfunction = varargs.optfunction(i10, null);
            String optjstring = varargs.optjstring(i10 + 1, "");
            int optint = varargs.optint(i10 + 2, 0);
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            for (int i11 = 0; i11 < optjstring.length(); i11++) {
                char charAt = optjstring.charAt(i11);
                if (charAt == 'c') {
                    z10 = true;
                } else if (charAt == 'l') {
                    z11 = true;
                } else if (charAt == 'r') {
                    z12 = true;
                }
            }
            LuaThread.State state = luaThread.state;
            state.hookfunc = optfunction;
            state.hookcall = z10;
            state.hookline = z11;
            state.hookcount = optint;
            state.hookrtrn = z12;
            return LuaValue.NONE;
        }
    }

    public final class setlocal extends VarArgFunction {
        public setlocal() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            int i10;
            LuaThread luaThread;
            if (varargs.isthread(1)) {
                luaThread = varargs.checkthread(1);
                i10 = 2;
            } else {
                i10 = 1;
                luaThread = DebugLib.this.globals.running;
            }
            int checkint = varargs.checkint(i10);
            int checkint2 = varargs.checkint(i10 + 1);
            LuaValue arg = varargs.arg(i10 + 2);
            CallFrame callFrame = DebugLib.this.callstack(luaThread).getCallFrame(checkint);
            return callFrame != null ? callFrame.setLocal(checkint2, arg) : LuaValue.NONE;
        }
    }

    public final class setmetatable extends TwoArgFunction {
        public setmetatable() {
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            LuaTable opttable = luaValue2.opttable(null);
            int type = luaValue.type();
            if (type == 0) {
                LuaNil.s_metatable = opttable;
            } else if (type == 1) {
                LuaBoolean.s_metatable = opttable;
            } else if (type == 3) {
                LuaNumber.s_metatable = opttable;
            } else if (type == 4) {
                LuaString.s_metatable = opttable;
            } else if (type == 6) {
                LuaFunction.s_metatable = opttable;
            } else if (type != 8) {
                luaValue.setmetatable(opttable);
            } else {
                LuaThread.s_metatable = opttable;
            }
            return luaValue;
        }
    }

    public final class setupvalue extends VarArgFunction {
        public setupvalue() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosure;
            LuaString findupvalue;
            LuaFunction checkfunction = varargs.checkfunction(1);
            int checkint = varargs.checkint(2);
            LuaValue arg = varargs.arg(3);
            if (!(checkfunction instanceof LuaClosure) || (findupvalue = DebugLib.findupvalue((luaClosure = (LuaClosure) checkfunction), checkint)) == null) {
                return LuaValue.NIL;
            }
            luaClosure.upValues[checkint - 1].setValue(arg);
            return findupvalue;
        }
    }

    public final class setuservalue extends VarArgFunction {
        public setuservalue() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            varargs.checkuserdata(1);
            LuaValue checkvalue = varargs.checkvalue(2);
            LuaUserdata luaUserdata = (LuaUserdata) varargs.arg1();
            luaUserdata.m_instance = checkvalue.checkuserdata();
            luaUserdata.m_metatable = checkvalue.getmetatable();
            return LuaValue.NONE;
        }
    }

    public final class traceback extends VarArgFunction {
        public traceback() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread;
            int i10;
            if (varargs.isthread(1)) {
                luaThread = varargs.checkthread(1);
                i10 = 2;
            } else {
                luaThread = DebugLib.this.globals.running;
                i10 = 1;
            }
            int i11 = i10 + 1;
            String optjstring = varargs.optjstring(i10, null);
            String traceback = DebugLib.this.callstack(luaThread).traceback(varargs.optint(i11, 1));
            if (optjstring != null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(optjstring);
                stringBuffer.append("\n");
                stringBuffer.append(traceback);
                traceback = stringBuffer.toString();
            }
            return LuaValue.valueOf(traceback);
        }
    }

    public final class upvalueid extends VarArgFunction {
        public upvalueid() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            UpValue[] upValueArr;
            LuaFunction checkfunction = varargs.checkfunction(1);
            int checkint = varargs.checkint(2);
            return (!(checkfunction instanceof LuaClosure) || (upValueArr = ((LuaClosure) checkfunction).upValues) == null || checkint <= 0 || checkint > upValueArr.length) ? LuaValue.NIL : LuaValue.valueOf(upValueArr[checkint - 1].hashCode());
        }
    }

    public final class upvaluejoin extends VarArgFunction {
        public upvaluejoin() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaClosure checkclosure = varargs.checkclosure(1);
            int checkint = varargs.checkint(2);
            LuaClosure checkclosure2 = varargs.checkclosure(3);
            int checkint2 = varargs.checkint(4);
            if (checkint < 1 || checkint > checkclosure.upValues.length) {
                argerror("index out of range");
            }
            if (checkint2 < 1 || checkint2 > checkclosure2.upValues.length) {
                argerror("index out of range");
            }
            checkclosure.upValues[checkint - 1] = checkclosure2.upValues[checkint2 - 1];
            return LuaValue.NONE;
        }
    }

    static {
        try {
            CALLS = System.getProperty("CALLS") != null;
        } catch (Exception unused) {
        }
        try {
            TRACE = System.getProperty("TRACE") != null;
        } catch (Exception unused2) {
        }
        LUA = LuaValue.valueOf("Lua");
        QMARK = LuaValue.valueOf("?");
        CALL = LuaValue.valueOf("call");
        LINE = LuaValue.valueOf("line");
        COUNT = LuaValue.valueOf(c.f98682m);
        RETURN = LuaValue.valueOf("return");
        FUNC = LuaValue.valueOf("func");
        ISTAILCALL = LuaValue.valueOf("istailcall");
        ISVARARG = LuaValue.valueOf("isvararg");
        NUPS = LuaValue.valueOf("nups");
        NPARAMS = LuaValue.valueOf("nparams");
        NAME = LuaValue.valueOf("name");
        NAMEWHAT = LuaValue.valueOf("namewhat");
        WHAT = LuaValue.valueOf("what");
        SOURCE = LuaValue.valueOf("source");
        SHORT_SRC = LuaValue.valueOf("short_src");
        LINEDEFINED = LuaValue.valueOf("linedefined");
        LASTLINEDEFINED = LuaValue.valueOf("lastlinedefined");
        CURRENTLINE = LuaValue.valueOf("currentline");
        ACTIVELINES = LuaValue.valueOf("activelines");
    }

    public static int findsetreg(Prototype prototype, int i10, int i11) {
        int i12 = -1;
        int i13 = 0;
        while (i13 < i10) {
            int i14 = prototype.code[i13];
            int GET_OPCODE = Lua.GET_OPCODE(i14);
            int GETARG_A = Lua.GETARG_A(i14);
            if (GET_OPCODE != 4) {
                if (GET_OPCODE == 23) {
                    int GETARG_sBx = Lua.GETARG_sBx(i14);
                    int i15 = i13 + 1 + GETARG_sBx;
                    if (i13 < i15 && i15 <= i10) {
                        i13 += GETARG_sBx;
                    }
                } else if (GET_OPCODE == 27) {
                    if (i11 != GETARG_A) {
                    }
                    i12 = i13;
                } else if (GET_OPCODE == 34) {
                    if (i11 < GETARG_A + 2) {
                    }
                    i12 = i13;
                } else if (GET_OPCODE == 29 || GET_OPCODE == 30) {
                    if (i11 < GETARG_A) {
                    }
                    i12 = i13;
                } else if (Lua.testAMode(GET_OPCODE)) {
                    if (i11 != GETARG_A) {
                    }
                    i12 = i13;
                }
                i13++;
            } else {
                int GETARG_B = Lua.GETARG_B(i14);
                if (GETARG_A <= i11) {
                    if (i11 > GETARG_A + GETARG_B) {
                    }
                    i12 = i13;
                }
                i13++;
            }
        }
        return i12;
    }

    public static LuaString findupvalue(LuaClosure luaClosure, int i10) {
        UpValue[] upValueArr = luaClosure.upValues;
        if (upValueArr == null || i10 <= 0 || i10 > upValueArr.length) {
            return null;
        }
        Upvaldesc[] upvaldescArr = luaClosure.f102760p.upvalues;
        if (upvaldescArr != null && i10 <= upvaldescArr.length) {
            return upvaldescArr[i10 - 1].name;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(".");
        stringBuffer.append(i10);
        return LuaString.valueOf(stringBuffer.toString());
    }

    public static NameWhat getfuncname(CallFrame callFrame) {
        LuaString luaString;
        if (!callFrame.f102794f.isclosure()) {
            return new NameWhat(callFrame.f102794f.classnamestub(), "Java");
        }
        Prototype prototype = callFrame.f102794f.checkclosure().f102760p;
        int i10 = callFrame.f102795pc;
        int i11 = prototype.code[i10];
        switch (Lua.GET_OPCODE(i11)) {
            case 6:
            case 7:
            case 12:
                luaString = LuaValue.INDEX;
                break;
            case 8:
            case 10:
                luaString = LuaValue.NEWINDEX;
                break;
            case 9:
            case 11:
            case 20:
            case 23:
            case 27:
            case 28:
            case 31:
            case 32:
            case 33:
            default:
                return null;
            case 13:
                luaString = LuaValue.ADD;
                break;
            case 14:
                luaString = LuaValue.SUB;
                break;
            case 15:
                luaString = LuaValue.MUL;
                break;
            case 16:
                luaString = LuaValue.DIV;
                break;
            case 17:
                luaString = LuaValue.MOD;
                break;
            case 18:
                luaString = LuaValue.POW;
                break;
            case 19:
                luaString = LuaValue.UNM;
                break;
            case 21:
                luaString = LuaValue.LEN;
                break;
            case 22:
                luaString = LuaValue.CONCAT;
                break;
            case 24:
                luaString = LuaValue.EQ;
                break;
            case 25:
                luaString = LuaValue.LT;
                break;
            case 26:
                luaString = LuaValue.LE;
                break;
            case 29:
            case 30:
                return getobjname(prototype, i10, Lua.GETARG_A(i11));
            case 34:
                return new NameWhat("(for iterator)", "(for iterator");
        }
        return new NameWhat(luaString.tojstring(), "metamethod");
    }

    public static NameWhat getobjname(Prototype prototype, int i10, int i11) {
        LuaString luaString;
        LuaString luaString2 = prototype.getlocalname(i11 + 1, i10);
        if (luaString2 != null) {
            return new NameWhat(luaString2.tojstring(), C2595v.f7483b);
        }
        int findsetreg = findsetreg(prototype, i10, i11);
        if (findsetreg == -1) {
            return null;
        }
        int i12 = prototype.code[findsetreg];
        int GET_OPCODE = Lua.GET_OPCODE(i12);
        if (GET_OPCODE == 0) {
            int GETARG_A = Lua.GETARG_A(i12);
            int GETARG_B = Lua.GETARG_B(i12);
            if (GETARG_B < GETARG_A) {
                return getobjname(prototype, findsetreg, GETARG_B);
            }
            return null;
        }
        if (GET_OPCODE == 1 || GET_OPCODE == 2) {
            int GETARG_Bx = Lua.GET_OPCODE(i12) == 1 ? Lua.GETARG_Bx(i12) : Lua.GETARG_Ax(prototype.code[findsetreg + 1]);
            if (prototype.f102764k[GETARG_Bx].isstring()) {
                return new NameWhat(prototype.f102764k[GETARG_Bx].strvalue().tojstring(), "constant");
            }
            return null;
        }
        if (GET_OPCODE == 5) {
            int GETARG_B2 = Lua.GETARG_B(i12);
            Upvaldesc[] upvaldescArr = prototype.upvalues;
            return new NameWhat((GETARG_B2 < upvaldescArr.length ? upvaldescArr[GETARG_B2].name : QMARK).tojstring(), "upvalue");
        }
        if (GET_OPCODE != 6 && GET_OPCODE != 7) {
            if (GET_OPCODE != 12) {
                return null;
            }
            return new NameWhat(kname(prototype, Lua.GETARG_C(i12)).tojstring(), "method");
        }
        int GETARG_C = Lua.GETARG_C(i12);
        int GETARG_B3 = Lua.GETARG_B(i12);
        if (Lua.GET_OPCODE(i12) == 7) {
            luaString = prototype.getlocalname(GETARG_B3 + 1, findsetreg);
        } else {
            Upvaldesc[] upvaldescArr2 = prototype.upvalues;
            luaString = GETARG_B3 < upvaldescArr2.length ? upvaldescArr2[GETARG_B3].name : QMARK;
        }
        return new NameWhat(kname(prototype, GETARG_C).tojstring(), (luaString == null || !luaString.eq_b(LuaValue.ENV)) ? "field" : Logger.GLOBAL_LOGGER_NAME);
    }

    public static LuaString kname(Prototype prototype, int i10) {
        return (Lua.ISK(i10) && prototype.f102764k[Lua.INDEXK(i10)].isstring()) ? prototype.f102764k[Lua.INDEXK(i10)].strvalue() : QMARK;
    }

    public static void lua_assert(boolean z10) {
        if (!z10) {
            throw new RuntimeException("lua_assert failed");
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals checkglobals = luaValue2.checkglobals();
        this.globals = checkglobals;
        checkglobals.debuglib = this;
        LuaTable luaTable = new LuaTable();
        luaTable.set("debug", new debug());
        luaTable.set("gethook", new gethook());
        luaTable.set("getinfo", new getinfo());
        luaTable.set("getlocal", new getlocal());
        luaTable.set("getmetatable", new getmetatable());
        luaTable.set("getregistry", new getregistry());
        luaTable.set("getupvalue", new getupvalue());
        luaTable.set("getuservalue", new getuservalue());
        luaTable.set("sethook", new sethook());
        luaTable.set("setlocal", new setlocal());
        luaTable.set("setmetatable", new setmetatable());
        luaTable.set("setupvalue", new setupvalue());
        luaTable.set("setuservalue", new setuservalue());
        luaTable.set("traceback", new traceback());
        luaTable.set("upvalueid", new upvalueid());
        luaTable.set("upvaluejoin", new upvaluejoin());
        luaValue2.set("debug", luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("debug", luaTable);
        return luaTable;
    }

    public void callHook(LuaThread.State state, LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValue3;
        if (state.inhook || (luaValue3 = state.hookfunc) == null) {
            return;
        }
        state.inhook = true;
        try {
            try {
                luaValue3.call(luaValue, luaValue2);
            } catch (LuaError e10) {
                throw e10;
            } catch (RuntimeException e11) {
                throw new LuaError(e11);
            }
        } finally {
            state.inhook = false;
        }
    }

    public CallStack callstack() {
        return callstack(this.globals.running);
    }

    public void onCall(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onCall(luaClosure, varargs, luaValueArr);
        if (state.hookcall) {
            callHook(state, CALL, LuaValue.NIL);
        }
    }

    public void onInstruction(int i10, Varargs varargs, int i11) {
        int currentline;
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onInstruction(i10, varargs, i11);
        if (state.hookfunc == null) {
            return;
        }
        int i12 = state.hookcount;
        if (i12 > 0) {
            int i13 = state.bytecodes + 1;
            state.bytecodes = i13;
            if (i13 % i12 == 0) {
                callHook(state, COUNT, LuaValue.NIL);
            }
        }
        if (!state.hookline || (currentline = callstack().currentline()) == state.lastline) {
            return;
        }
        state.lastline = currentline;
        callHook(state, LINE, LuaValue.valueOf(currentline));
    }

    public void onReturn() {
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onReturn();
        if (state.hookrtrn) {
            callHook(state, RETURN, LuaValue.NIL);
        }
    }

    public String traceback(int i10) {
        return callstack().traceback(i10);
    }

    public CallStack callstack(LuaThread luaThread) {
        if (luaThread.callstack == null) {
            luaThread.callstack = new CallStack();
        }
        return (CallStack) luaThread.callstack;
    }

    public void onCall(LuaFunction luaFunction) {
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onCall(luaFunction);
        if (state.hookcall) {
            callHook(state, CALL, LuaValue.NIL);
        }
    }
}
