package org.luaj.vm2;

import b3.s;
import org.luaj.vm2.lib.DebugLib;

public class LuaClosure extends LuaFunction {
    private static final UpValue[] NOUPVALUES = new UpValue[0];
    final Globals globals;

    public final Prototype f102760p;
    public UpValue[] upValues;

    public LuaClosure(Prototype prototype, LuaValue luaValue) {
        this.f102760p = prototype;
        Upvaldesc[] upvaldescArr = prototype.upvalues;
        if (upvaldescArr == null || upvaldescArr.length == 0) {
            this.upValues = NOUPVALUES;
        } else {
            UpValue[] upValueArr = new UpValue[upvaldescArr.length];
            this.upValues = upValueArr;
            upValueArr[0] = new UpValue(new LuaValue[]{luaValue}, 0);
        }
        this.globals = luaValue instanceof Globals ? (Globals) luaValue : null;
    }

    private UpValue findupval(LuaValue[] luaValueArr, short s10, UpValue[] upValueArr) {
        int length = upValueArr.length;
        for (UpValue upValue : upValueArr) {
            if (upValue != null && upValue.index == s10) {
                return upValue;
            }
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (upValueArr[i10] == null) {
                UpValue upValue2 = new UpValue(luaValueArr, s10);
                upValueArr[i10] = upValue2;
                return upValue2;
            }
        }
        LuaValue.error("No space for upvalue");
        return null;
    }

    private void processErrorHooks(LuaError luaError, Prototype prototype, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        LuaString luaString = prototype.source;
        String str = "?";
        stringBuffer.append(luaString != null ? luaString.tojstring() : "?");
        stringBuffer.append(s.f32937c);
        int[] iArr = prototype.lineinfo;
        if (iArr != null && i10 >= 0 && i10 < iArr.length) {
            str = String.valueOf(iArr[i10]);
        }
        stringBuffer.append(str);
        luaError.fileline = stringBuffer.toString();
        luaError.traceback = errorHook(luaError.getMessage(), luaError.level);
    }

    @Override
    public final LuaValue call() {
        LuaValue[] luaValueArr = new LuaValue[this.f102760p.maxstacksize];
        for (int i10 = 0; i10 < this.f102760p.numparams; i10++) {
            luaValueArr[i10] = LuaValue.NIL;
        }
        return execute(luaValueArr, LuaValue.NONE).arg1();
    }

    @Override
    public LuaClosure checkclosure() {
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 3, instructions: 3 */
    public String errorHook(String str, int i10) {
        Globals globals = this.globals;
        if (globals == null) {
            return str;
        }
        LuaThread luaThread = globals.running;
        LuaValue luaValue = luaThread.errorfunc;
        if (luaValue != null) {
            luaThread.errorfunc = null;
            try {
                String str2 = luaValue.call(LuaValue.valueOf(str)).tojstring();
                luaThread.errorfunc = luaValue;
                return str2;
            } catch (Throwable unused) {
                luaThread.errorfunc = luaValue;
                return "error in error handling";
            }
        }
        if (globals.debuglib == null) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("\n");
        stringBuffer.append(this.globals.debuglib.traceback(i10));
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0476, code lost:
    
        if (r3 != r8) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01bd, code lost:
    
        if (r8.gteq_b(r3) != false) goto L78;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x004e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:83:0x0352. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Varargs execute(LuaValue[] luaValueArr, Varargs varargs) {
        DebugLib debugLib;
        DebugLib debugLib2;
        DebugLib debugLib3;
        DebugLib debugLib4;
        Varargs varargsOf;
        DebugLib debugLib5;
        DebugLib debugLib6;
        DebugLib debugLib7;
        DebugLib debugLib8;
        DebugLib debugLib9;
        int[] iArr;
        LuaValue value;
        LuaValue luaValue;
        LuaValue luaValue2;
        boolean z10;
        Varargs invoke;
        Varargs varargsOf2;
        int i10;
        Upvaldesc[] upvaldescArr;
        DebugLib debugLib10;
        DebugLib debugLib11;
        Varargs varargs2 = varargs;
        Varargs varargs3 = LuaValue.NONE;
        Prototype prototype = this.f102760p;
        int[] iArr2 = prototype.code;
        LuaValue[] luaValueArr2 = prototype.f102764k;
        UpValue[] upValueArr = prototype.f102765p.length > 0 ? new UpValue[luaValueArr.length] : null;
        Globals globals = this.globals;
        if (globals != null && (debugLib11 = globals.debuglib) != null) {
            debugLib11.onCall(this, varargs2, luaValueArr);
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            try {
                try {
                    try {
                        Globals globals2 = this.globals;
                        if (globals2 != null && (debugLib10 = globals2.debuglib) != null) {
                            debugLib10.onInstruction(i11, varargs3, i12);
                        }
                        int i13 = iArr2[i11];
                        int i14 = (i13 >> 6) & 255;
                        int i15 = i13 & 63;
                        switch (i15) {
                            case 0:
                                iArr = iArr2;
                                luaValueArr[i14] = luaValueArr[i13 >>> 23];
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 1:
                                iArr = iArr2;
                                luaValueArr[i14] = luaValueArr2[i13 >>> 14];
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 2:
                            default:
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("Illegal opcode: ");
                                stringBuffer.append(i15);
                                throw new IllegalArgumentException(stringBuffer.toString());
                            case 3:
                                iArr = iArr2;
                                luaValueArr[i14] = (i13 >>> 23) != 0 ? LuaValue.TRUE : LuaValue.FALSE;
                                if ((i13 & Lua.MASK_C) != 0) {
                                    i11++;
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 4:
                                iArr = iArr2;
                                int i16 = i13 >>> 23;
                                while (true) {
                                    int i17 = i16 - 1;
                                    if (i16 >= 0) {
                                        luaValueArr[i14] = LuaValue.NIL;
                                        i14++;
                                        i16 = i17;
                                    } else {
                                        i10 = 1;
                                        i11 += i10;
                                        varargs2 = varargs;
                                        iArr2 = iArr;
                                    }
                                }
                            case 5:
                                iArr = iArr2;
                                luaValueArr[i14] = this.upValues[i13 >>> 23].getValue();
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 6:
                                iArr = iArr2;
                                LuaValue value2 = this.upValues[i13 >>> 23].getValue();
                                int i18 = i13 >> 14;
                                int i19 = i18 & 511;
                                luaValueArr[i14] = value2.get(i19 > 255 ? luaValueArr2[i18 & 255] : luaValueArr[i19]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 7:
                                iArr = iArr2;
                                LuaValue luaValue3 = luaValueArr[i13 >>> 23];
                                int i20 = i13 >> 14;
                                int i21 = i20 & 511;
                                luaValueArr[i14] = luaValue3.get(i21 > 255 ? luaValueArr2[i20 & 255] : luaValueArr[i21]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 8:
                                iArr = iArr2;
                                value = this.upValues[i14].getValue();
                                int i22 = i13 >>> 23;
                                luaValue = i22 > 255 ? luaValueArr2[i22 & 255] : luaValueArr[i22];
                                int i23 = i13 >> 14;
                                int i24 = i23 & 511;
                                luaValue2 = i24 > 255 ? luaValueArr2[i23 & 255] : luaValueArr[i24];
                                value.set(luaValue, luaValue2);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 9:
                                iArr = iArr2;
                                this.upValues[i13 >>> 23].setValue(luaValueArr[i14]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 10:
                                iArr = iArr2;
                                value = luaValueArr[i14];
                                int i25 = i13 >>> 23;
                                luaValue = i25 > 255 ? luaValueArr2[i25 & 255] : luaValueArr[i25];
                                int i26 = i13 >> 14;
                                int i27 = i26 & 511;
                                luaValue2 = i27 > 255 ? luaValueArr2[i26 & 255] : luaValueArr[i27];
                                value.set(luaValue, luaValue2);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 11:
                                iArr = iArr2;
                                luaValueArr[i14] = new LuaTable(i13 >>> 23, (i13 >> 14) & 511);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 12:
                                iArr = iArr2;
                                LuaValue luaValue4 = luaValueArr[i13 >>> 23];
                                luaValueArr[i14 + 1] = luaValue4;
                                int i28 = i13 >> 14;
                                int i29 = i28 & 511;
                                luaValueArr[i14] = luaValue4.get(i29 > 255 ? luaValueArr2[i28 & 255] : luaValueArr[i29]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 13:
                                iArr = iArr2;
                                int i30 = i13 >>> 23;
                                int i31 = i13 >> 14;
                                int i32 = i31 & 511;
                                luaValueArr[i14] = (i30 > 255 ? luaValueArr2[i30 & 255] : luaValueArr[i30]).add(i32 > 255 ? luaValueArr2[i31 & 255] : luaValueArr[i32]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 14:
                                iArr = iArr2;
                                int i33 = i13 >>> 23;
                                int i34 = i13 >> 14;
                                int i35 = i34 & 511;
                                luaValueArr[i14] = (i33 > 255 ? luaValueArr2[i33 & 255] : luaValueArr[i33]).sub(i35 > 255 ? luaValueArr2[i34 & 255] : luaValueArr[i35]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 15:
                                iArr = iArr2;
                                int i36 = i13 >>> 23;
                                int i37 = i13 >> 14;
                                int i38 = i37 & 511;
                                luaValueArr[i14] = (i36 > 255 ? luaValueArr2[i36 & 255] : luaValueArr[i36]).mul(i38 > 255 ? luaValueArr2[i37 & 255] : luaValueArr[i38]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 16:
                                iArr = iArr2;
                                int i39 = i13 >>> 23;
                                int i40 = i13 >> 14;
                                int i41 = i40 & 511;
                                luaValueArr[i14] = (i39 > 255 ? luaValueArr2[i39 & 255] : luaValueArr[i39]).div(i41 > 255 ? luaValueArr2[i40 & 255] : luaValueArr[i41]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 17:
                                iArr = iArr2;
                                int i42 = i13 >>> 23;
                                int i43 = i13 >> 14;
                                int i44 = i43 & 511;
                                luaValueArr[i14] = (i42 > 255 ? luaValueArr2[i42 & 255] : luaValueArr[i42]).mod(i44 > 255 ? luaValueArr2[i43 & 255] : luaValueArr[i44]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 18:
                                iArr = iArr2;
                                int i45 = i13 >>> 23;
                                int i46 = i13 >> 14;
                                int i47 = i46 & 511;
                                luaValueArr[i14] = (i45 > 255 ? luaValueArr2[i45 & 255] : luaValueArr[i45]).pow(i47 > 255 ? luaValueArr2[i46 & 255] : luaValueArr[i47]);
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 19:
                                iArr = iArr2;
                                luaValueArr[i14] = luaValueArr[i13 >>> 23].neg();
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 20:
                                iArr = iArr2;
                                luaValueArr[i14] = luaValueArr[i13 >>> 23].not();
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 21:
                                iArr = iArr2;
                                luaValueArr[i14] = luaValueArr[i13 >>> 23].len();
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 22:
                                iArr = iArr2;
                                int i48 = i13 >>> 23;
                                int i49 = (i13 >> 14) & 511;
                                if (i49 > i48 + 1) {
                                    Buffer buffer = luaValueArr[i49].buffer();
                                    while (true) {
                                        i49--;
                                        if (i49 >= i48) {
                                            buffer = luaValueArr[i49].concat(buffer);
                                        } else {
                                            luaValueArr[i14] = buffer.value();
                                        }
                                    }
                                } else {
                                    luaValueArr[i14] = luaValueArr[i49 - 1].concat(luaValueArr[i49]);
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 23:
                                iArr = iArr2;
                                i11 += (i13 >>> 14) - Lua.MAXARG_sBx;
                                if (i14 > 0) {
                                    int i50 = i14 - 1;
                                    int length = upValueArr.length;
                                    while (true) {
                                        length--;
                                        if (length >= 0) {
                                            UpValue upValue = upValueArr[length];
                                            if (upValue != null && upValue.index >= i50) {
                                                upValue.close();
                                                upValueArr[length] = null;
                                            }
                                        }
                                    }
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                                break;
                            case 24:
                                iArr = iArr2;
                                int i51 = i13 >>> 23;
                                int i52 = i13 >> 14;
                                int i53 = i52 & 511;
                                if ((i51 > 255 ? luaValueArr2[i51 & 255] : luaValueArr[i51]).eq_b(i53 > 255 ? luaValueArr2[i52 & 255] : luaValueArr[i53]) != (i14 != 0)) {
                                    i11++;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 25:
                                iArr = iArr2;
                                int i54 = i13 >>> 23;
                                int i55 = i13 >> 14;
                                int i56 = i55 & 511;
                                if ((i54 > 255 ? luaValueArr2[i54 & 255] : luaValueArr[i54]).lt_b(i56 > 255 ? luaValueArr2[i55 & 255] : luaValueArr[i56]) != (i14 != 0)) {
                                    i11++;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 26:
                                iArr = iArr2;
                                int i57 = i13 >>> 23;
                                int i58 = i13 >> 14;
                                int i59 = i58 & 511;
                                boolean lteq_b = (i57 > 255 ? luaValueArr2[i57 & 255] : luaValueArr[i57]).lteq_b(i59 > 255 ? luaValueArr2[i58 & 255] : luaValueArr[i59]);
                                if (i14 != 0) {
                                    z10 = true;
                                    break;
                                } else {
                                    z10 = false;
                                    break;
                                }
                            case 27:
                                iArr = iArr2;
                                if (luaValueArr[i14].toboolean() != ((i13 & Lua.MASK_C) != 0)) {
                                    i11++;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 28:
                                iArr = iArr2;
                                LuaValue luaValue5 = luaValueArr[i13 >>> 23];
                                if (luaValue5.toboolean() == ((i13 & Lua.MASK_C) != 0)) {
                                    luaValueArr[i14] = luaValue5;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                }
                                i11++;
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 29:
                                iArr = iArr2;
                                switch (i13 & Lua.MASK_Bx) {
                                    case 8388608:
                                        invoke = luaValueArr[i14].invoke(LuaValue.NONE);
                                        i12 = i14 + invoke.narg();
                                        varargs3 = invoke;
                                        i10 = 1;
                                        break;
                                    case 8404992:
                                        luaValueArr[i14].call();
                                        i10 = 1;
                                        break;
                                    case 8421376:
                                        luaValueArr[i14] = luaValueArr[i14].call();
                                        i10 = 1;
                                        break;
                                    case 16777216:
                                        invoke = luaValueArr[i14].invoke(luaValueArr[i14 + 1]);
                                        i12 = i14 + invoke.narg();
                                        varargs3 = invoke;
                                        i10 = 1;
                                        break;
                                    case 16793600:
                                        luaValueArr[i14].call(luaValueArr[i14 + 1]);
                                        i10 = 1;
                                        break;
                                    case 16809984:
                                        luaValueArr[i14] = luaValueArr[i14].call(luaValueArr[i14 + 1]);
                                        i10 = 1;
                                        break;
                                    case 25182208:
                                        luaValueArr[i14].call(luaValueArr[i14 + 1], luaValueArr[i14 + 2]);
                                        i10 = 1;
                                        break;
                                    case 25198592:
                                        luaValueArr[i14] = luaValueArr[i14].call(luaValueArr[i14 + 1], luaValueArr[i14 + 2]);
                                        i10 = 1;
                                        break;
                                    case 33570816:
                                        luaValueArr[i14].call(luaValueArr[i14 + 1], luaValueArr[i14 + 2], luaValueArr[i14 + 3]);
                                        i10 = 1;
                                        break;
                                    case 33587200:
                                        luaValueArr[i14] = luaValueArr[i14].call(luaValueArr[i14 + 1], luaValueArr[i14 + 2], luaValueArr[i14 + 3]);
                                        i10 = 1;
                                        break;
                                    default:
                                        int i60 = i13 >>> 23;
                                        int i61 = (i13 >> 14) & 511;
                                        LuaValue luaValue6 = luaValueArr[i14];
                                        if (i60 > 0) {
                                            varargsOf2 = LuaValue.varargsOf(luaValueArr, i14 + 1, i60 - 1);
                                        } else {
                                            int i62 = i14 + 1;
                                            varargsOf2 = LuaValue.varargsOf(luaValueArr, i62, (i12 - varargs3.narg()) - i62, varargs3);
                                        }
                                        Varargs invoke2 = luaValue6.invoke(varargsOf2);
                                        if (i61 > 0) {
                                            invoke2.copyto(luaValueArr, i14, i61 - 1);
                                            invoke = LuaValue.NONE;
                                        } else {
                                            i12 = i14 + invoke2.narg();
                                            invoke = invoke2.dealias();
                                        }
                                        varargs3 = invoke;
                                        i10 = 1;
                                        break;
                                }
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 30:
                                int i63 = (-8388608) & i13;
                                if (i63 == 8388608) {
                                    TailcallVarargs tailcallVarargs = new TailcallVarargs(luaValueArr[i14], LuaValue.NONE);
                                    if (upValueArr != null) {
                                        int length2 = upValueArr.length;
                                        while (true) {
                                            length2--;
                                            if (length2 >= 0) {
                                                UpValue upValue2 = upValueArr[length2];
                                                if (upValue2 != null) {
                                                    upValue2.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals3 = this.globals;
                                    if (globals3 != null && (debugLib = globals3.debuglib) != null) {
                                        debugLib.onReturn();
                                    }
                                    return tailcallVarargs;
                                }
                                if (i63 == 16777216) {
                                    TailcallVarargs tailcallVarargs2 = new TailcallVarargs(luaValueArr[i14], luaValueArr[i14 + 1]);
                                    if (upValueArr != null) {
                                        int length3 = upValueArr.length;
                                        while (true) {
                                            length3--;
                                            if (length3 >= 0) {
                                                UpValue upValue3 = upValueArr[length3];
                                                if (upValue3 != null) {
                                                    upValue3.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals4 = this.globals;
                                    if (globals4 != null && (debugLib2 = globals4.debuglib) != null) {
                                        debugLib2.onReturn();
                                    }
                                    return tailcallVarargs2;
                                }
                                if (i63 == 25165824) {
                                    TailcallVarargs tailcallVarargs3 = new TailcallVarargs(luaValueArr[i14], LuaValue.varargsOf(luaValueArr[i14 + 1], luaValueArr[i14 + 2]));
                                    if (upValueArr != null) {
                                        int length4 = upValueArr.length;
                                        while (true) {
                                            length4--;
                                            if (length4 >= 0) {
                                                UpValue upValue4 = upValueArr[length4];
                                                if (upValue4 != null) {
                                                    upValue4.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals5 = this.globals;
                                    if (globals5 != null && (debugLib3 = globals5.debuglib) != null) {
                                        debugLib3.onReturn();
                                    }
                                    return tailcallVarargs3;
                                }
                                if (i63 == 33554432) {
                                    TailcallVarargs tailcallVarargs4 = new TailcallVarargs(luaValueArr[i14], LuaValue.varargsOf(luaValueArr[i14 + 1], luaValueArr[i14 + 2], luaValueArr[i14 + 3]));
                                    if (upValueArr != null) {
                                        int length5 = upValueArr.length;
                                        while (true) {
                                            length5--;
                                            if (length5 >= 0) {
                                                UpValue upValue5 = upValueArr[length5];
                                                if (upValue5 != null) {
                                                    upValue5.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals6 = this.globals;
                                    if (globals6 != null && (debugLib4 = globals6.debuglib) != null) {
                                        debugLib4.onReturn();
                                    }
                                    return tailcallVarargs4;
                                }
                                int i64 = i13 >>> 23;
                                if (i64 > 0) {
                                    varargsOf = LuaValue.varargsOf(luaValueArr, i14 + 1, i64 - 1);
                                } else {
                                    int i65 = i14 + 1;
                                    varargsOf = LuaValue.varargsOf(luaValueArr, i65, (i12 - varargs3.narg()) - i65, varargs3);
                                }
                                TailcallVarargs tailcallVarargs5 = new TailcallVarargs(luaValueArr[i14], varargsOf);
                                if (upValueArr != null) {
                                    int length6 = upValueArr.length;
                                    while (true) {
                                        length6--;
                                        if (length6 >= 0) {
                                            UpValue upValue6 = upValueArr[length6];
                                            if (upValue6 != null) {
                                                upValue6.close();
                                            }
                                        }
                                    }
                                }
                                Globals globals7 = this.globals;
                                if (globals7 != null && (debugLib5 = globals7.debuglib) != null) {
                                    debugLib5.onReturn();
                                }
                                return tailcallVarargs5;
                            case 31:
                                int i66 = i13 >>> 23;
                                if (i66 == 0) {
                                    Varargs varargsOf3 = LuaValue.varargsOf(luaValueArr, i14, (i12 - varargs3.narg()) - i14, varargs3);
                                    if (upValueArr != null) {
                                        int length7 = upValueArr.length;
                                        while (true) {
                                            length7--;
                                            if (length7 >= 0) {
                                                UpValue upValue7 = upValueArr[length7];
                                                if (upValue7 != null) {
                                                    upValue7.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals8 = this.globals;
                                    if (globals8 != null && (debugLib6 = globals8.debuglib) != null) {
                                        debugLib6.onReturn();
                                    }
                                    return varargsOf3;
                                }
                                if (i66 == 1) {
                                    LuaValue luaValue7 = LuaValue.NONE;
                                    if (upValueArr != null) {
                                        int length8 = upValueArr.length;
                                        while (true) {
                                            length8--;
                                            if (length8 >= 0) {
                                                UpValue upValue8 = upValueArr[length8];
                                                if (upValue8 != null) {
                                                    upValue8.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals9 = this.globals;
                                    if (globals9 != null && (debugLib7 = globals9.debuglib) != null) {
                                        debugLib7.onReturn();
                                    }
                                    return luaValue7;
                                }
                                if (i66 != 2) {
                                    Varargs varargsOf4 = LuaValue.varargsOf(luaValueArr, i14, i66 - 1);
                                    if (upValueArr != null) {
                                        int length9 = upValueArr.length;
                                        while (true) {
                                            length9--;
                                            if (length9 >= 0) {
                                                UpValue upValue9 = upValueArr[length9];
                                                if (upValue9 != null) {
                                                    upValue9.close();
                                                }
                                            }
                                        }
                                    }
                                    Globals globals10 = this.globals;
                                    if (globals10 != null && (debugLib9 = globals10.debuglib) != null) {
                                        debugLib9.onReturn();
                                    }
                                    return varargsOf4;
                                }
                                LuaValue luaValue8 = luaValueArr[i14];
                                if (upValueArr != null) {
                                    int length10 = upValueArr.length;
                                    while (true) {
                                        length10--;
                                        if (length10 >= 0) {
                                            UpValue upValue10 = upValueArr[length10];
                                            if (upValue10 != null) {
                                                upValue10.close();
                                            }
                                        }
                                    }
                                }
                                Globals globals11 = this.globals;
                                if (globals11 != null && (debugLib8 = globals11.debuglib) != null) {
                                    debugLib8.onReturn();
                                }
                                return luaValue8;
                            case 32:
                                iArr = iArr2;
                                LuaValue luaValue9 = luaValueArr[i14 + 1];
                                LuaValue luaValue10 = luaValueArr[i14 + 2];
                                LuaValue add = luaValue10.add(luaValueArr[i14]);
                                if (!luaValue10.gt_b(0)) {
                                    break;
                                } else {
                                    if (add.lteq_b(luaValue9)) {
                                        luaValueArr[i14] = add;
                                        luaValueArr[i14 + 3] = add;
                                        i11 += (i13 >>> 14) - Lua.MAXARG_sBx;
                                    }
                                    i10 = 1;
                                }
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 33:
                                iArr = iArr2;
                                LuaNumber checknumber = luaValueArr[i14].checknumber("'for' initial value must be a number");
                                int i67 = i14 + 1;
                                LuaNumber checknumber2 = luaValueArr[i67].checknumber("'for' limit must be a number");
                                int i68 = i14 + 2;
                                LuaValue checknumber3 = luaValueArr[i68].checknumber("'for' step must be a number");
                                luaValueArr[i14] = checknumber.sub(checknumber3);
                                luaValueArr[i67] = checknumber2;
                                luaValueArr[i68] = checknumber3;
                                i11 += (i13 >>> 14) - Lua.MAXARG_sBx;
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 34:
                                iArr = iArr2;
                                Varargs invoke3 = luaValueArr[i14].invoke(LuaValue.varargsOf(luaValueArr[i14 + 1], luaValueArr[i14 + 2]));
                                int i69 = (i13 >> 14) & 511;
                                while (true) {
                                    int i70 = i69 - 1;
                                    if (i70 >= 0) {
                                        luaValueArr[i14 + 3 + i70] = invoke3.arg(i69);
                                        i69 = i70;
                                    } else {
                                        varargs3 = LuaValue.NONE;
                                        i10 = 1;
                                        i11 += i10;
                                        varargs2 = varargs;
                                        iArr2 = iArr;
                                    }
                                }
                            case 35:
                                iArr = iArr2;
                                int i71 = i14 + 1;
                                if (!luaValueArr[i71].isnil()) {
                                    luaValueArr[i14] = luaValueArr[i71];
                                    i11 += (i13 >>> 14) - Lua.MAXARG_sBx;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 36:
                                int i72 = (i13 >> 14) & 511;
                                if (i72 == 0) {
                                    i11++;
                                    i72 = iArr2[i11];
                                }
                                int i73 = (i72 - 1) * 50;
                                LuaValue luaValue11 = luaValueArr[i14];
                                int i74 = i13 >>> 23;
                                if (i74 == 0) {
                                    int i75 = (i12 - i14) - 1;
                                    int narg = i75 - varargs3.narg();
                                    int i76 = 1;
                                    while (i76 <= narg) {
                                        luaValue11.set(i73 + i76, luaValueArr[i14 + i76]);
                                        i76++;
                                        iArr2 = iArr2;
                                    }
                                    iArr = iArr2;
                                    while (i76 <= i75) {
                                        luaValue11.set(i73 + i76, varargs3.arg(i76 - narg));
                                        i76++;
                                    }
                                } else {
                                    iArr = iArr2;
                                    luaValue11.presize(i73 + i74);
                                    for (int i77 = 1; i77 <= i74; i77++) {
                                        luaValue11.set(i73 + i77, luaValueArr[i14 + i77]);
                                    }
                                }
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 37:
                                Prototype prototype2 = this.f102760p.f102765p[i13 >>> 14];
                                LuaClosure luaClosure = new LuaClosure(prototype2, this.globals);
                                Upvaldesc[] upvaldescArr2 = prototype2.upvalues;
                                int length11 = upvaldescArr2.length;
                                int i78 = 0;
                                while (i78 < length11) {
                                    Upvaldesc upvaldesc = upvaldescArr2[i78];
                                    if (upvaldesc.instack) {
                                        luaClosure.upValues[i78] = findupval(luaValueArr, upvaldesc.idx, upValueArr);
                                        upvaldescArr = upvaldescArr2;
                                    } else {
                                        upvaldescArr = upvaldescArr2;
                                        luaClosure.upValues[i78] = this.upValues[upvaldesc.idx];
                                    }
                                    i78++;
                                    upvaldescArr2 = upvaldescArr;
                                }
                                luaValueArr[i14] = luaClosure;
                                iArr = iArr2;
                                i10 = 1;
                                i11 += i10;
                                varargs2 = varargs;
                                iArr2 = iArr;
                            case 38:
                                int i79 = i13 >>> 23;
                                if (i79 == 0) {
                                    i12 = i14 + varargs.narg();
                                    varargs3 = varargs2;
                                    iArr = iArr2;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                } else {
                                    for (int i80 = 1; i80 < i79; i80++) {
                                        luaValueArr[(i14 + i80) - 1] = varargs2.arg(i80);
                                    }
                                    iArr = iArr2;
                                    i10 = 1;
                                    i11 += i10;
                                    varargs2 = varargs;
                                    iArr2 = iArr;
                                }
                            case 39:
                                throw new IllegalArgumentException("Uexecutable opcode: OP_EXTRAARG");
                        }
                    } catch (LuaError e10) {
                        if (e10.traceback != null) {
                            throw e10;
                        }
                        processErrorHooks(e10, this.f102760p, i11);
                        throw e10;
                    }
                } catch (Exception e11) {
                    LuaError luaError = new LuaError(e11);
                    processErrorHooks(luaError, this.f102760p, i11);
                    throw luaError;
                }
            } finally {
                if (upValueArr != null) {
                    while (true) {
                    }
                }
            }
        }
    }

    public LuaValue getUpvalue(int i10) {
        return this.upValues[i10].getValue();
    }

    @Override
    public LuaValue getmetatable() {
        return LuaFunction.s_metatable;
    }

    @Override
    public final Varargs invoke(Varargs varargs) {
        return onInvoke(varargs).eval();
    }

    @Override
    public boolean isclosure() {
        return true;
    }

    @Override
    public String name() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(this.f102760p.shortsource());
        stringBuffer.append(s.f32937c);
        stringBuffer.append(this.f102760p.linedefined);
        stringBuffer.append(">");
        return stringBuffer.toString();
    }

    @Override
    public final Varargs onInvoke(Varargs varargs) {
        Prototype prototype;
        int i10;
        LuaValue[] luaValueArr = new LuaValue[this.f102760p.maxstacksize];
        int i11 = 0;
        while (true) {
            prototype = this.f102760p;
            i10 = prototype.numparams;
            if (i11 >= i10) {
                break;
            }
            int i12 = i11 + 1;
            luaValueArr[i11] = varargs.arg(i12);
            i11 = i12;
        }
        return execute(luaValueArr, prototype.is_vararg != 0 ? varargs.subargs(i10 + 1) : LuaValue.NONE);
    }

    @Override
    public LuaClosure optclosure(LuaClosure luaClosure) {
        return this;
    }

    public void setUpvalue(int i10, LuaValue luaValue) {
        this.upValues[i10].setValue(luaValue);
    }

    @Override
    public String tojstring() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("function: ");
        stringBuffer.append(this.f102760p.toString());
        return stringBuffer.toString();
    }

    @Override
    public final LuaValue call(LuaValue luaValue) {
        int i10;
        int i11 = this.f102760p.maxstacksize;
        LuaValue[] luaValueArr = new LuaValue[i11];
        System.arraycopy(LuaValue.NILS, 0, luaValueArr, 0, i11);
        int i12 = 1;
        while (true) {
            i10 = this.f102760p.numparams;
            if (i12 >= i10) {
                break;
            }
            luaValueArr[i12] = LuaValue.NIL;
            i12++;
        }
        if (i10 != 0) {
            luaValueArr[0] = luaValue;
            luaValue = LuaValue.NONE;
        }
        return execute(luaValueArr, luaValue).arg1();
    }

    @Override
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Prototype prototype;
        int i10;
        Varargs varargsOf;
        Varargs varargs;
        LuaValue[] luaValueArr = new LuaValue[this.f102760p.maxstacksize];
        int i11 = 2;
        while (true) {
            prototype = this.f102760p;
            i10 = prototype.numparams;
            if (i11 >= i10) {
                break;
            }
            luaValueArr[i11] = LuaValue.NIL;
            i11++;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                luaValueArr[0] = luaValue;
                varargs = execute(luaValueArr, luaValue2);
                return varargs.arg1();
            }
            luaValueArr[0] = luaValue;
            luaValueArr[1] = luaValue2;
        } else if (prototype.is_vararg != 0) {
            varargsOf = LuaValue.varargsOf(luaValue, luaValue2);
            varargs = execute(luaValueArr, varargsOf);
            return varargs.arg1();
        }
        varargsOf = LuaValue.NONE;
        varargs = execute(luaValueArr, varargsOf);
        return varargs.arg1();
    }

    @Override
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        Prototype prototype;
        int i10;
        Varargs varargsOf;
        Varargs varargs;
        LuaValue[] luaValueArr = new LuaValue[this.f102760p.maxstacksize];
        int i11 = 3;
        while (true) {
            prototype = this.f102760p;
            i10 = prototype.numparams;
            if (i11 >= i10) {
                break;
            }
            luaValueArr[i11] = LuaValue.NIL;
            i11++;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                luaValueArr[0] = luaValue;
                if (prototype.is_vararg != 0) {
                    varargsOf = LuaValue.varargsOf(luaValue2, luaValue3);
                    varargs = execute(luaValueArr, varargsOf);
                }
            } else if (i10 != 2) {
                luaValueArr[0] = luaValue;
                luaValueArr[1] = luaValue2;
                luaValueArr[2] = luaValue3;
            } else {
                luaValueArr[0] = luaValue;
                luaValueArr[1] = luaValue2;
                varargs = execute(luaValueArr, luaValue3);
            }
            varargsOf = LuaValue.NONE;
            varargs = execute(luaValueArr, varargsOf);
        } else {
            if (prototype.is_vararg != 0) {
                varargsOf = LuaValue.varargsOf(luaValue, luaValue2, luaValue3);
                varargs = execute(luaValueArr, varargsOf);
            }
            varargsOf = LuaValue.NONE;
            varargs = execute(luaValueArr, varargsOf);
        }
        return varargs.arg1();
    }
}
