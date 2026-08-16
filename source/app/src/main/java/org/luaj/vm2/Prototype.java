package org.luaj.vm2;

import b3.s;

public class Prototype {
    public int[] code;
    public int is_vararg;

    public LuaValue[] f102764k;
    public int lastlinedefined;
    public int linedefined;
    public int[] lineinfo;
    public LocVars[] locvars;
    public int maxstacksize;
    public int numparams;

    public Prototype[] f102765p;
    public LuaString source;
    public Upvaldesc[] upvalues;
    private static final Upvaldesc[] NOUPVALUES = new Upvaldesc[0];
    private static final Prototype[] NOSUBPROTOS = new Prototype[0];

    public Prototype() {
        this.f102765p = NOSUBPROTOS;
        this.upvalues = NOUPVALUES;
    }

    public LuaString getlocalname(int i10, int i11) {
        int i12 = 0;
        while (true) {
            LocVars[] locVarsArr = this.locvars;
            if (i12 >= locVarsArr.length) {
                return null;
            }
            LocVars locVars = locVarsArr[i12];
            if (locVars.startpc > i11) {
                return null;
            }
            if (i11 < locVars.endpc && i10 - 1 == 0) {
                return locVars.varname;
            }
            i12++;
        }
    }

    public String shortsource() {
        String str = this.source.tojstring();
        return (str.startsWith("@") || str.startsWith("=")) ? str.substring(1) : str.startsWith("\u001b") ? LoadState.SOURCE_BINARY_STRING : str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((Object) this.source);
        stringBuffer.append(s.f32937c);
        stringBuffer.append(this.linedefined);
        stringBuffer.append("-");
        stringBuffer.append(this.lastlinedefined);
        return stringBuffer.toString();
    }

    public Prototype(int i10) {
        this.f102765p = NOSUBPROTOS;
        this.upvalues = new Upvaldesc[i10];
    }
}
